<?php

class Register extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('user_model');
    }

    public function index() {
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->helper('header_helper');

        //TODO If already logged in, redirect to home page.

        $data = getDefaultData();
        $data['title'] = 'BYOBracket - Signup';
        $data['css']['register'] = 'register.css';
        $data['js']['register'] = 'register.js';
        $data['registerFail'] = FALSE;

        $this->load->view('templates/head', $data);

        $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[4]|max_length[25]|is_unique[users.username]');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[5]');
        $this->form_validation->set_error_delimiters("<div class='error'>", "</div>");

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('RegisterView');
        } else {
            $this->user_model->addUser();
            $this->load->view('RegisterSuccessView');
        }
    }

    public function username($username) {
        $output = array("success" => $this->user_model->checkUsername($username));
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function email($email) {
        $output = array("success" => $this->user_model->checkEmail(urldecode($email)));
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function validate($code="") {
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->helper('header_helper');

        //TODO If already logged in, redirect to home page.

        $data = getDefaultData();
        $data['title'] = 'BYOBracket - Validate Account';
        $data['css']['register'] = 'validate.css';
        $data['js']['register'] = 'validate.js';

        $this->load->view('templates/head', $data);

        $this->form_validation->set_rules('code', 'Validation Code', 'trim|required');

        if ($this->form_validation->run() === FALSE) {
            if ($code != "") {
                if ($this->user_model->validate($code)) {
                    $data['url'] = "/";
                    $this->load->view('RedirectView', $data);
                }
            }
            //Check to see if we have a code deeplink to process otherwise load validation form
            $this->load->view('ValidationView');
        } else {
            if ($this->user_model->validate($this->input->post('code'))) {
                $data['url'] = "/";
                $this->load->view('RedirectView', $data);
            } else {
                $this->load->view('ValidationView');
            }

        }
    }
}
