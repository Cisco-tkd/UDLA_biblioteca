<?php
$user_id = NULL;
if (isset($user) && is_object($user)) {
	$user_id = set_value('user_id', $user->user_id);
}

echo form_open_multipart('users/save', array('class' => 'cssform', 'id' => 'users_add'), array('user_id' => $user_id) );

?>

<fieldset>

	<legend accesskey="U" tabindex="<?php echo tab_index() ?>">Detalles de Usuario</legend>

	<p>
		<label for="username" class="required">Nombre de Usuario</label>
		<?php
		$field = 'username';
		$value = set_value($field, isset($user) ? $user->username : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'maxlength' => '100',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="authlevel" class="required">Tipo</label>
		<?php
		$field = 'authlevel';
		$value = set_value($field, isset($user) ? $user->authlevel : '2', FALSE);
		$options = array('1' => 'Administrator', '2' => 'Alumno', );
		echo form_dropdown(
			$field,
			$options,
			$value,
			' id="authlevel" tabindex="'.tab_index().'"'
		);
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="enabled">Habilitado</label>
		<?php
		$field = 'enabled';
		$value = isset($user) ? $user->enabled : '1';
		$checked = set_checkbox($field, '1', $value == '1');
		echo form_hidden($field, '0');
		echo form_checkbox(array(
			'name' => $field,
			'id' => $field,
			'value' => '1',
			'tabindex' => tab_index(),
			'checked' => $checked,
		));
		?>
	</p>

	<p>
		<label for="email">Correo</label>
		<?php
		$field = 'email';
		$value = set_value($field, isset($user) ? $user->email : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '35',
			'maxlength' => '255',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

</fieldset>


<fieldset>

	<legend accesskey="P" tabindex="<?php echo tab_index() ?>">Password</legend>

	<?php if (isset($user)): ?>
	<div>Cambie la contraseña del usuario ingresándola dos veces en estos cuadros.</div>
	<?php endif; ?>

	<p>
		<label for="password1" class="required">Password</label>
		<?php
		$field = 'password1';
		echo form_password(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'tabindex' => tab_index(),
			'value' => '',
		));
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="password2" class="required">Password (again)</label>
		<?php
		$field = 'password2';
		echo form_password(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'tabindex' => tab_index(),
			'value' => '',
		));
		?>
	</p>
	<?php echo form_error($field); ?>

</fieldset>


<fieldset>

	<legend accesskey="P" tabindex="<?php echo tab_index() ?>">Detalles Personales</legend>
	
	<p>
		<label for="firstname">Rut</label>
		<?php
		$field = 'firstname';
		$value = set_value($field, isset($user) ? $user->firstname : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'maxlength' => '20',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="lastname">Nombre</label>
		<?php
		$field = 'lastname';
		$value = set_value($field, isset($user) ? $user->lastname : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'maxlength' => '20',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="displayname">Nombre Visible</label>
		<?php
		$field = 'displayname';
		$value = set_value($field, isset($user) ? $user->displayname : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '20',
			'maxlength' => '20',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="department">Carrera</label>
		<?php
		$options = array('' => '(None)');
		if ($departments) {
			foreach ($departments as $department) {
				$options[$department->department_id] = html_escape($department->name);
			}
		}
		$value = set_value($field, isset($user) ? $user->department_id : '', FALSE);
		echo form_dropdown(
			'department_id',
			$options,
			$value,
			'tabindex="'.tab_index().'"');
		?>
	</p>
	<?php echo form_error($field); ?>

	<p>
		<label for="ext">Telefono</label>
		<?php
		$field = 'ext';
		$value = set_value($field, isset($user) ? $user->ext : '', FALSE);
		echo form_input(array(
			'name' => $field,
			'id' => $field,
			'size' => '10',
			'maxlength' => '10',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error($field); ?>

</fieldset>


<?php

$this->load->view('partials/submit', array(
	'submit' => array('Save', tab_index()),
	'cancel' => array('Cancel', tab_index(), 'users'),
));

echo form_close();
