<?php
$messages = $this->session->flashdata('saved');
echo "<div class='messages'>{$messages}</div>";


echo iconbar([
	['sessions/add', 'Agregar sesión', 'add.png'],
]);


$sort_cols = ["Name", "Start date", "End date", "Current?", "Selectable?"];

echo "<h3>Sesiones actuales y futuras</h3>";
$this->load->view('sessions/table', ['items' => $active, 'id' => 'sessions_active', 'sort_cols' => $sort_cols]);

if ( ! empty($past)) {
	echo "<br><br><h3>Past sessions</h3>";
	$this->load->view('sessions/table', ['items' => $past, 'id' => 'sessions_past', 'sort_cols' => $sort_cols]);
}
