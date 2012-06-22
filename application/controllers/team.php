<?php

class Team extends CI_Controller {

    /**
     *
     *  Team selecting controller, returns a div that contains the team name, icon, and mascot
     *
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('team_model');
    }

    public function index() {
        show_404();
    }

    public function select($team, $index, $update=TRUE) {
        $this->load->helper('url');

        //Update the bracket in the session data
        $bracket = "";
        if (!$this->session->userdata('bracket')) {
            for ($i=0; $i<68; $i++) {
                $bracket .= "0";
                if ($i < 67) $bracket .= ",";
            }
            $bracketArray = explode(",", $bracket);
        } else {
            $bracketArray = explode(",", $this->session->userdata('bracket'));
        }

        $bracketArray[$index] = $team;
        $bracket = join(",", $bracketArray);

        $this->session->set_userdata('bracket', $bracket);

        //Check to see if the user is logged in, if yes, update the user's bracket in the database
        if ($this->session->userdata('loggedIn') === TRUE && $this->session->userdata('viewmode') === 'edit') {
            $this->user_model->updateBracket();
        }

        //Return json bracket object
        $output = array("bracket" => $bracket);
        $this->output->set_content_type('application/json')->set_output(json_encode($output));

        /*$seeds = "1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,12,12,12,12,13,13,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,16,16";
        $seedsArray = explode(",", $seeds);
        $seed = $seedsArray[$index];

        //Return the relevant team data to jQuery
        $data['team'] = $this->team_model->getTeam($team);
        $data['seed'] = $seed;
        $this->load->view('TeamSelectView', $data);*/
    }

    public function get() {

        $bracket = "";
        if ($this->session->userdata('bracket')) {
            $bracket = $this->session->userdata('bracket');
        }

        if ($this->session->userdata('loggedIn') === TRUE) {
            $bracket = $this->user_model->getBracket();
            $this->session->set_userdata('bracket', $bracket);
        }

        $output = array("bracket" => $bracket);
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function autoFill() {
        //Get Default Bracket
        $bracket = $this->team_model->getSuggestedBracket();

        //Set session bracket
        $this->session->set_userdata('bracket', $bracket);

        //If logged in and editing user bracket, update database
        if ($this->session->userdata('loggedIn') === TRUE && $this->session->userdata('viewmode') === 'edit') {
            $this->user_model->updateBracket();
        }

        $output = array(
            "success" => TRUE,
            "bracket" => explode(",", $bracket)
        );
        $this->output->set_content_type('application/json')->set_output(json_encode($output));

    }


    public function reset() {
        //Generate Empty Bracket
        $bracket = "";
        for ($i=0; $i<68; $i++) {
            $bracket .= "0";
            if ($i < 67) $bracket .= ",";
        }

        //Set session bracket
        $this->session->set_userdata('bracket', $bracket);

        //If logged in and editing user bracket, update database
        if ($this->session->userdata('loggedIn') === TRUE && $this->session->userdata('viewmode') === 'edit') {
            $this->user_model->updateBracket();
        }

        $output = array("success" => TRUE);
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function drag($originID, $targetID) {
        $bracket = "";
        //Get session bracket
        if ($this->session->userdata('bracket')) {
            $bracket = $this->session->userdata('bracket', $bracket);
        }

        //Swap the two teams in the array
        $bracketArray = explode(",", $bracket);
        $originTeam = $bracketArray[$originID];
        $targetTeam = $bracketArray[$targetID];
        $bracketArray[$originID] = $targetTeam;
        $bracketArray[$targetID] = $originTeam;
        $bracket = join(",", $bracketArray);

        //Set the session bracket
        $this->session->set_userdata('bracket', $bracket);

        //If logged in and editing user bracket, update database
        if ($this->session->userdata('loggedIn') === TRUE && $this->session->userdata('viewmode') === 'edit') {
            $this->user_model->updateBracket();
        }

        //Return json bracket object
        $output = array("bracket" => $bracket);
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function remove($index) {
        //Generate Empty Bracket
        $bracket = "";
        for ($i=0; $i<68; $i++) {
            $bracket .= "0";
            if ($i < 67) $bracket .= ",";
        }

        //Get session bracket
        if ($this->session->userdata('bracket')) {
            $bracket = $this->session->userdata('bracket', $bracket);
        }

        //Form voltron, update bracket array
        $bracketArray = explode(",", $bracket);
        $bracketArray[$index] = 0;
        $bracket = join(",", $bracketArray);

        //Update sessin data
        $this->session->set_userdata('bracket', $bracket);

        //If logged in and editing user bracket, update database
        if ($this->session->userdata('loggedIn') === TRUE && $this->session->userdata('viewmode') === 'edit') {
            $this->user_model->updateBracket();
        }

        $output = array("bracket" => $bracket);
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

}
