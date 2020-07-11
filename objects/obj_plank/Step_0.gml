/// @description Insert description here
// You can write your code in this editor
keyAttack = mouse_check_button(mb_right);

switch (state)
{
	case SWINGSTATE.FREE:
		plankState_Free();
		break;
	case SWINGSTATE.ATTACK:
		plankState_Attack();
		break;
}