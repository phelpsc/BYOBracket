<?php

class Logout extends CI_Controller {

    /**
     *
     *  Team selecting controller, returns a div that contains the team name, icon, and mascot
     *
     */
    public function __construct() {
        parent::__construct();
    }

    public function index() {

        //Kill Session
        $this->session->sess_destroy();

        //Redirect To Home Page
        $this->load->helper('url');
        $data['url'] = "/";
        $this->load->view('RedirectView', $data);
    }

}