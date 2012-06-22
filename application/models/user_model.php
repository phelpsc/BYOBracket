<?php

class User_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function addUser() {
        $this->load->helper('url');
        $this->load->helper('bracket_helper');

        $salt = "Y%vf#w2##n7No6t9r?@;ix5Hh-zC8e)GWA[-d+&KL2br[u#RNp3ohv)ec,|t";
        $password = sha1($this->input->post('password') . $salt);
        $code = generateRandomString(24);
        $this->load->library('email');
        $this->email->from('support@byobracket.com', 'BYOBracket Registrar');
        $this->email->to($this->input->post('email'));
        $this->email->subject('Welcome to BYOBracket. Account validation code inside.');

        $message = "<p>Welcome to BYOBracket. Please click on the following link to activate your account:</p>";
        $message .= "<div style='border:1px solid #000;width:200px;height:24px;font-size:16px;margin:20px auto;line-height:24px;background-color:#666;color:#dedede;text-align:center'><a style='text-decoration:none; color:#dedede;' href='" . base_url() . "validate/" . $code . "'><b>CLICK TO ACTIVATE</b></a></p></div>";
        $message .= "<p>If you are having trouble with the link, just try logging in and copying and pasting the following code into the validation form (<a href='byobracket.com/validate'>byobracket.com/validate</a>): <b>" . $code . "</b></p>";
        $message .= "<p>Thank you and have fun making your brackets!</p>";
        $message .= "<p>-BYOBracket</p>";

        $this->email->message($message);
        if($this->email->send())
        {
            //
        }
        else
        {
            show_error($this->email->print_debugger());
            log_message("error", $this->email->printdebugger());
        }
        $data = array (
            'username' => $this->input->post('username'),
            'email' => $this->input->post('email'),
            'bracket' => $this->session->userdata('bracket'),
            'password' => $password,
            'validation_code' => $code
        );

        return $this->db->insert('users', $data);
    }

    public function login() {
        $salt = "Y%vf#w2##n7No6t9r?@;ix5Hh-zC8e)GWA[-d+&KL2br[u#RNp3ohv)ec,|t";
        $password = sha1($this->input->post('password') . $salt);

        $query = $this->db->get_where('users', array('username' => $this->input->post('username')));

        if ($query->num_rows() > 0) {
            if ($query->row()->validated == 1) {
                if ($password === $query->row()->password) {
                    return "login";
                }
            } else {
                return "validate";
            }
        }
        return "fail";
    }

    public function validate($code) {
        //Check for code in database, if exists validate user account, delete code, return true
        if (!$code) return FALSE;
        $query = $this->db->get_where('users', array('validation_code' => $code));
        if ($query->num_rows() > 0) {
            //SESSION
            $sessionData = array(
                'username' => $query->row()->username,
                'loggedIn' => TRUE
            );
            $this->session->set_userdata($sessionData);
            //DATABASE
            $updateData = array(
                'validation_code' => '',
                'validated' => 1
            );
            $this->db->where('username',$query->row()->username);
            $this->db->update('users', $updateData);
            return TRUE;
        }
        return FALSE;
    }

    public function updateBracket() {
        $data = array('bracket' => $this->session->userdata('bracket'));
        $where = "username ='" . $this->session->userdata('username') . "'";
        $query = $this->db->update_string('users', $data, $where);
        $this->db->query($query);
    }

    public function getBracket() {
        $query = $this->db->query("SELECT bracket FROM users WHERE username='" . $this->session->userdata('username') . "'");
        if ($query->num_rows() > 0) {
            return $query->row()->bracket;
        }
        return "";
    }

    public function checkUsername($username) {
        $query = $this->db->get_where('users', array('username' => $username));
        if ($query->num_rows() > 0) {
            return FALSE;
        }
        return TRUE;
    }

    public function checkEmail($email) {
        $query = $this->db->get_where('users', array('email' => $email));
        if ($query->num_rows() > 0) {
            return FALSE;
        }
        return TRUE;
    }


}