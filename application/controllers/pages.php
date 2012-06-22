<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Kit
 * Date: 1/28/12
 * Time: 11:21 AM
 * To change this template use File | Settings | File Templates.
 */
class Pages extends CI_Controller {

    public function view($page = 'home')
    {
        if( !file_exists('application/views/pages/'.$page.'.php') ) {
            //Show 404
            show_404();
        }

        $data['title'] = ucfirst($page);
        $this->load->view('templates/header', $data);
        $this->load->view('pages/'.$page, $data);
        $this->load->view('templates/footer', $data);
    }
}
