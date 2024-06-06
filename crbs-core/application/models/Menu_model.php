<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends CI_Model
{


	/**
	 * For header/footer in page.
	 *
	 */
	public function global()
	{
		$is_admin = $this->userauth->is_level(ADMINISTRATOR);

		$items = [];

		if ( ! $this->userauth->logged_in()) {
			return $items;
		}

		$items[] = [
			'label' => 'Reservas',
			'url' => site_url('bookings'),
			'icon' => 'school_manage_bookings.png',
		];

		if ($is_admin) {
			$items[] = [
				'label' => 'Configurar',
				'url' => site_url('setup'),
				'icon' => 'school_manage_settings.png',
			];
		}

		$items[] = [
			'label' => 'Cuenta',
			'url' => site_url('profile/edit'),
			'icon' => ($is_admin) ? 'user_administrator.png' : 'user_teacher.png',
		];

		$items[] = [
			'label' => 'Cerrar sesión',
			'url' => site_url('logout'),
			'icon' => 'logout.png',
		];

		return $items;
	}


	public function setup_school()
	{
		$items = [];

		if ( ! $this->userauth->is_level(ADMINISTRATOR)) {
			return $items;
		}

		$items[] = [
			'label' => 'Detalles',
			'icon' => 'school_manage_details.png',
			'url' => site_url('school'),
		];

		// $items[] = [
		// 	'label' => 'Periods',
		// 	'icon' => 'school_manage_times.png',
		// 	'url' => site_url('periods'),
		// ];

		$items[] = [
			'label' => 'Horarios',
			'icon' => 'school_manage_times.png',
			'url' => site_url('schedules'),
		];

		$items[] = [
			'label' => 'Horario Semanales',
			'icon' => 'school_manage_weeks.png',
			'url' => site_url('weeks'),
		];

		$items[] = [
			'label' => 'Sesiones',
			'icon' => 'calendar_view_month.png',
			'url' => site_url('sessions'),
		];

		$items[] = [
			'label' => 'Salas',
			'icon' => 'school_manage_rooms.png',
			'url' => site_url('rooms'),
		];

		$items[] = [
			'label' => 'Carreras',
			'icon' => 'school_manage_departments.png',
			'url' => site_url('departments'),
		];

		return $items;
	}


	public function setup_manage()
	{
		$items = [];

		if ( ! $this->userauth->is_level(ADMINISTRATOR)) {
			return $items;
		}

		$items[] = [
			'label' => 'Usuarios',
			'icon' => 'school_manage_users.png',
			'url' => site_url('users'),
		];

		$items[] = [
			'label' => 'Ajustes',
			'icon' => 'school_manage_settings.png',
			'url' => site_url('settings/general'),
		];

		$items[] = [
			'label' => 'Authentication',
			'icon' => 'lock.png',
			'url' => site_url('settings/authentication/ldap'),
		];

		return $items;
	}

}
