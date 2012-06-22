<?php

class Share extends CI_Controller {

    /**
     *
     *  Team selecting controller, returns a div that contains the team name, icon, and mascot
     *
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('bracket_model');
    }

    public function index() {
        //Take the bracket stored in the session and return a quick-link from the model.
        $this->load->helper('bracket_helper');
        $this->load->helper('url');
        $bracket = getSessionBracket($this->session->userdata('bracket'));
        $link = array(
            'link' => site_url($this->bracket_model->share($bracket))
        );
        $this->output->set_content_type('application/json')->set_output(json_encode($link));
    }

    public function retrieve($link) {
        //Set and return the bracket into session data from the matching quick-link in the database.
        $bracket = $this->bracket_model->retrieve($link);
        $this->output->set_content_type('application/json')->set_output(json_encode($bracket));
    }

}
