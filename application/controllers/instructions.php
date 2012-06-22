<?php

class Instructions extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {

        $this->load->helper('url');
        $this->load->library('form_validation');
        $this->load->helper('header_helper');
        $data = getDefaultData();
        $data['css']['instructions'] = 'instructions.css';
        $data['js']['instructions'] = 'instructions.js';

        if (!$this->session->userdata('loggedIn')) {
            $this->session->set_userdata('loggedIn', FALSE);
            $data['loggedIn'] = FALSE;
        } else {
            if ($this->session->userdata("loggedIn") === TRUE) {
                $data['loggedIn'] = TRUE;
            } else {
                $data['loggedIn'] = FALSE;
            }
        }

        $data['session'] = $this->session->userdata;
        $data['includeDialogs'] = FALSE;

        $this->load->view('templates/head', $data);
        $this->load->view('HeaderView', $data);
        $this->load->view('InstructionsView', $data);
        $this->load->view('FooterView', $data);
    }
}
