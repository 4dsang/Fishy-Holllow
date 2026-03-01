x_velocidad = 0;
y_velocidad += 0.5;

	

if(y > room_height or y < 0){
	room_restart()
}
if keyboard_check(vk_right){
	x_velocidad = +2
	sprite_index = JugadorLado
	image_xscale = 1;
	
}
else if keyboard_check(vk_left){
	x_velocidad = -2
	sprite_index= JugadorLado
	image_xscale = -1;
}
else { sprite_index = Jugador
}


if place_meeting(x, y+1, Solido)
{
        y_velocidad = 0
        if keyboard_check(vk_up)
        {
                y_velocidad = -5   
				sprite_index= Salto
				audio_play_sound(jump3, 1, false)
        }
}
move_and_collide(x_velocidad, y_velocidad, Solido)


if (place_meeting(x, y, oPuerta))
{
    room_goto_next();
}

if (place_meeting(x, y, oArana))
{
    Lives = Lives-1
}
if (place_meeting(x, y, oAlgas))
{
     Lives = Lives-1
}


 room_set_camera(Cuarta,1,1)
 if (place_meeting(x, y, oBalas))
{
     Lives = Lives-1
}
	if Lives == 0 {
		room_restart()}
		
	