db DEX_PICHU ; need to declare pokedex id
db 20 ; base hp
db 45 ; base attack
db 25 ; base defense
db 85 ; base speed
db 50 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 150 ; catch rate
db 50 ; base exp yield
INCBIN "pic/bmon/pichu.pic",0,1 ; 55, dimensions. this is where the sprite stuff would go. I need to create the sprite
dw PichuPicFront
dw PichuPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db TAIL_WHIP
db 0
db 0
db 2; growth rate
; learnset
    tmlearn 1,5,6,8
    tmlearn 9,10,16
    tmlearn 17,19,20,24
    tmlearn 25,31,32
    tmlearn 33,34,39,40
    tmlearn 44,45
    tmlearn 50,55
db 0;
