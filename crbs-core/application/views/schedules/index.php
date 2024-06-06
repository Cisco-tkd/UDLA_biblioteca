<?php


echo $this->session->flashdata('saved');

echo iconbar([
	['schedules/add', 'Ingresar Horario', 'add.png'],
]);

//

$this->table->set_template([
	'table_open' => '<table
		class="border-table"
		style="line-height:1.3;margin-top:16px;margin-bottom:16px"
		width="100%"
		cellspacing="2"
		border="0"
	>',
	'heading_row_start' => '<tr class="heading">',
]);

$this->table->set_heading([
	['data' => 'Nombre', 'width' => '25%'],
	// ['data' => 'Type', 'width' => '10%'],
	['data' => 'Descripción', 'width' => '45%'],
	['data' => 'Acción', 'width' => '10%'],
]);

foreach ($schedules as $idx => $schedule) {

	$name = html_escape($schedule->name);
	$name_html = anchor('schedules/edit/' . $schedule->schedule_id, $name);

	$description_html = (empty($schedule->description))
		? ''
		: word_limiter(html_escape($schedule->description), 8)
		;

	$actions = [
		'edit' => 'schedules/edit/' . $schedule->schedule_id,
		'delete' => 'schedules/delete/' . $schedule->schedule_id,
	];
	$actions_html = $this->load->view('partials/editdelete', $actions, TRUE);

	$this->table->add_row([
		$name_html,
		$description_html,
		$actions_html,
	]);
}

if (empty($schedules)) {

	echo msgbox('info', 'No schedules created yet.');

} else {

	echo $this->table->generate();

}
