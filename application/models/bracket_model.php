<?php

class Bracket_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function share($bracket) {

        //Check database for existing identical bracket
        $query = $this->db->get_where('brackets', array('bracket' => $bracket));
        if ($query->num_rows() > 0) {
            return $query->row()->link;
        }

        //Generate random string
        $this->load->helper('bracket_helper');
        $link = generateRandomString(6);

        $data = array(
            'link' => $link,
            'bracket' => $bracket
        );

        //Store record linking string to bracket
        $this->db->insert('brackets', $data);

        //Return string
        return $link;
    }

    public function retrieve($link) {
        $query = $this->db->get_where('brackets', array('link' => $link));
        return $query->row()->bracket;
    }

    public function retrieveUserBracket($user) {
        $query = $this->db->get_where('users', array('username' => $user));

        if ($query->num_rows() === 1) {
            return array(
                'bracket' => $query->row()->bracket,
                'date' => $query->row()->last_modified
            );
        } else {
            return false;
        }

    }
}