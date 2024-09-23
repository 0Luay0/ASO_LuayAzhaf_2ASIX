#!/bin/bash

f=date(%H-%M)

if [[ $f -ge 8:00 && $f -le 15:00 ]]; then

	echo "Buenos dias"

		elif[[ $f -gt 15:00 && $f -le 20:00 ]]

			echo "Buenas tardes"
else
	echo "Buenas noches"
fi
