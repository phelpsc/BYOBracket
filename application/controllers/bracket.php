<?php

class Bracket extends CI_Controller {

    public function index() {

        $this->load->helper('url');

        $data['title'] = 'BracketCaster';
        $data['css'] = 'bracket';

        $this->load->view('templates/head', $data);
        $this->load->view('BracketView');

    }
}
