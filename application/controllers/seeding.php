<?php

class Seeding extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('team_model');
        $this->load->model('bracket_model');
    }

    public function index($link="", $user="") {

        if ($link == "instructions" || $link == "team" || $link == "teamlist" || $link == "images" || $link == "tournament" || $link == "seeding") {
            return;
        } else if ($link == "u") {
            //This is a static user bracket page.
        }

        $this->load->helper('url');
        $this->load->library('form_validation');
        $this->load->helper('header_helper');

        //log_message("error", "BaseURL: " . base_url());

        $data = getDefaultData();
        $data['css']['seeding'] = 'seeding.css';
        $data['js']['seeding'] = 'seeding.js';
        $data['js']['twitter'] = 'http://platform.twitter.com/widgets.js';

        if (!$this->session->userdata('loggedIn')) {
            $this->session->set_userdata('loggedIn', FALSE);
        }

        $data['loginFail'] = FALSE;
        $date = "";

        $bracket = "";

        $this->form_validation->set_rules('username', 'Username', 'trim|htmlspecialchars');
        $this->form_validation->set_rules('password', 'Password', 'trim|htmlspecialchars');

        if ($this->form_validation->run() === TRUE) {

            //Login, Needs Validation, Fail
            $login = $this->user_model->login();

            if ($login === "login") {
                $sessionData = array(
                    'username' => $this->input->post('username'),
                    'loggedIn' => TRUE,
                );
                $this->session->set_userdata($sessionData);
                $bracket = $this->user_model->getBracket();
                $this->session->set_userdata('bracket', $bracket);
            } else if ($login === "validate") {
                $data['url'] = "validate";
                $this->load->view('RedirectView', $data);
            } else {
                $data['loginFail'] = TRUE;
            }
        }

        if ($this->session->userdata("loggedIn") === TRUE) {
            $data['loginFail'] = FALSE;
            $data['loggedIn'] = TRUE;
        } else {
            $data['loggedIn'] = FALSE;
            //$this->session->unset_userdata('bracket');
        }

        $data['teamInfo'] = $this->team_model->getAllTeams();

        //If there is a link, grab the bracket associated with the link and set it as the session bracket
        if ($link != "" && $link != "u") {
            $deeplink = $this->bracket_model->retrieve($link);
            $this->session->set_userdata('bracket', $deeplink);

            //If logged in, set "viewing other" mode to true
            if ($this->session->userdata('loggedIn') === TRUE) {
                $this->session->set_userdata('viewmode', 'other');
            } else {
                $this->session->set_userdata('viewmode', 'edit');
            }
        } else if ($link == "u") {
            $result = $this->bracket_model->retrieveUserBracket($user);
            $deeplink = $result['bracket'];
            $date = $result['date'];
            $this->session->set_userdata('bracket', $deeplink);

            //If logged in, set "viewing other" mode to true
            if ($this->session->userdata('loggedIn') === TRUE) {
                $this->session->set_userdata('viewmode', 'other');
            } else {
                $this->session->set_userdata('viewmode', 'edit');
            }
        } else {
            $this->session->set_userdata('viewmode', 'edit');
            if ($this->session->userdata('loggedIn') === TRUE) $this->session->set_userdata('bracket', $this->user_model->getBracket());
        }


        if (!$this->session->userdata('bracket')) {
            if ($bracket === "") {
                for ($i=0; $i<68; $i++) {
                    $bracket .= "0";
                    if ($i < 67) $bracket .= ",";
                }
                $this->session->set_userdata('bracket', $bracket);
            }
        }

        $data['session'] = $this->session->userdata;
        $data['deeplink'] = $link;
        $data['lastModifiedDate'] = $date;
        $data['includeDialogs'] = TRUE;

        $this->load->view('templates/head', $data);
        $this->load->view('HeaderView', $data);
        $this->load->view('SeedingView', $data);
        $this->load->view('FooterView', $data);

    }

    protected function _sortByID($a, $b) {
        return ($a['id'] > $b['id']) ? 1 : -1;
    }
}
