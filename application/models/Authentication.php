<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
 
class Authentication extends CI_Model{ 
    function __construct() {
        $this->load->database();
    }
    function register_user($user){
        $this->db->insert('user', $user);
    }

    function login_user($user){

        //echo'<pre>';print_r($user);die();

        $this->db->select('*');
        $this->db->from('user');
        $this->db->where('email', $user['email']);
        $this->db->where('password', $user['password']);

        $query=$this->db->get();

        //echo'<pre>';print_r($this->db->last_query());die();

        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }
    }
}