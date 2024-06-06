<?php

namespace app\components\bookings\exceptions;


class AvailabilityException extends \RuntimeException
{


	public static function forNoWeek()
	{
		return new static("La fecha seleccionada no está asignada a una semana del horario.");
	}


	public static function forNoPeriods()
	{
		return new static("No hay periodos disponibles para la fecha seleccionada.");
	}


	public static function forHoliday($holiday = NULL)
	{
		if ( ! is_object($holiday)) {
			return new static('La fecha seleccionada es un día festivo.');
		}

		$format = 'La fecha seleccionada es un día festivo: %s: %s - %s';
		$start = $holiday->date_start->format('d/m/Y');
		$end = $holiday->date_end->format('d/m/Y');
		$str = sprintf($format, $holiday->name, $start, $end);
		return new static($str);
	}


}
