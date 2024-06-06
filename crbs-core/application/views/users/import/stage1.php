<?php
echo $this->session->flashdata('saved');
echo isset($notice) ? $notice : '';
echo form_open_multipart(current_url(), array('class' => 'cssform', 'id' => 'user_import'));
echo form_hidden('action', 'import');
?>

<fieldset class="cssform-stacked">

	<legend accesskey="I" tabindex="<?= tab_index() ?>">Importar Usuarios</legend>

	<p class="input-group">
		<label for="userfile" class="required">Archivo CSV</label>
		<?php
		echo form_upload(array(
			'name' => 'userfile',
			'id' => 'userfile',
			'size' => '40',
			'maxlength' => '255',
			'tabindex' => tab_index(),
			'value' => '',
		));
		?>
		<p class="hint">Tamaño maximo de archivo <span><?php echo $max_size_human ?></span>.</p>
	</p>


</fieldset>



<fieldset>

	<legend accesskey="F">Valores predeterminados</legend>

	<div>Ingrese los valores predeterminados que se aplicarán a todos los usuarios si no se especifican en el archivo de importación.</div>

	<p class="input-group">
		<label for="password">Password</label>
		<?php
		echo form_password(array(
			'name' => 'password',
			'id' => 'password',
			'size' => '20',
			'maxlength' => '40',
			'tabindex' => tab_index(),
			'value' => '',
		));
		?>
	</p>

	<p class="input-group">
		<label for="authlevel" class="required">Tipo</label>
		<?php
		$data = array('1' => 'Administrador', '2' => 'Alumno');
		echo form_dropdown(
			'authlevel',
			$data,
			'2',
			' id="authlevel" tabindex="'.tab_index().'"'
		);
		?>
	</p>


	<p class="input-group">
		<label for="enabled">Habilitado</label>
		<?php
		echo form_hidden('enabled', '0');
		echo form_checkbox(array(
			'name' => 'enabled',
			'id' => 'enabled',
			'value' => '1',
			'tabindex' => tab_index(),
			'checked' => true,
		));
		?>
	</p>


</fieldset>

<?php

$this->load->view('partials/submit', array(
	'submit' => array('Crear Cuenta', tab_index()),
	'cancel' => array('Cancelar', tab_index(), 'users'),
));

echo form_close();
