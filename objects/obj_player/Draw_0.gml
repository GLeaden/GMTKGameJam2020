/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_color(c_black);
draw_self();
if (dashing){
	draw_line_width(x, y, x+hMove, y+vMove, 20);
}
