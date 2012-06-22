<?php

class TeamList extends CI_Controller {

    /**
     *
     *  Team selecting controller, returns a div that contains the team name, icon, and mascot
     *
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('team_model');
    }

    public function index() {

        $result = $this->team_model->getAllTeams();
        usort($result, array("TeamList", "_sortNames"));
        $teamlist = json_encode($result);

        $this->output->set_content_type('application/json')->set_output($teamlist);
    }

    protected function _sortNames($a, $b) {
        return strcmp($a['name'], $b['name']);
    }

}