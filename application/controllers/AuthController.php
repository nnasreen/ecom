<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthController extends CI_Controller {
	public function login()
	{
		$this->load->view('admin/login');	
	}
	public function register()
	{
    	$this->load->view('admin/register');
	}
	
	public function postRegistration()
	{
		$this->load->library('form_validation');

		//echo "<pre>";print_r($this->input->post());die();

		$this->form_validation->set_rules('fname', 'Name', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[4]|max_length[15]');
		$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');

		if ($this->form_validation->run() == FALSE) { 
			echo validation_errors(); 
        }else{
			$this->load->model('Authentication');
			$fname=$this->input->post('fname');
			$email=$this->input->post('email');
			$password=$this->input->post('password');

			$user=array(
				'first_name'=>$fname,
				'email'=>$email,
				'password'=>md5($password)
			);
			//print_r($user);
		  

			$this->Authentication->register_user($user);
		}
	
	}

	public function postLogin()
	{
		//echo"login";die();
		$this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == FALSE) { 
			echo validation_errors(); 
        }else{
			$this->load->model('Authentication');
			$email=$this->input->post('email');
			$password=$this->input->post('password');

			$user=array(
				'email'=>$email,
				'password'=>md5($password)
			);
			$res = $this->Authentication->login_user($user);

			echo $res;
		}
	}
}