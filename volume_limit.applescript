set max_volume to (text returned of (display dialog "Quanto vuoi che sia il massimo del volume? (Massimo 16)" with title "Massimo volume" buttons {"Avanti", "Annulla"} default button 1 default answer "") as number)
set plot to 0.4375 # SET VOLUME 1 NOTCH
if max_volume ≤ 16 then
	repeat
		delay 0.2
		try # IS VERY IMPORTANT IN THE REPEAT LOOP
			if ((output volume of (get volume settings) as number > max_volume * 6.25) is true) then # "IS TRUE" ISN'T REQUIRED
				set volume plot * max_volume
			end if
		end try
	end repeat
else
	display dialog "Il volume inserito supera il limite (" & max_volume & "/16)" with title "Errore" buttons {"Chiudi"} default button 1 with icon stop
end if
