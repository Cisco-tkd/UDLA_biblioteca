<?php
echo $this->session->flashdata('saved');
echo form_open_multipart(current_url(), array('id'=>'schooldetails', 'class'=>'cssform'));
?>


<fieldset>

	<legend accesskey="I" tabindex="<?php echo tab_index(); ?>">Información</legend>

	<p>
		<label for="schoolname" class="required">Nombre</label>
		<?php
		$value = set_value('schoolname', element('name', $settings), FALSE);
		echo form_input(array(
			'name' => 'schoolname',
			'id' => 'schoolname',
			'size' => '30',
			'maxlength' => '255',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error('schoolname'); ?>

	<p>
		<label for="website">Website</label>
		<?php
		$value = set_value('website', element('website', $settings), FALSE);
		echo form_input(array(
			'name' => 'website',
			'id' => 'website',
			'size' => '40',
			'maxlength' => '255',
			'tabindex' => tab_index(),
			'value' => $value,
		));
		?>
	</p>
	<?php echo form_error('website'); ?>

</fieldset>



<fieldset>

	<legend accesskey="L" tabindex="<?php echo tab_index() ?>">Logo</legend>

	<div>Utilice esta sección para cargar el logotipo.</div>

	<p>
		<label>Logotipo</label>
		<?php
		$logo = element('logo', $settings);
		$image_url = image_url($logo);
		if ( ! empty($image_url)) {
			echo img($image_url, FALSE, "style='padding:1px; border:1px solid #ccc; max-width: 300px; width: auto; height: auto'");
		} else {
			echo "<span><em>None found</em></span>";
		}
		?>
	</p>

	<p>
		<label for="userfile">Subir archivo</label>
		<?php
		echo form_upload(array(
			'name' => 'userfile',
			'id' => 'userfile',
			'size' => '25',
			'maxlength' => '255',
			'tabindex' => tab_index(),
			'value' => '',
		));
		?>
		<p class="hint">Cargar un nuevo logotipo<span> Sobrescribir</span> el actual.</p>
	</p>

	<?php
	if ($this->session->flashdata('image_error') != '') {
		echo "<p class='hint error'><span>" . $this->session->flashdata('image_error') . "</span></p>";
	}
	?>

	<p>
		<label for="logo_delete">¿Eliminar logotipo?</label>
		<?php
		echo form_checkbox(array(
			'name' => 'logo_delete',
			'id' => 'logo_delete',
			'value' => '1',
			'tabindex' => tab_index(),
			'checked' => FALSE,
		));
		?>
		<p class="hint">Marque esta casilla para <span>eliminar el logo actual</span>. Si estás subiendo un nuevo logotipo, esto se hará automáticamente.</p>
	</p>

</fieldset>


<?php

$this->load->view('partials/submit', array(
	'submit' => array('Guardar', tab_index()),
	'cancel' => array('Cancelar', tab_index(), 'controlpanel'),
));

echo form_close();
