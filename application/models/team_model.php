<?php

class Team_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function getTeam($id = 0) {
        $query = $this->db->get_where('ncaab_teams', array('id' => $id));
        return $query->row_array();
    }

    public function getAllTeams() {
        //$query = $this->db->query("SELECT name FROM ncaab_teams");
        $query = $this->db->get('ncaab_teams');
        return $query->result_array();
    }

    public function getSuggestedBracket() {
        $query = $this->db->get_where('config', array('option' => 'autoFill'));
        return $query->row()->value;
    }
}