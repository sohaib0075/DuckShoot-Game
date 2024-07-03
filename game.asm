  .model small
.stack 100h

.data
;----------------------------------------------------------------------------------


;------------------------------------------------------------------------------------------

;-------------------------------------   duck 1 -----------------------------------------
;------------------------------------------------------------------------------------------
duck_pos_x1 dw,0
duck_pos_y1 dw,0
level1 db "LEVEL 1$"
level2 db "LEVEL 2$"
level3 db "LEVEL 3$"
type_duck_g2 dw,0
count_ducks_g2 dw,0 
up_counter dw,0
count_ducks dw ,0
score dw ,0
 msg db 'DUCK SHOOT$', 0          ; Define your message
     playerName  db 40 dup ('$')  
    prompt db 'Name: $'    ; Prompt for user's name
    newline db 0Dh, 0Ah, '$'          ; Newline characters
    menuPrompt db '1. Play Game$'
    menu1 db  '2. Instructions$ '
    menu2 db  '3. Exit $'
     ; Menu prompt
    instructionMsg db 'Instructions:$'
    m1 db '1. Aim using arrow keys$'
    m2 db'2. Shoot using Spacebar$' ; Instructions message
    welcomeMsg db "Welcome,$", 0       ; Welcome message prefix
    fileName db "scores.txt", 0       ; File name to store scores
    textcolor db 03h
    promptX db 'X-Coordinate: ', '$'
promptY db 'Y-Coordinate: ', '$'
duck_counter dw,0 
   width_counter1 dw,0
   width_counter2 dw,0
   duck_pos_x dw,0
   duck_pos_y dw,0
xcoor dw 0
ycoor dw 0
count db 0 
X dw  20h           ; Define starting X-coordinate
Y dw 10h            ; Define Y-coordinate
PixelCount dw   11  ; Define the number of pixels to draw
color db 03h
sizes dw 16
counter1 db 0 
key_pressed db 0
back db "Back $"
count22 db 0
top_score db 0
page_no db 0
game_cnt dw,0
level_countss DW,0 
type_duck DW,0
dk_random DW,0
sc DB "Score: $"
duck1  DB 00H,00H,00H,00H,00H,00H,00H,00H     ;  0
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  1
        DB 00H ,00H ,00H ,00H,00H,00H ,00H ,00H      ;  2
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  3
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  4
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  5
        DB 00H ,00H ,00H,00H ,00H,00H,00H,00H      ;  6
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  7
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  8
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;  9
        DB 00H ,00H ,00H ,00H,00H,00H,0Fh,00H     ; 10
        DB 00H,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 11
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 12
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 13
        DB 00H ,00H ,00H ,00H ,00H,0Fh,00H,0Fh     ; 14
        DB 0Fh,00H,00H,00H ,00H ,00H ,00H ,00H      ; 15
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 16
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 17
        DB 00H ,00H ,00H ,00H ,0Fh,00H,0Fh,0Fh     ; 18
        DB 0Fh,0Fh,00H,00H,00H ,00H ,00H ,00H      ; 19
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 20
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 21
        DB 00H ,00H ,00H ,00H ,00H ,00H,0Fh,0Fh     ; 22
        DB 0Fh,0Fh,0Fh,0Fh,00H,00H,00H ,00H      ; 23
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 24
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 25
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H     ; 26
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00H,00H      ; 27
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 28
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 29
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 30
        DB 00H ,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00H     ; 31
        DB 00H,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 32
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 33
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 34
        DB 00H ,00H ,00H ,0Fh,0Fh,0Fh,0Fh,0Fh     ; 35
        DB 0Fh,00H,00H ,00H ,00H ,00H ,00H ,00H      ; 36
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 37
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 38
        DB 00H ,00H ,00H ,00H ,00H ,0Fh,0Fh,0Fh     ; 39
        DB 0Fh,0Fh,0Fh,00H,00H ,00H ,00H ,00H      ; 40
        DB 00H ,00H ,02h,02h,0Fh,02h,00H ,00H      ; 41
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 42
        DB 00H ,00H ,00H ,00H ,00H ,00H ,0Fh,0Fh     ; 43
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,00H,00H ,00H      ; 44
        DB 00H ,00H ,00H ,02h,02h,0Fh,0Fh,0Fh     ; 45
        DB 02h,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 46
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 47
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,00H,00H     ; 48
        DB 00H ,00H ,00H ,00H ,02h,02h,02h,0Fh     ; 49
        DB 0Fh,00H,02h,00H ,00H ,00H ,00H ,00H      ; 50
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 51
        DB 00H ,00H ,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 52
        DB 00H,00H ,00H ,00H ,00H ,02h,02h,02h     ; 53
        DB 02h,0Fh,0Fh,00H,02h,08h,00H ,00H      ; 54
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 55
        DB 00H ,00H ,00H ,00H ,0Fh,0Fh,0Fh,0Fh     ; 56
        DB 0Fh,0Fh,00H,00H ,00H ,00H,0Fh,02h     ; 57
        DB 02h,02h,02h,0Fh,0Fh,0Fh,02h,08h     ; 58
        DB 08h,08h,08h,00H ,00H ,00H ,00H ,00H      ; 59
        DB 00H ,00H ,00H ,00H ,00H,00H,0Fh,0Fh     ; 60
        DB 0Fh,0Fh,0Fh,0Fh,00H,00H,00H,00H     ; 61
        DB 0Fh,02h,02h,02h,02h,02h,0Fh,02h     ; 62
        DB 02h,08h,08h,08h,08h,08h,00H ,00H      ; 63
        DB 00H ,00H ,00H ,00H,00H,00H,00H,00H     ; 64
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,00H,00H,00H     ; 65
        DB 00H,00H,0Fh,02h,02h,02h,02h,02h     ; 66
        DB 02h,02h,02h,08h,08h,08h,08h,08h     ; 67
        DB 00H,00H ,00H,00H,00H,00H,00H,00H     ; 68
        DB 00H,00H,0Fh,0Fh,0Fh,0Fh,0Fh,00H     ; 69
        DB 00H,00H,00H,00H,0Fh,0Fh,02h,02h     ; 70
        DB 02h,02h,02h,02h,00H ,00H ,00H ,00H      ; 71
        DB 00H ,00H ,00H ,00H,00H,00H,00H,00H     ; 72
        DB 00H,00H,00H,00H,0Fh,0Fh,0Fh,0Fh     ; 73
        DB 0Fh,00H,00H,00H,00H,00H,00H,0Fh     ; 74
        DB 02h,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 75
        DB 00H ,00H ,00H ,00H ,00H ,00H ,0Fh,00H     ; 76
        DB 00H,00H,00H,00H,00H,00H,0Fh,0Fh     ; 77
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,00H,00H,00H     ; 78
        DB 00H,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 79
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 80
        DB 00H ,0Fh,00H,00H,00H,00H,00H,00H     ; 81
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 82
        DB 0Fh,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 83
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 84
        DB 00H ,00H ,00H ,00H ,0Fh,0Fh,00H,00H     ; 85
        DB 00H,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 86
        DB 0Fh,0Fh,00H ,00H ,00H ,00H ,00H ,00H      ; 87
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 88
        DB 00H ,00H ,00H ,00H ,00H ,00H ,0Fh,0Fh     ; 89
        DB 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 90
        DB 0Fh,0Fh,0Fh,00H ,00H ,00H ,00H ,00H      ; 91
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 92
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 93
        DB 00H ,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh     ; 94
        DB 0Fh,0Fh,0Fh,00H ,00H ,00H ,00H ,00H      ; 95
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 96
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ; 97
        DB 00H ,00H ,00H ,00H ,0Fh,0Fh,0Fh,0Fh     ; 98
        DB 0Fh,0Fh,0Fh,00H ,00H ,00H ,00H ,00H      ; 99
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;100
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;101
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;102
        DB 08h,0Fh,0Fh,00H ,00H ,00H ,00H ,00H      ;103
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;104
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;105
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,08h     ;106
        DB 08h,08h,08h,08h,00H ,00H ,00H ,00H      ;107
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;108
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;109
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;110
        DB 00H ,08h,08h,08h,08h,00H ,00H ,00H      ;111
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;112
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;113
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;114
        DB 00H ,00H ,00H ,08h,08h,08h,00H ,00H      ;115
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;116
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;117
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;118
        DB 00H ,00H ,00H ,00H ,00H ,00H ,08h,00H      ;119
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;120
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;121
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;122
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;123
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;124
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;125
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;126
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;127
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;128
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;129
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;130
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;131
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;132
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;133
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H      ;134
        DB 00H ,00H ,00H ,00H ,00H ,00H ,00H ,00H       
    
;---------------------------------------------------------------
duck1_2         DB    00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  0
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  1
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  2
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  3
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  4
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  5
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  6
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  7
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  8
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  9
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 10
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 11
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 12
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 13
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 14
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 15
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 16
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 17
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 18
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 19
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 20
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 21
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H, 02H, 0FH     ; 22
        DB  02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 23
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 24
        DB  00H, 00H, 00H, 00H, 02H, 02H, 0FH, 0FH, 0FH, 02H, 00H, 00H, 00H     ; 25
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 26
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H, 02H     ; 27
        DB  02H, 0FH, 0FH, 00H, 02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 28
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 29
        DB  00H, 00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H, 0FH, 0FH, 00H, 02H     ; 30
        DB  08H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 31
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH     ; 32
        DB  02H, 02H, 02H, 02H, 0FH, 0FH, 0FH, 02H, 08H, 08H, 08H, 08H, 00H     ; 33
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 34
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 02H, 02H, 02H, 02H, 02H     ; 35
        DB  0FH, 02H, 02H, 08H, 08H, 08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H     ; 36
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 37
        DB  00H, 00H, 0FH, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 08H, 08H     ; 38
        DB  08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 39
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 02H     ; 40
        DB  02H, 02H, 02H, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 41
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 42
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 02H, 00H, 00H, 00H, 00H, 00H     ; 43
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H     ; 44
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 45
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 46
        DB  00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 47
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 48
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 49
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 50
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 51
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 00H, 00H     ; 52
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 53
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 54
        DB  00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H     ; 55
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 56
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 57
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 58
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 59
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 0FH, 0FH     ; 60
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 61
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 62
        DB  00H, 00H, 08H, 08H, 08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H, 00H     ; 63
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 64
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 08H     ; 65
        DB  08H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 66
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 67
        DB  00H, 00H, 00H, 00H, 00H, 08H, 08H, 08H, 00H, 00H, 00H, 0FH, 00H     ; 68
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 69
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 70
        DB  00H, 08H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H     ; 71
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 72
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 73
        DB  00H, 00H, 0FH, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 74
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 75
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH     ; 76
        DB  00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 77
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 78
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 00H, 00H, 00H     ; 79
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 80
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 81
        DB  00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 82
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H                        
 ;------------------------------------------------------------------------------
   duck1_3     DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  0
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  1
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  2
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  3
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  4
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  5
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  6
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  7
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  8
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ;  9
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 10
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 11
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 12
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 13
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 14
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 15
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 16
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 17
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 18
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 19
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 20
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 21
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 22
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 23
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 24
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 25
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 26
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 27
        DB  02H, 02H, 0FH, 02H, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 28
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H, 00H, 00H     ; 29
        DB  00H, 00H , 00H , 00H , 00H , 00H , 00H , 02H, 02H, 0FH, 0FH, 0FH, 02H     ; 30
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 31
        DB  00H , 00H , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H , 00H , 00H      ; 32
        DB  00H , 02H, 02H, 02H, 0FH, 0FH, 00H, 02H, 00H , 08H, 08H, 08H, 08H     ; 33
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 0FH, 0FH, 00H, 00H     ; 34
        DB  00H, 00H, 00H, 00H, 00H, 00H , 00H , 00H , 02H, 02H, 02H, 02H, 0FH     ; 35
        DB  0FH, 00H, 02H, 08H, 08H, 08H, 08H, 08H, 00H , 00H , 00H , 00H , 00H      ; 36
        DB  00H , 00H , 00H , 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 0FH, 00H, 00H      ; 37
        DB  00H , 00H, 0FH, 02H, 02H, 02H, 02H, 0FH, 0FH, 0FH, 02H, 08H, 08H     ; 38
        DB  08H, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 0FH, 0FH     ; 39
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 0FH, 02H, 02H     ; 40
        DB  02H, 02H, 02H, 0FH, 02H, 02H, 08H, 00H , 00H , 00H , 00H , 00H , 00H      ; 41
        DB  00H , 00H , 00H , 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 42
        DB  0FH, 00H, 00H, 00H, 00H, 0FH, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 43
        DB  02H, 08H, 00H , 00H , 00H , 00H , 00H, 00H , 00H, 00H, 00H, 00H, 00H     ; 44
        DB  00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H     ; 45
        DB  0FH, 0FH, 02H, 02H, 02H, 02H, 02H, 02H, 00H , 08H, 08H, 00H , 00H      ; 46
        DB  00H , 00H , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH     ; 47
        DB  0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 02H, 00H , 00H      ; 48
        DB  00H , 00H , 00H , 00H , 00H , 08H, 08H, 00H , 00H , 00H , 00H , 0FH, 00H     ; 49
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H     ; 50
        DB  00H, 00H, 00H, 00H, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 51
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 0FH, 00H, 00H, 00H, 00H, 00H     ; 52
        DB  00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H , 00H , 00H      ; 53
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 54
        DB  00H , 00H , 00H , 0FH, 0FH, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH     ; 55
        DB  0FH, 0FH, 0FH, 0FH, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 56
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 0FH, 0FH     ; 57
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H , 00H      ; 58
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 59
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 60
        DB  0FH, 0FH, 0FH, 0FH, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 61
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 62
        DB  00H , 00H , 00H , 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H , 00H , 00H      ; 63
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 64
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 65
        DB  08H, 0FH, 0FH, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 66
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 67
        DB  00H , 00H , 00H , 00H , 00H , 08H, 08H, 08H, 08H, 08H, 00H , 00H , 00H      ; 68
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 69
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 70
        DB  08H, 08H, 08H, 08H, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 71
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 72
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 08H, 08H, 08H, 00H , 00H      ; 73
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 74
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 75
        DB  00H , 00H , 00H , 00H , 08H, 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 76
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 77
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 78
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 79
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 80
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 81
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H      ; 82
        DB  00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H , 00H       
        
 
  ;------------------------------------------------------------------------------------------

;-------------------------------------   duck 2 -----------------------------------------
;------------------------------------------------------------------------------------------      
duck2         DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  0
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  1
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  2
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  3
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  4
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  5
        DB  00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  6
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  7
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  8
        DB  0FH, 0FH, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  9
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 10
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH     ; 11
        DB  00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 12
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 13
        DB  00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H     ; 14
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 15
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH     ; 16
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 17
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 18
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH     ; 19
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 20
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 21
        DB  00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H     ; 22
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 23
        DB  02H, 0FH, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH     ; 24
        DB  0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 25
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H, 0FH, 0FH, 0FH, 02H, 02H     ; 26
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 27
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 28
        DB  00H, 00H, 02H, 00H, 0FH, 0FH, 02H, 02H, 02H, 00H, 00H, 00H, 00H     ; 29
        DB  00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H     ; 30
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 02H, 00H, 0FH     ; 31
        DB  0FH, 02H, 02H, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH     ; 32
        DB  0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 33
        DB  00H, 08H, 08H, 08H, 08H, 02H, 0FH, 0FH, 0FH, 02H, 02H, 02H, 02H     ; 34
        DB  0FH, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H     ; 35
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 08H, 08H, 08H     ; 36
        DB  02H, 02H, 0FH, 02H, 02H, 02H, 02H, 02H, 0FH, 00H, 00H, 00H, 00H     ; 37
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 38
        DB  00H, 00H, 00H, 08H, 08H, 08H, 08H, 08H, 02H, 02H, 02H, 02H, 02H     ; 39
        DB  02H, 02H, 02H, 0FH, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH     ; 40
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 41
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H, 0FH, 0FH, 00H     ; 42
        DB  00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H     ; 43
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 44
        DB  00H, 00H, 00H, 00H, 02H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 0FH     ; 45
        DB  0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 46
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 47
        DB  00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H     ; 48
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H     ; 49
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH     ; 50
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H     ; 51
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 52
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 53
        DB  0FH, 0FH, 0FH, 00H, 00H, 00H, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H     ; 54
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 55
        DB  00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 56
        DB  0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 57
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 58
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H     ; 59
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 60
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH     ; 61
        DB  0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 62
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 63
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 08H, 00H, 00H, 00H     ; 64
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 65
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 66
        DB  00H, 00H, 00H, 08H, 08H, 08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H     ; 67
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 68
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H     ; 69
        DB  08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 70
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 71
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 08H, 00H, 00H     ; 72
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 73
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 74
        DB  00H, 00H, 00H, 00H, 08H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 75
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 76
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 77
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 78
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 79
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 80
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 81
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 82
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     

      ;---------------------------------------------------------------
  duck2_1         DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  0
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  1
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  2
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  3
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  4
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  5
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  6
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  7
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  8
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  9
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 10
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 11
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 12
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 13
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 14
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 15
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 16
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 17
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 18
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 19
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 20
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 02H, 0FH, 02H, 02H, 00H  , 00H  , 00H  , 00H       ; 21
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 22
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H     ; 23
        DB  0FH, 0FH, 0FH, 02H, 02H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 24
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 25
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H, 00H, 0FH, 0FH, 02H, 02H     ; 26
        DB  02H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 27
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 28
        DB  00H  , 08H, 02H, 00H, 0FH, 0FH, 02H, 02H, 02H, 02H, 00H  , 00H  , 00H       ; 29
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 30
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H, 08H, 02H, 0FH, 0FH     ; 31
        DB  0FH, 02H, 02H, 02H, 02H, 0FH, 00H, 00H  , 00H  , 00H  , 00H, 00H, 00H     ; 32
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 33
        DB  08H, 08H, 08H, 08H, 08H, 02H, 02H, 0FH, 02H, 02H, 02H, 02H, 02H     ; 34
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 35
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H, 08H, 08H     ; 36
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 0FH, 00H, 00H, 00H, 00H     ; 37
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H  , 00H       ; 38
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H, 02H, 02H, 02H     ; 39
        DB  02H, 02H, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 40
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H, 00H  , 00H       ; 41
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H, 0FH, 00H, 00H     ; 42
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 43
        DB  00H, 00H, 00H, 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 44
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 45
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H       ; 46
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 47
        DB  00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 48
        DB  00H, 00H, 00H, 00H, 00H, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 49
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH     ; 50
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH     ; 51
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 52
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H     ; 53
        DB  00H, 00H, 0FH, 00H, 00H, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H       ; 54
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 55
        DB  00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH     ; 56
        DB  0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 57
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H     ; 58
        DB  00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H       ; 59
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 60
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH     ; 61
        DB  0FH, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 62
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 63
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 08H, 08H, 08H, 08H, 08H     ; 64
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 65
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H     ; 66
        DB  00H, 0FH, 00H  , 00H  , 08H, 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H       ; 67
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 68
        DB  00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H  , 00H  , 00H       ; 69
        DB  08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 70
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H     ; 71
        DB  00H, 00H, 00H, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 00H  , 00H  , 00H       ; 72
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 73
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 0FH, 00H, 0FH, 00H       ; 74
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 75
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 76
        DB  00H, 00H, 0FH, 00H, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 77
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 78
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 0FH, 0FH, 00H       ; 79
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 80
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 81
        DB  00H  , 00H  , 00H, 00H, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 82
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  

        ;-----------------------------------------------------------------------------
        duck2_2         DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  0
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  1
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  2
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  3
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  4
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  5
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  6
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  7
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  8
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  9
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 10
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 11
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 12
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 13
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 14
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 15
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 16
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 17
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 18
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 19
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 20
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 21
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 22
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 23
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 24
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 25
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H, 0FH, 02H, 02H, 00H       ; 26
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 27
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 28
        DB  00H  , 00H  , 02H, 0FH, 0FH, 0FH, 02H, 02H, 00H  , 00H  , 00H  , 00H  , 00H       ; 29
        DB  00H  , 00H, 00H, 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 30
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H, 08H, 00H  , 02H, 00H, 0FH     ; 31
        DB  0FH, 02H, 02H, 02H, 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H     ; 32
        DB  00H, 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 33
        DB  08H, 08H, 08H, 08H, 08H, 02H, 00H, 0FH, 0FH, 02H, 02H, 02H, 02H     ; 34
        DB  00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 00H       ; 35
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H     ; 36
        DB  02H, 0FH, 0FH, 0FH, 02H, 02H, 02H, 02H, 0FH, 00H, 00H  , 00H  , 00H     ; 37
        DB  0FH, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H       ; 38
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 02H, 02H, 0FH, 02H, 02H     ; 39
        DB  02H, 02H, 02H, 0FH, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH     ; 40
        DB  0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 41
        DB  00H  , 00H  , 08H, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 0FH, 00H     ; 42
        DB  00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H     ; 43
        DB  00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 00H  , 02H     ; 44
        DB  02H, 02H, 02H, 02H, 02H, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 0FH     ; 45
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 46
        DB  00H, 00H  , 00H  , 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H     ; 47
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H     ; 48
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H       ; 49
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H     ; 50
        DB  00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H     ; 51
        DB  00H, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 52
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH     ; 53
        DB  0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H  , 00H  , 00H  , 00H       ; 54
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 55
        DB  00H  , 00H  , 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H     ; 56
        DB  00H, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 57
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH     ; 58
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H       ; 59
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 60
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 0FH, 0FH, 0FH     ; 61
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 62
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 63
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H       ; 64
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 65
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 66
        DB  00H  , 00H  , 0FH, 0FH, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 67
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 68
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H     ; 69
        DB  08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 70
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 71
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H, 08H, 00H  , 00H       ; 72
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 73
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 74
        DB  00H  , 00H  , 00H  , 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 75
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 76
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H     ; 77
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 78
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 79
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 80
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 81
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 82
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H          
;-------------------------------------------------------------------------------------------------------------------

;------------------------------------------      TREE TREE
;-------------------------------------------------------------------------------------------------------------------

  tree     DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h, 00h, 00h, 00h     ;  0
        DB  02h, 02h, 02h, 02h, 02h,00h , 02h, 02h,00h ,00h ,00h , 00h     ;  1
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;  2
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;  3
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h     ;  4
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ;  5
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;  6
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;  7
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;  8
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;  9
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 10
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 11
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 12
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 13
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 14
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 15
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 16
        DB 00h ,00h , 08h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 17
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h , 00h     ; 18
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 19
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 20
        DB 00h ,00h ,00h , 08h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 21
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ; 22
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 23
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 24
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 25
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 26
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 27
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 28
        DB 00h ,00h ,00h ,00h ,00h ,00h , 07h, 02h, 02h, 02h, 02h, 02h     ; 29
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 30
        DB  02h, 02h, 02h, 02h, 07h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 31
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 32
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h     ; 33
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 34
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h,00h ,00h ,00h , 00h     ; 35
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 36
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 37
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 38
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h,00h , 00h     ; 39
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 40
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 41
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 42
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h, 00h     ; 43
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 44
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 45
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 46
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 47
        DB  07h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 48
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 49
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ; 50
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 51
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 52
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 53
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h     ; 54
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 55
        DB  02h, 02h, 07h, 02h, 07h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 56
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 57
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h     ; 58
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 59
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 60
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 61
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 62
        DB 00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 63
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h , 00h     ; 64
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 65
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 66
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h,00h , 02h, 02h, 00h     ; 67
        DB  02h, 02h, 02h,00h , 02h, 02h,00h ,00h ,00h ,00h ,00h , 00h     ; 68
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 69
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 70
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h,00h ,00h , 02h     ; 71
        DB  02h,00h , 02h, 02h,00h ,00h ,00h , 02h,00h ,00h ,00h , 00h     ; 72
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 73
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 74
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 75
        DB 00h ,00h , 02h, 02h, 02h, 0Eh,00h ,00h ,00h ,00h ,00h , 00h     ; 76
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h,00h ,00h , 02h, 02h, 00h     ; 77
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 78
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 79
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 0Eh,00h ,00h ,00h , 00h     ; 80
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 81
        DB  02h, 02h, 02h,00h , 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 82
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 83
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 0Eh, 0Eh,00h , 00h     ; 84
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 85
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h,00h ,00h , 00h     ; 86
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 87
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh     ; 88
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ; 89
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h     ; 90
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 91
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 92
        DB  0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h     ; 93
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 94
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ; 95
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h     ; 96
        DB 00h ,00h , 02h, 0Eh, 0Eh,00h ,00h ,00h ,00h , 02h, 02h, 02h     ; 97
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 98
        DB  02h, 02h, 02h, 02h, 02h, 07h,00h ,00h ,00h ,00h ,00h , 00h     ; 99
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;100
        DB 00h , 08h, 03h, 08h, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 0Eh     ;101
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;102
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h , 00h     ;103
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;104
        DB 00h ,00h ,00h ,00h , 08h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h , 00h     ;105
        DB 00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;106
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h , 00h     ;107
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;108
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh     ;109
        DB 00h ,00h ,00h , 0Eh, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;110
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ;111
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;112
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh     ;113
        DB  0Eh, 0Eh, 0Eh,00h ,00h , 0Eh, 02h, 02h, 02h, 02h, 02h, 02h     ;114
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;115
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;116
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;117
        DB 00h , 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h , 02h, 02h, 02h, 02h     ;118
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;119
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;120
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;121
        DB 00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 02h     ;122
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;123
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;124
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;125
        DB 00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h , 00h     ;126
        DB 00h ,00h , 02h,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;127
        DB  02h, 02h, 02h, 02h,00h , 02h,00h ,00h ,00h ,00h ,00h , 00h     ;128
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;129
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 00h     ;130
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;131
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;132
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;133
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh     ;134
        DB  0Eh, 07h, 07h, 02h, 02h, 02h, 02h,00h , 02h, 02h, 02h, 02h     ;135
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h , 00h     ;136
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;137
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;138
        DB  0Eh, 0Eh, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;139
        DB  02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h , 00h     ;140
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;141
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;142
        DB 00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;143
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;144
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;145
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;146
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;147
        DB  02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h , 00h     ;148
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;149
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h,00h ,00h , 07h, 07h, 00h     ;150
        DB 00h ,00h ,00h ,00h ,00h ,00h , 07h, 02h, 02h, 02h, 02h, 02h     ;151
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h , 00h     ;152
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;153
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 07h, 02h     ;154
        DB  07h, 07h, 02h, 07h,00h ,00h ,00h , 08h, 02h, 02h, 02h, 02h     ;155
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h , 00h     ;156
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;157
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;158
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h , 02h, 02h     ;159
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;160
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;161
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;162
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h , 00h     ;163
        DB  07h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;164
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;165
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h     ;166
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ;167
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;168
        DB  02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;169
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h     ;170
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;171
        DB  07h, 02h,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;172
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;173
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;174
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;175
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h , 07h, 02h, 02h, 0Eh, 02h     ;176
        DB  02h, 0Eh, 02h, 02h,00h , 02h, 02h,00h ,00h ,00h ,00h , 00h     ;177
        DB 00h ,00h ,00h ,00h , 02h,00h ,00h , 02h,00h ,00h ,00h , 00h     ;178
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;179
        DB  02h, 02h, 02h, 02h, 02h, 02h, 07h,00h ,00h , 07h, 0Eh, 0Eh     ;180
        DB  02h, 07h, 0Eh, 0Eh, 02h,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;181
        DB 00h ,00h , 02h, 02h,00h , 02h, 02h,00h , 02h, 02h,00h , 00h     ;182
        DB 00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;183
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h , 07h     ;184
        DB  0Eh, 0Eh, 02h,00h , 02h, 0Eh, 02h,00h ,00h ,00h ,00h , 00h     ;185
        DB 00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ;186
        DB  02h, 02h,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;187
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h     ;188
        DB 00h , 07h, 0Eh, 0Eh, 02h, 02h, 0Eh, 0Eh, 02h,00h ,00h , 00h     ;189
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;190
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h , 02h, 02h, 02h, 02h     ;191
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h     ;192
        DB  07h,00h ,00h , 07h, 0Eh, 0Eh, 02h, 02h, 0Eh, 0Eh, 02h, 00h     ;193
        DB 00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;194
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h,00h ,00h , 02h     ;195
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;196
        DB  02h, 02h,00h ,00h ,00h , 07h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h     ;197
        DB 00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;198
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h     ;199
        DB 00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;200
        DB  02h, 02h, 02h,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;201
        DB  0Eh, 02h,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;202
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;203
        DB  02h, 07h,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h     ;204
        DB  02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh     ;205
        DB  0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h     ;206
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;207
        DB  02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h     ;208
        DB  02h,00h , 02h, 02h, 0Eh, 02h,00h ,00h ,00h ,00h ,00h , 0Eh     ;209
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 02h, 02h, 02h     ;210
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;211
        DB  02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h , 00h     ;212
        DB 00h ,00h , 02h, 02h, 02h, 02h, 0Eh, 02h,00h ,00h ,00h , 00h     ;213
        DB 00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h,00h ,00h ,00h ,00h , 02h     ;214
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;215
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h ,00h ,00h , 00h     ;216
        DB 00h ,00h ,00h ,00h ,00h ,00h , 02h, 0Eh, 0Eh, 0Eh, 02h, 00h     ;217
        DB 00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h,00h ,00h , 00h     ;218
        DB 00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;219
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h,00h , 00h     ;220
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 0Eh     ;221
        DB  0Eh,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h, 00h     ;222
        DB 00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;223
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;224
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;225
        DB 00h , 0Eh, 0Eh,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;226
        DB  02h,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;227
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;228
        DB  02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;229
        DB 00h ,00h ,00h , 02h, 0Eh, 0Eh, 0Eh,00h ,00h , 0Eh, 0Eh, 0Eh     ;230
        DB  0Eh, 0Eh, 02h,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h     ;231
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;232
        DB  02h, 02h, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;233
        DB 00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh,00h ,00h , 0Eh     ;234
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h , 0Eh, 02h     ;235
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;236
        DB  02h, 02h, 02h, 02h, 02h, 07h,00h ,00h ,00h ,00h ,00h , 00h     ;237
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 08h, 0Eh, 0Eh, 0Eh     ;238
        DB 00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 00h     ;239
        DB 00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;240
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 07h,00h ,00h ,00h , 00h     ;241
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh     ;242
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 08h,00h ,00h , 00h     ;243
        DB 00h ,00h ,00h ,00h , 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;244
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h,00h , 02h, 07h,00h , 00h     ;245
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;246
        DB 00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h, 00h     ;247
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 02h, 02h, 0Eh, 02h     ;248
        DB  02h,00h , 02h, 02h, 02h,00h ,00h , 02h, 02h,00h ,00h , 00h     ;249
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;250
        DB 00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;251
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h, 0Eh, 0Eh, 0Eh     ;252
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;253
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;254
        DB 00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;255
        DB  0Eh, 0Eh, 02h,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh     ;256
        DB  02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;257
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;258
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh     ;259
        DB  0Eh, 0Eh, 0Eh, 0Eh, 02h,00h ,00h ,00h ,00h ,00h , 08h, 02h     ;260
        DB  0Eh, 0Eh, 02h, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;261
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;262
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh     ;263
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h,00h ,00h ,00h ,00h , 0Eh     ;264
        DB  02h, 02h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 00h     ;265
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;266
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;267
        DB 00h ,00h , 0Eh, 00h, 00h, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h , 00h     ;268
        DB  0Eh, 0Eh, 0Eh, 0Eh, 02h, 07h,00h ,00h ,00h ,00h ,00h , 00h     ;269
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;270
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;271
        DB 00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h     ;272
        DB 00h , 02h, 0Eh, 0Eh, 0Eh, 0Eh, 07h,00h ,00h ,00h ,00h , 00h     ;273
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;274
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;275
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 02h, 0Eh, 0Eh     ;276
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h , 00h     ;277
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;278
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;279
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 02h     ;280
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h,00h ,00h , 00h     ;281
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;282
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;283
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh     ;284
        DB  00h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 00h     ;285
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;286
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;287
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;288
        DB 00h , 0Eh, 00h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 02h     ;289
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;290
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;291
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;292
        DB 00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;293
        DB  0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;294
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;295
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;296
        DB 00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;297
        DB  0Eh, 0Eh, 02h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;298
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;299
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;300
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 0Eh, 02h, 0Eh     ;301
        DB  0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;302
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;303
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;304
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 0Eh     ;305
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h , 00h     ;306
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;307
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;308
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h     ;309
        DB  02h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h , 00h     ;310
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;311
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;312
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;313
        DB 00h , 07h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h , 00h     ;314
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;315
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;316
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;317
        DB 00h ,00h ,00h , 07h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 00h     ;318
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;319
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;320
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;321
        DB 00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 02h, 0Eh, 0Eh, 0Eh, 0Eh     ;322
        DB  0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;323
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;324
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;325
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 02h, 0Eh, 0Eh     ;326
        DB  0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;327
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;328
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;329
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 0Eh     ;330
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;331
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;332
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;333
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h     ;334
        DB  02h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 00h     ;335
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;336
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;337
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;338
        DB 00h , 07h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h , 00h     ;339
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;340
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;341
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;342
        DB 00h ,00h ,00h , 07h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 00h     ;343
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;344
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;345
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;346
        DB 00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 02h, 0Eh, 0Eh, 0Eh, 0Eh     ;347
        DB  0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;348
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;349
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;350
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h , 07h, 0Eh, 02h, 0Eh, 0Eh     ;351
        DB  0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;352
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;353
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;354
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 0Eh, 0Eh, 0Eh     ;355
        DB  0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;356
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;357
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;358
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 02h     ;359
        DB  02h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h ,00h ,00h ,00h , 00h     ;360
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;361
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;362
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;363
        DB 00h , 0Eh, 0Eh, 0Eh, 02h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh,00h , 00h     ;364
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;365
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;366
        DB 00h ,00h , 07h,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;367
        DB 00h ,00h ,00h , 0Eh, 00h, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh, 0Eh     ;368
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h     ;369
        DB 00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h ,00h , 00h       


        ;------------------------------------------------------------------------------
        ;-----------------------  tree 2---------------------------------------------
        ;----------------------------------------------------------------------------

     tree2      DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  0
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  1
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  2
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  3
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  4
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 02h     ;  5
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  6
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  7
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  8
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02h, 02h     ;  9
        DB  00H, 02h, 02h, 00H, 00H, 00H, 00H, 00H     ; 10
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 11
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 12
        DB  00H, 02H, 02H, 02H, 02H, 02h, 02h, 02h     ; 13
        DB  02h, 02h, 02h, 00H, 02h, 00H, 00H, 00H     ; 14
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 15
        DB  00H, 00H, 00H, 00H, 00H, 00H, 02H, 02H     ; 16
        DB  02H, 02H, 02H, 02H, 02h, 02H, 02h, 02h     ; 17
        DB  02h, 02h, 02h, 02h, 02h, 00H, 00H, 00H     ; 18
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 19
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H     ; 20
        DB  02H, 02H, 02H, 02H, 02h, 02h, 02h, 02h     ; 21
        DB  02h, 02h, 02h, 02h, 02h, 00H, 00H, 00H     ; 22
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 23
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H     ; 24
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02h, 02h     ; 25
        DB  02h, 02h, 02h, 02h, 00H, 00H, 00H, 00H     ; 26
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 27
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 28
        DB  02H, 02H, 02H, 02H, 02h, 02h, 02h, 02h     ; 29
        DB  02h, 02h, 00H, 00H, 00H, 00H, 00H, 00H     ; 30
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 31
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02h     ; 32
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02h, 02h     ; 33
        DB  02h, 02h, 02h, 00H, 00H, 00H, 00H, 00H     ; 34
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H     ; 35
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 36
        DB  02H, 02H, 02H, 02H, 02h, 02H, 02h, 02h     ; 37
        DB  02h, 02h, 02h, 00H, 00H, 00H, 00H, 00H     ; 38
        DB  00H, 00H, 00H, 00H, 00H, 00H, 02H, 02H     ; 39
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 40
        DB  02H, 02H, 02H, 02h, 02h, 02h, 02h, 02h     ; 41
        DB  02h, 02h, 00H, 00H, 00H, 00H, 00H, 00H     ; 42
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H     ; 43
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 44
        DB  02H, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 45
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 46
        DB  00H, 00H, 00H, 02H, 02H, 02H, 02H, 02H     ; 47
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02h     ; 48
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 49
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 50
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 51
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02H, 02H     ; 52
        DB  02H, 02h, 02h, 02h, 02h, 02h, 00H, 00H     ; 53
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 54
        DB  00H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 55
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02H, 02h     ; 56
        DB  02h, 02h, 02h, 02h, 02h, 02h, 00H, 00H     ; 57
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H     ; 58
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 59
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02h, 02h     ; 60
        DB  02h, 02h, 02h, 02h, 02h, 02h, 00H, 00H     ; 61
        DB  00H, 00H, 00H, 00H, 02H, 02H, 02H, 02H     ; 62
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 63
        DB  02H, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 64
        DB  02h, 02h, 02h, 02h, 02h, 02h, 00H, 00H     ; 65
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 66
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 67
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 68
        DB  02h, 02h, 02h, 02h, 00H, 00H, 00H, 00H     ; 69
        DB  00H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 70
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02h, 02h     ; 71
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 72
        DB  02h, 02h, 02h, 02h, 00H, 00H, 00H, 02H     ; 73
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 74
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02H, 02h     ; 75
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 76
        DB  02h, 02h, 02h, 00H, 00H, 00H, 02H, 02H     ; 77
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 78
        DB  02H, 02H, 02H, 02H, 02h, 02h, 02h, 02h     ; 79
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02H, 02h     ; 80
        DB  02h, 00H, 00H, 00H, 00H, 00H, 02H, 02H     ; 81
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 82
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02h, 02h     ; 83
        DB  02h, 02h, 02h, 02H, 02H, 02h, 02h, 02h     ; 84
        DB  02h, 00H, 00H, 00H, 02H, 02H, 02H, 02H     ; 85
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 86
        DB  02H, 02H, 02H, 02h, 02h, 02h, 02h, 02h     ; 87
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 88
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 89
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ; 90
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ; 91
        DB  02h, 02H, 02h, 02h, 02h, 02h, 02H, 00H     ; 92
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 93
        DB  02H, 02H, 02H, 02H, 02h, 02h, 02h, 02h     ; 94
        DB  02h, 02h, 02h, 02h, 02h, 02H, 02h, 02H     ; 95
        DB  02H, 02h, 02h, 02h, 02H, 00H, 00H, 00H     ; 96
        DB  00H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 97
        DB  02H, 02H, 02h, 02h, 02h, 02h, 02h, 02h     ; 98
        DB  02h, 02h, 02h, 02h, 02h, 02H, 02H, 02h     ; 99
        DB  02h, 02h, 02h, 02h, 02H, 00H, 00H, 00H     ;100
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;101
        DB  02H, 02H, 02h, 02h, 02H, 02h, 02h, 02h     ;102
        DB  02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h     ;103
        DB  02H, 02h, 02H, 02H, 02H, 00H, 02H, 02H     ;104
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;105
        DB  02H, 02H, 02H, 02H, 02H, 02h, 02h, 02H     ;106
        DB  02h, 02h, 02h, 02H, 02h, 02h, 02H, 02H     ;107
        DB  02H, 02H, 02H, 00H, 00H, 00H, 02H, 02H     ;108
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;109
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02h     ;110
        DB  02h, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;111
        DB  02H, 02H, 02H, 00H, 02H, 02H, 02H, 02H     ;112
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;113
        DB  02H, 02H, 02H, 00h, 02H, 02H, 02H, 02h     ;114
        DB  02H, 02H, 02H, 00h, 02H, 02H, 02H, 02H     ;115
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;116
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;117
        DB  02H, 02h, 00h, 02H, 02H, 02H, 02H, 02H     ;118
        DB  02H, 02H, 02h, 00h, 02H, 02H, 02H, 02H     ;119
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H     ;120
        DB  02H, 00h, 02H, 02H, 02h, 02H, 02H, 02h     ;121
        DB  00h, 02H, 02H, 02H, 02H, 02H, 00h, 02H     ;122
        DB  02H, 02H, 02h, 00h, 02H, 02H, 00h, 00H     ;123
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 00h     ;124
        DB  02H, 02H, 02H, 02h, 02H, 02H, 02h, 00h     ;125
        DB  02H, 02H, 02H, 02H, 02H, 00h, 02H, 02H     ;126
        DB  02H, 02h, 00h, 02H, 02H, 02h, 00h       



;--------------------------------------------------------------------------------
duck_fall          DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  0
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  1
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  2
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  3
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  4
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  5
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  6
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  7
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ;  8
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H     ;  9
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 10
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 11
        DB  08H, 00H, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 12
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 13
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 0FH     ; 14
        DB  0FH, 0FH, 00H, 00H, 00H, 00H, 0FH, 00H, 0FH, 00H, 00H, 00H     ; 15
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 16
        DB  00H, 00H, 00H, 08H, 00H, 00H, 08H, 08H, 08H, 0FH, 0FH, 00H     ; 17
        DB  00H, 00H, 00H, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 18
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H     ; 19
        DB  08H, 08H, 00H, 08H, 08H, 08H, 0FH, 0FH, 00H, 00H, 00H, 0FH     ; 20
        DB  00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 21
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 00H, 0FH     ; 22
        DB  08H, 08H, 08H, 0FH, 0FH, 00H, 00H, 0FH, 00H, 00H, 00H, 00H     ; 23
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 24
        DB  00H, 00H, 00H, 00H, 00H, 08H, 08H, 00H, 0FH, 08H, 08H, 0FH     ; 25
        DB  0FH, 00H, 00H, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 26
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 27
        DB  00H, 00H, 08H, 08H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 00H     ; 28
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 29
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 30
        DB  08H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 0FH, 00H, 00H, 00H     ; 31
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 32
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 33
        DB  0FH, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 34
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 35
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH     ; 36
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 37
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 38
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 00H, 00H, 00H     ; 39
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 40
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 41
        DB  00H, 00H, 00H, 0FH, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H     ; 42
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 43
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 44
        DB  00H, 0FH, 0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 45
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 46
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH     ; 47
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 48
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 49
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 0FH, 00H, 00H, 00H     ; 50
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 51
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 52
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 53
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 54
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 55
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 56
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 57
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 58
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 59
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 60
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 61
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 62
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 63
        DB  00H, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 00H, 00H, 00H     ; 64
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 65
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 66
        DB  00H, 00H, 00H, 02H, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 00H     ; 67
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 68
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 02H, 02H     ; 69
        DB  02H, 02H, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 70
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 71
        DB  00H, 00H, 00H, 00H, 08H, 00H, 02H, 02H, 02H, 02H, 02H, 02H     ; 72
        DB  02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 73
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 74
        DB  00H, 08H, 08H, 02H, 02H, 0FH, 0FH, 02H, 02H, 02H, 02H, 00H     ; 75
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 76
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 08H     ; 77
        DB  02H, 0FH, 0FH, 00H, 0FH, 02H, 02H, 02H, 00H, 00H, 00H, 00H     ; 78
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 79
        DB  00H, 00H, 00H, 00H, 00H, 00H, 08H, 08H, 08H, 02H, 00H, 00H     ; 80
        DB  00H, 00H, 02H, 02H, 02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 81
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 82
        DB  00H, 00H, 08H, 08H, 08H, 08H, 00H, 00H, 00H, 00H, 00H, 02H     ; 83
        DB  02H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 84
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 85
        DB  08H, 08H, 00H, 00H, 00H, 00H, 00H, 02H, 02H, 00H, 00H, 00H     ; 86
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 87
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 88
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 89
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H 
        ;----------------------------------------------------------

    ;---------------------------------------------------------------------
       ; ------------------     HIT DUCK 

    ;---------------------------------------------------------------------   

    hit_Duck  DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H  , 00H  , 00H  , 00H       ;  0
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 00H  , 00H  , 00H       ;  1
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H  , 00H       ;  2
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  3
        DB  00H  , 00H  , 00H  , 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H       ;  4
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H  , 00H  , 00H  , 00H       ;  5
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  6
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  7
        DB  00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ;  8
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 0FH, 0FH     ;  9
        DB  0FH, 0FH, 00H  , 00H  , 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H       ; 10
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 11
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 00H, 00H, 0FH, 0FH, 00H       ; 12
        DB  00H  , 08H, 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 13
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 14
        DB  00H  , 02H, 0FH, 0FH, 00H, 00H, 0FH, 0FH, 00H  , 08H, 08H, 08H     ; 15
        DB  08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 16
        DB  00H  , 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 02H, 02H, 0FH     ; 17
        DB  0FH, 0FH, 0FH, 0FH, 02H, 08H, 08H, 08H, 08H, 08H, 00H  , 00H       ; 18
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H     ; 19
        DB  00H, 00H, 00H  , 00H  , 00H  , 02H, 02H, 02H, 02H, 0FH, 0FH, 0FH     ; 20
        DB  0FH, 02H, 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 21
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 22
        DB  00H  , 00H  , 02H, 02H, 02H, 02H, 02H, 0FH, 0FH, 02H, 02H, 08H     ; 23
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 24
        DB  00H  , 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 02H     ; 25
        DB  02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H, 08H, 00H  , 00H  , 00H       ; 26
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H     ; 27
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 02H, 02H, 02H, 02H     ; 28
        DB  02H, 02H, 02H, 02H, 02H, 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H       ; 29
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H, 0FH     ; 30
        DB  00H, 00H, 00H, 00H, 00H  , 00H  , 02H, 02H, 02H, 02H, 02H, 02H     ; 31
        DB  02H, 02H, 00H  , 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 32
        DB  00H  , 00H  , 00H, 00H, 00H, 0FH, 00H, 0FH, 0FH, 00H, 00H, 00H     ; 33
        DB  00H, 00H, 00H  , 00H  , 02H, 02H, 02H, 02H, 02H, 02H, 00H  , 00H       ; 34
        DB  00H  , 00H  , 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H     ; 35
        DB  00H, 00H, 0FH, 0FH, 0FH, 00H  , 0FH, 00H, 00H, 00H, 00H, 00H       ; 36
        DB  00H  , 0FH, 02H, 02H, 02H, 02H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 37
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 0FH, 0FH, 00H       ; 38
        DB  0FH, 00H  , 00H  , 00H  , 0FH, 00H, 00H, 00H, 00H  , 00H, 0FH, 0FH     ; 39
        DB  0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 40
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H       ; 41
        DB  00H  , 00H  , 0FH, 00H, 00H, 00H, 00H, 00H, 0FH, 0FH, 00H  , 00H       ; 42
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 43
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 44
        DB  0FH, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H, 00H, 00H     ; 45
        DB  00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H, 00H  , 00H  , 00H  , 00H  , 00H       ; 46
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 00H, 00H     ; 47
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H     ; 48
        DB  00H  , 00H  , 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 49
        DB  00H  , 00H  , 00H, 00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 00H     ; 50
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H       ; 51
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H     ; 52
        DB  00H  , 00H  , 00H  , 00H  , 00H, 00H, 00H, 00H, 0FH, 0FH, 0FH, 00H     ; 53
        DB  00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H  , 00H  , 00H  , 00H       ; 54
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H  , 00H  , 00H  , 00H       ; 55
        DB  00H, 00H, 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 00H, 0FH, 0FH, 0FH     ; 56
        DB  00H, 00H, 00H, 00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 57
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 00H, 0FH     ; 58
        DB  0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 0FH, 0FH, 00H     ; 59
        DB  00H, 00H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 60
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H, 0FH, 0FH, 0FH, 0FH, 0FH     ; 61
        DB  0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 00H, 0FH, 00H       ; 62
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 63
        DB  00H  , 00H  , 00H  , 00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH     ; 64
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 0FH, 0FH, 00H  , 00H  , 00H  , 00H  , 00H       ; 65
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H     ; 66
        DB  00H, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 0FH, 00H  , 00H  , 08H, 08H     ; 67
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 68
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H, 08H, 08H, 00H  , 08H, 08H     ; 69
        DB  0FH, 0FH, 0FH, 08H, 08H, 00H  , 08H, 08H, 08H, 08H, 00H  , 00H       ; 70
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 71
        DB  00H  , 00H  , 00H  , 08H, 08H, 08H, 08H, 08H, 0FH, 0FH, 0FH, 0FH     ; 72
        DB  00H  , 08H, 08H, 08H, 08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 73
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 74
        DB  00H  , 08H, 08H, 08H, 00H  , 0FH, 0FH, 0FH, 00H  , 00H  , 00H  , 08H     ; 75
        DB  08H, 08H, 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 76
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 08H     ; 77
        DB  08H, 00H  , 00H, 00H, 00H  , 00H  , 00H  , 00H  , 08H, 08H, 00H  , 00H       ; 78
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 79
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 80
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 81
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 82
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 83
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 84
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 85
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 86
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 87
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 88
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H       ; 89
        DB  00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H  , 00H   

.code
main proc
    mov ax, @data
    mov ds, ax
  ;-----------------------  
  dafa:
  mov bl,[page_no]
  cmp bl,0
  jne page__1
   page_0:
   mov ax, 0
    int 10h
    mov ax, 1
    int 10h
    call ProgramLogic
    mov ax,13h
    int 10h
    call page2 
    jmp dafa
    mov bl,[page_no]
    
    page__1:
     cmp bl,1
    jne page__2

    mov ax, 13h
    int 10h
   call page2
   jmp dafa
   
   page__2:
    cmp bl,2
    jne page__3
   mov ax,0
   int 10h
   mov ax, 13h
    int 10h
    call instructions
    jmp dafa
   page__3:
   cmp bl,3
    jne page__4
   mov ax,0
   int 10h
mov ax, 13h
    int 10h
   call page3
   jmp dafa
   page__4:
   cmp bl,4
    jne page__5
mov ax, 13h
    int 10h
   call page4
   jmp dafa
     page__5:
   cmp bl,5
    jne page__6  
mov ax, 13h
    int 10h
   call page5
   jmp dafa
  page__6: 
  cmp bl,6
    jne page__7  
     mov ax, 13h
    int 10h
    call up_control
  mov ax, 13
    int 10h
    call gm1_level2 
  page__7:
  ;cmp bl,7
  ;jne page__8 
      mov ax, 13h
    int 10h
    call up_control  
  mov ax, 13
    int 10h
   call gm1_level1

  ;-----------------------
    mov ax, 4C00h       ; Exit program
    int 21h

main endp

ProgramLogic proc
 ; Set video mode 1 (80x25 text mode)
    mov cx,7
    call newlines
 ;print   spaces
    mov cx,15
    call pspaces

   mov cx,10
   mov [textcolor],03h
   call colors
  
    mov dx, offset msg  ; Load the offset address of the message into DX
    mov ah, 09h         ; Function 9 - Display String
    int 21h             ; DOS interrupt to display the string
   mov cx,3
   call newlines
   mov cx,4
   call pspaces
    ; Prompt for user's name
      mov cx,46
   mov [textcolor],03h
   call colors
    mov dx, offset prompt
    mov ah, 09h
    int 21h


    ; Read user's name input
     mov si, offset  playerName    ; SI points to buffer
     mov cx,39
read_input:
    mov ah, 1               ; AH = 1: Read Character
    int 21h                 ; DOS interrupt for character input
    cmp al, 13              ; Check for Enter key
    je input_done           ; If Enter key, terminate reading
    mov [si], al            ; Store the character in buffer
    inc si                  ; Move to next character in buffer
    loop read_input         ; Repeat until buffer_len characters are read or Enter is pressed

input_done:
; Save player's name to file
mov ah, 3Ch         ; Function 3Ch - Create or Open File
mov cx, 2           ; Access mode: read/write
mov dx, offset fileName
int 21h             ; Create or open the file
jc error            ; Jump if error

; File handle is returned in AX

mov bx, ax          ; Store file handle for later use

; Write to file
mov ah, 40h         ; Function 40h - Write to File
mov cx, 6           ; Number of bytes to write (20 characters)
mov dx, offset playerName    ; Address of the player's name (skip the length byte)
mov ah, 40h         ; Function 40h - Write to File
int 21h             ; Write player's name to file
jc error            ; Jump if error

; Close the file
mov ah, 3Eh         ; Function 3Eh - Close File
mov bx, ax          ; Move the file handle to BX
int 21h             ; Close the file
jc error            ; Jump if error

; Wait for any key press to return to main menu
mov ah, 0           ; Function 0h - Wait for Key Press
int 16h             ; Wait for any key press
ret

error:     
  

   
 
ProgramLogic endp




newlines proc
print_newlines:
     mov DX, 10
    mov AH, 02
    int 21h
    loop print_newlines
    ret
newlines endp


pspaces proc
  print_spaces:
   mov DX, ' '
    mov AH, 02
    int 21h
    loop print_spaces
    ret
pspaces endp



 colors proc
  ; Set text color to cyan
    mov ah, 09h         ; Function 9 - Display String
    mov bl,[textcolor]         ; Set text color (3 represents cyan in text mode 1)
    int 10h             ; BIOS interrupt to set text color
  ret
  colors endp


   
;---------------------------  row proc
;---------------------------------------------------
draw_pixel_row proc
    push bp                 ; Save BP
   mov bp, sp              ; Set BP to the top of the stack

    mov cx, [PixelCount]    ; Load PixelCount
    mov bx, [X]             ; Load X-coordinate
    mov dx, [Y]             ; Load Y-coordinate
plot_loop:
    cmp cx, 0               ; Check if all pixels are plotted
    je exit_loop            ; If yes, exit the loop
    
    push cx                 ; Preserve CX register
    push dx                 ; Preserve DX register
    mov ah, 0ch             ; AH = 0Ch for setting pixel
    mov al, color             ; AL = Color index (let's use color 3)
    mov cx, bx              ; Load X-coordinate
    int 10h                 ; Plot the pixel

    pop dx                  ; Restore DX register
    inc bx                  ; Increment X-coordinate for the next pixel
    pop cx                  ; Restore CX register
    dec cx                  ; Decrement pixel count
    jmp plot_loop           ; Repeat for the next pixel

exit_loop:
    pop bp                  ; Restore BP
     ret                   ; Return
draw_pixel_row endp

 draw_rows proc
 ;   push bp                 ; Save BP
  ;  mov bp, sp              ; Set BP to the top of the stack
    mov cx,sizes
    push cx

chk11:
    pop cx
    push cx

    ; Call procedure to draw a row of pixels
    cmp cx,0
    je exitss
    call draw_pixel_row     ; Call the procedure
    pop cx
    dec cx
    push cx
    inc [y]
    jmp chk11

exitss:
    pop bp
 ;   pop ax
    ret 
draw_rows endp


for11 proc
    mov [x], 59h 
    mov [y],74h
    mov [PixelCount],2
    mov [sizes],13 
     call draw_rows

    mov [x], 59h 
    mov [y],74h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows
       
    mov [x], 217h 
    mov [y],74h
    mov [PixelCount],2
    mov [sizes],13
     call draw_rows

    mov [x], 59h 
    mov [y], 80h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows
   ret
for11 endp

for22 proc
    mov [x], 59h 
    mov [y],85h
    mov [PixelCount],2
    mov [sizes],13 
     call draw_rows

    mov [x], 59h 
    mov [y],85h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows 
 
    mov [x], 217h 
    mov [y],85h
    mov [PixelCount],2
    mov [sizes],13
     call draw_rows 
    
    mov [x], 59h 
    mov [y], 91h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows 
    ret

 for33 proc  
    mov [x], 59h 
    mov [y],95h
    mov [PixelCount],2
    mov [sizes],14 
     call draw_rows

    mov [x], 59h 
    mov [y],95h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows 
 
    mov [x], 217h 
    mov [y],95h
    mov [PixelCount],2
    mov [sizes],13
     call draw_rows 

    mov [x], 19h 
    mov [y], 170h
    mov [PixelCount],128
    mov [sizes],2
     call draw_rows 
  ret
 for33 endp

remove proc
mov ah,0
mov al,[counter1]
cmp ax,0
jne for1
call for11
jmp exit
for1:
cmp ax,1
 jne for2
call for22
jmp exit
for2:
 cmp ax,2
 jne exit
 call for33
exit:
ret
remove endp




;---------------------------------------------
  ;----------------------------page 2
   page2 proc
   call logo
     
     mov cx,13
call newlines
 ; Display welcome message with the player's name
 mov cx,12
call pspaces
   mov dx, offset playerName 
    mov ah, 09h
    int 21h
mov cx,2
call newlines
mov cx,12
call pspaces
    ; Display the menu
    mov dx, offset menuPrompt
    mov ah, 09h
    int 21h
mov cx,2
call newlines
      mov cx,12
      call pspaces
      mov dx, offset menu1
       mov ah, 09h
       int 21h
mov cx,2
call newlines
       mov cx,12
      call pspaces
      mov dx, offset menu2
       mov ah, 09h
       int 21h
       mov [color],08h
     call for11
     
     ;-------------------- 
    inputs:
     
    mov ah, 00h     ; Function 00h of interrupt 16h waits for a key press
    int 16h         ; BIOS interrupt for keyboard input
    
    mov [key_pressed], ah   ; Store the pressed key in memory
    
    cmp ah, 48h     ; Compare with ASCII code for up arrow
    je up_pressed
    
    cmp ah, 50h     ; Compare with ASCII code for down arrow
    je down_pressed

    cmp ah,1ch 
    je enter_pressed
   
    
up_pressed:
mov [color],00h
 call remove 
 mov ah,0
 mov al,[counter1]
 cmp ax,0
 jne notequals
 mov [counter1],2
 mov [color],008h
 call remove 
 jmp finish
 notequals:
dec [counter1]
mov [color],008h
 call remove 
 finish:
 jmp inputs
;

down_pressed:    
mov [color],00h
 call remove 
 mov ah,0
 mov al,[counter1]
 cmp ax,2
 jne notequal
 mov [counter1],0
 mov [color],008h
 call remove 
 jmp finishs
 notequal:
 add [counter1],1
mov [color],008h
 call remove 
 finishs:
 jmp inputs

enter_pressed:
mov ah,0
mov al,[counter1]
cmp ax,0
jne j1
mov [page_no],3
jmp exit1
j1:
cmp ax,1
jne j2

mov [page_no],2
jmp exit1 
j2:
cmp ax,2
jne exit1

mov [page_no],0
exit1:
mov  [counter1],0
      ret
   page2 endp
  ;-----------------------------------------------
;---------------------------------
;--------------- page 3-----------------------
;-----------------------------

page3 proc
     mov ax, 0013h
    int 10h
  call logo
mov [color],03h
call Hs
mov [color],06h
call arrow_1
mov [color],03h
 call logo2 


ret
page3 endp

;-------------------------------------------

; instruction ----------------- page
;-----------------------------------------------
instructions proc
mov ax,13h
int 10h

mov ax,13h
int 10h
mov [X],20h            
mov [Y], 10h            
mov [PixelCount],11   
mov [color],03h
mov [sizes],16
call logo
mov cx,14
call newlines
mov cx,13
call pspaces
mov dl,offset instructionMsg
mov ah,9
int 21h
mov cx,1
call newlines
mov cx,8
call pspaces
mov dl,offset m1
mov ah,9
int 21h
mov cx,1
call newlines
mov cx,8
call pspaces
 mov dl,offset m2
mov ah,9
int 21h 
mov cx,3
call newlines
mov dh,0

        inputs1: 
        mov ah, 00h     ; Function 00h of interrupt 16h waits for a key press
        int 16h      ; BIOS interrupt for keyboard input

        cmp ah,01h 
        je esc_button
        jmp inputs1
        esc_button:
        dec [page_no]

        ret
        instructions endp


;-----------------------------------------------------
; ------------------------------- page 4
;--------------------------------------------------------- 
page4 proc
 call gm1_level1
ret
page4 endp



;-----------------------------------------------------
;    page 5
;--------------------------------------------------------- 
page5 proc
    call gm2_level1
ret
page5 endp

;-------------------------------------
page6 proc
mov [duck_pos_x],185
mov [duck_pos_y],40

moving_Duck2:
 mov ax,[duck_pos_x]
 cmp ax,-40
jge sum
mov [duck_pos_x],285
sum:
 call print_duck2
  dec [duck_pos_x]
  call print_duck2_2
 dec [duck_pos_x]
   call print_duck2_1
   dec [duck_pos_x]
  call print_duck2_2
 dec [duck_pos_x]
jmp moving_Duck2 


ret
page6  endp

;------------------------------------------

;-----------------------------------------------------
;    logo function
;--------------------------------------------------------- 
logo proc
 
     ; For inner D
    mov [color],03h
    mov [x], 20h 
    mov [y],10h 
    mov [PixelCount],11
    mov [sizes], 16
 call draw_rows

    ; For inner D
    mov [color],00h
    mov [x], 25h 
    mov [y],12h 
    mov [PixelCount],3 
    mov [sizes], 4
 call draw_rows
 ; for  U
    call draw_rows
    mov [color],03h 
    mov [x], 30h 
    mov [y],10h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows
  ; for inner U
  mov [color],00h
    mov [x], 34h 
    mov [y],10h 
    mov [PixelCount],4 
    mov [sizes], 8
 call draw_rows
 ;for  c
    mov [color],03h 
    mov [x], 40h 
    mov [y],10h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows
  ; for inner c
     mov [color],00h 
    mov [x], 44h 
    mov [y],12h
    mov [PixelCount],7
    mov [sizes],6
     call draw_rows
    ; for k
      mov [color],03h 
    mov [x], 50h 
    mov [y],10h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows
     ;
     mov [color],00h 
    mov [x], 54h 
    mov [y],10h
    mov [PixelCount],6
    mov [sizes],2
     call draw_rows
     ;
      mov [color],00h 
    mov [x], 54h 
    mov [y],16h
    mov [PixelCount],7
    mov [sizes],1
     call draw_rows

    call draw_rows

    ; for lines
      mov [color],04h 
    mov [x], 20h 
    mov [y],26h
    mov [PixelCount],126
    mov [sizes],2
     call draw_rows
   ; for s
     mov [color],03h 
    mov [x], 60h 
    mov [y],30h
    mov [PixelCount],11
    mov [sizes],16
      call draw_rows
  ; for inner s
  mov [color],00h 
    mov [x], 62h 
    mov [y],32h
    mov [PixelCount],9
    mov [sizes],5
      call draw_rows
      ; for 2nd inner s
      mov [color],00h 
    mov [x], 60h 
    mov [y],39h
    mov [PixelCount],9
    mov [sizes],5
      call draw_rows
   ; for H
      mov [color],03h 
    mov [x], 73h 
    mov [y],30h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows
     ;
     mov [color],00h 
    mov [x], 76h 
    mov [y],30h
    mov [PixelCount],5
    mov [sizes],7
     call draw_rows
     ;
      mov [color],00h 
    mov [x], 76h 
    mov [y],39h
    mov [PixelCount],5
    mov [sizes],7
     call draw_rows  
    ;  for o
     mov [color],03h 
    mov [x], 85h 
    mov [y],30h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows  
 ; for inner o now
 mov [color],00h 
    mov [x], 88h 
    mov [y],32h
    mov [PixelCount],6
    mov [sizes],12
     call draw_rows  
     ;
  ;  for o
     mov [color],03h 
    mov [x], 95h 
    mov [y],30h
    mov [PixelCount],11
    mov [sizes],16
     call draw_rows  
 ; for inner o now
 mov [color],00h 
    mov [x], 98h 
    mov [y],32h
    mov [PixelCount],6
    mov [sizes],12
     call draw_rows  
     ret
     logo endp 


;------
;-----------------

;--------------------------- logo 2 functions

;------
;------------------
game_print proc 

  ; for G
    mov [x], 60h 
    mov [y],62h
    mov [PixelCount],3
    mov [sizes],17 
     call draw_rows 

    

     mov [x], 60h 
    mov [y],62h
    mov [PixelCount],17
    mov [sizes],3
     call draw_rows 

      mov [x], 60h 
    mov [y],73h
    mov [PixelCount],19
    mov [sizes],3
     call draw_rows 

      
      mov [x], 70h 
    mov [y],69h
    mov [PixelCount],3
    mov [sizes],10
     call draw_rows 

      mov [x], 67h 
    mov [y],68h
    mov [PixelCount],12 
    mov [sizes],3
     call draw_rows 
   
  ;  for A   
      mov [x], 78h 
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 78h 
    mov [y],63h
    mov [PixelCount],12
    mov [sizes],3
     call draw_rows 

       mov [x],83h  
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

      mov [x],78h  
    mov [y],70h 
    mov [PixelCount],12
    mov [sizes],3
     call draw_rows 

     mov [x],78h  
    mov [y],70h 
    mov [PixelCount],12
    mov [sizes],3
     call draw_rows 

; for E
        mov [x],90h   
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 90h 
    mov [y],63h
    mov [PixelCount],33
    mov [sizes],3
     call draw_rows 

      mov [x],176
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x],161
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 
  ; for E
  mov [x],190 
    mov [y],63h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 190
    mov [y],63h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows
 
    mov [x], 190
    mov [y],76h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows

      mov [x], 190
    mov [y], 69h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows

     mov [x], 235
    mov [y], 64h
    mov [PixelCount],3
    mov [sizes],20
     call draw_rows
 
   ret
 
  game_print endp

  game_print2 proc
    ; for G
    mov [x], 60h 
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],17 
     call draw_rows 

      mov [x], 60h 
    mov [y],80h
    mov [PixelCount],17
    mov [sizes],3
     call draw_rows 

     mov [x], 60h 
    mov [y], 90h
    mov [PixelCount],19
    mov [sizes],3
     call draw_rows 

      
      mov [x], 70h 
    mov [y],  87h
    mov [PixelCount],3
    mov [sizes],10
     call draw_rows 

      mov [x], 67h 
    mov [y],86h  
    mov [PixelCount],12 
    mov [sizes],3
     call draw_rows 
   
  ;  for A   
      mov [x], 78h 
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 78h 
    mov [y], 80h
    mov [PixelCount],12
    mov [sizes],3
     call draw_rows 

       mov [x],83h  
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

      mov [x],78h  
    mov [y],89h 
    mov [PixelCount],12
    mov [sizes],3
     call draw_rows 

; for E
        mov [x],90h   
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 90h 
    mov [y],80h
    mov [PixelCount],33
    mov [sizes],3
     call draw_rows 

      mov [x],176
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x],161
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 
  ; for E
  mov [x],190 
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],21
     call draw_rows 

     mov [x], 190
    mov [y],80h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows
 
    mov [x], 190
    mov [y],86h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows

      mov [x], 190
    mov [y], 95h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows
; for 2
  mov [x],246
    mov [y],80h
    mov [PixelCount],3
    mov [sizes],12
     call draw_rows 

     mov [x], 230
    mov [y],80h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows
 
    mov [x], 230
    mov [y],89h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows

 mov [x],230
    mov [y],89h
    mov [PixelCount],3
    mov [sizes],12
     call draw_rows 


      mov [x],230
    mov [y], 95h
    mov [PixelCount],16
    mov [sizes],3
     call draw_rows



 
   ret


  game_print2 endp

  down_pressed1 proc
     mov [color],003h
     mov ah,0
     mov al,[count22]
    cmp al,0
    je rm_f1
    call game_print2
    mov [color],00h
    call arrow_2
    jmp real_fpr
     rm_f1:
     call game_print
     mov [color],00h
    call arrow_1
     jmp real_fpr

     real_fpr:
     mov [color],04h
     mov ah,0
     mov al,[count22]
     cmp al,0
     jne rm_f2
     call game_print2
     mov [color],06h
    call arrow_2
     mov [count22],1
     jmp nikl1
     rm_f2:
      call game_print
      mov [color],06h
    call arrow_1
     mov [count22],0
     nikl1:
     ret
     down_pressed1 endp

 
   
   logo2 proc
    call game_print2
    mov [color],04h
    call game_print
    inputs_1:
        mov ah, 01h         ; Function 01h of interrupt 16h checks if a key is available
    int 16h             ; BIOS interrupt for keyboard input
    mov ah, 00h     ; Function 00h of interrupt 16h waits for a key press
    int 16h         ; BIOS interrupt for keyboard input

    cmp ah,01h
     je exit___a
    
    
    cmp ah, 48h     ; Compare with ASCII code for up arrow
    je up_pressed11
    
    cmp ah, 50h     ; Compare with ASCII code for down arrow
    je down_pressed11

    cmp ah,1ch 
    je enter_pressed1

     up_pressed11:
     call  down_pressed1
     jmp inputs_1
down_pressed11:
      call down_pressed1
     jmp inputs_1

    enter_pressed1:
    mov bh,0
     mov bl,[count22]

     cmp bl,0
     jne chal_1
     mov [page_no],4
      jmp end_all
      chal_1:
      mov [page_no],5
      jmp end_all
       exit___a:
     
     mov [page_no],1
      end_all:
      
      ret
  logo2 endp
    
     arrow_1 proc
     mov [x], 45h 
    mov [y],67h
    mov [PixelCount],10
    mov [sizes],10 
     call draw_rows 
     ret
     arrow_1 endp

      arrow_2 proc
     mov [x], 45h 
    mov [y],85h
    mov [PixelCount],10
    mov [sizes],10 
     call draw_rows 
     ret
     arrow_2 endp 

Hs proc
   ;-------------------------
   ;-------------------------
   mov [color],04h
   mov cx,22
   call newlines
   mov cx,11
   call pspaces
   mov dx,0
   mov dl,[top_score]
   add dl,'0'
   mov ah,02h
   int 21h
  mov [x], 27h 
    mov [y],170
    mov [PixelCount],3
    mov [sizes],18
    call draw_rows 

   mov [x], 32h 
    mov [y],170
    mov [PixelCount],3
    mov [sizes],18
    call draw_rows 

    mov [x], 27h 
    mov [y],176
    mov [PixelCount],10
    mov [sizes],3 
    call draw_rows 
;----------------------------
;--------------   for s
 mov [x], 39h 
    mov [y],170
    mov [PixelCount],3
    mov [sizes],10
    call draw_rows 

   mov [x], 39h 
    mov [y],170
    mov [PixelCount],13
    mov [sizes],3
    call draw_rows 

    mov [x], 39h 
    mov [y],178
    mov [PixelCount],13
    mov [sizes],3
    call draw_rows 

     mov [x], 39h 
    mov [y],186
    mov [PixelCount],13
    mov [sizes],3
    call draw_rows 

      mov [x], 44h 
    mov [y],178
    mov [PixelCount],3
    mov [sizes],10
    call draw_rows 

     mov [x],75
    mov [y],182
    mov [PixelCount],5
    mov [sizes],5
    call draw_rows 

    mov [x],75
    mov [y],174
    mov [PixelCount],5
    mov [sizes],5
    call draw_rows 

   
ret
Hs endp

;--------------------------------------------------------------

;----------------------------  DUCK FUNCTIONS
;--------------------------------------------------------------
 
;-------------------------
print_duck proc
 
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter6:
drawInner6:
mov ah,0ch
mov al, duck1[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner6

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter6

ret
print_duck endp
 
;-------------------------------------------
 print_duck_1 proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter1:
drawInner1:
mov ah,0ch
mov al, duck1_2[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner1

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter1

ret
print_duck_1 endp
;-----------------------------------------
  print_duck_2 proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter1_1:
drawInner1_1:
mov ah,0ch
mov al, duck1_3[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner1_1

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter1_1

ret
print_duck_2 endp
;----------------------------------------------------------------------------------------------
;------------------printing duck 2
;---------------------------------------------------------------------------------------------
  print_duck2 proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter2:
drawInner2:
mov ah,0ch
mov al, duck2[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner2

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2

ret
print_duck2 endp

;-------------------------------------------------
 print_duck2_1 proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter2_1:
drawInner2_1:
mov ah,0ch
mov al, duck2_1[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner2_1

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_1

ret
print_duck2_1 endp

;------------------------------------
 print_duck2_2 proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter2_2:
drawInner2_2:
mov ah,0ch
mov al, duck2_2[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 34 ;inner loop is of length 9
jl drawInner2_2

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_2

ret
print_duck2_2 endp

;------------------------------------------------------------------------
;-------------------------------- tree display function
;-----------------------------------------------------------------------
print_tree proc
mov width_counter1,0
mov width_counter2,0
mov dx,40
mov cx,0
mov si,0
drawouter_tree:
drawInner_tree:
mov ah,0ch
mov al, tree[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 50 ;inner loop is of length 9
jl drawInner_tree

;outer loop

mov width_counter2,0

mov cx,40

inc dx

inc width_counter1

cmp width_counter1,89 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter_tree

ret
print_tree endp

;---------------------------------------------------------

;--------------------------     print  tree  2
;---------------------------------------------------------
print_tree2 proc
mov width_counter1,0
mov width_counter2,0
mov dx,90
mov cx,0
mov si,0
drawouter_tree1:
drawInner_tree1:
mov ah,0ch
mov al, tree2[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2, 31 ;inner loop is of length 9
jl drawInner_tree1

;outer loop

mov width_counter2,0

mov cx,110

inc dx

inc width_counter1

cmp width_counter1,33 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter_tree1

ret
print_tree2 endp
 checking proc
 mov ax,0
 mov bx,0
mov ax,[duck_pos_x]
mov bx,[duck_pos_y]
add ax,ax
cmp ax,[xcoor]
jle next_1

jmp exit_loops
next_1:
add ax,68
cmp ax,[xcoor]
jge next_2
jmp exit_loops

next_2:
sub bx,2
cmp bx,[ycoor]
jle next_3
jmp exit_loops
next_3:
add bx,30
cmp bx,[ycoor]
jge next_4
jmp exit_loops
next_4:
mov [count_ducks],1
exit_loops:
 ret
checking endp
falling_ducks proc
vloop:
 mov ax,[duck_pos_y]
 cmp ax,100
 jle  loi
 mov [duck_pos_y],0
 jmp exitls
 loi:
 call print_fall
 inc [duck_pos_y]
 jmp vloop 
 exitls:
 ret
falling_ducks endp 

print_fall proc
mov width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter12:
drawInner12:
mov ah,0ch
mov al, duck_fall[si]
int 10h
inc cx
inc width_counter2

inc si

cmp width_counter2,33 ;inner loop is of length 9
jl drawInner12

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc width_counter1

cmp width_counter1,33 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter12
ret
print_fall endp
;---------------------------
 
;--------------------------------------------------------------

   ;  GAME  1                     LEVELS
;----------------------------------------------------------------------

;----------------------------------  L1 -------------------------------
gm1_level1 proc
mov [level_countss],0
mov ax,13h
  int 10h
 mov [duck_pos_x],320
 mov [duck_pos_y],70

  mov cx,20
 call print_newlines
 mov cx,16
 call print_spaces
 mov dl, offset level1
 mov ah,9
 int 21h
 mov cx,2
 call print_newlines
 mov cx,15
 call print_spaces
 mov dx, offset sc
mov ah,9
int 21h
s1:
mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne cont

call checking
cmp [count_ducks],1
je samv
 
jmp cont
samv:
inc [level_countss]
cmp [level_countss],5
jng s222
mov [page_no],6
jmp level1_end
s222:
call gm1_ 
cont:
cmp [dk_random],0
   jne r11
  call for_duck1
  jmp s1

  r11:
   call for_duck2
   jmp s1 

level1_end:  
  ret
gm1_level1 endp
;----------------------------------------  L2 ----------------------------------------


;---------------------  L2 ------------------





gm1_ proc

call hitting
call falling_ducks
add [score],10
mov [count_ducks],0
mov ax,13
int 10h
 mov cx,20
 call print_newlines
 mov cx,16
 call print_spaces
 mov dl, offset level1
 mov ah,9
 int 21h
 mov cx,2
 call print_newlines
 mov cx,15
 call print_spaces

mov dx,offset sc
mov ah,9
int 21h
mov ax,score
call output1
 inc [dk_random]
 ;---------------  for random ducks
 cmp [dk_random],2
 jnge chk_
 mov [dk_random],0

 ;------------- chexk for duck 1 or 2 to set axis
 chk_:
cmp [dk_random],0
   jne r_0
  mov [duck_pos_y],40
  mov [duck_pos_x],0
  jmp efg
  r_0:
  mov [duck_pos_y],40
mov [duck_pos_x],285
 
efg:
ret
gm1_ endp
;--------------------------------     L2 level 2
;------------------------------------------------
gm1_level2 proc
mov [level_countss],0
mov ax,13h
  int 10h
 mov [duck_pos_x],320
 mov [duck_pos_y],70
  mov cx,20
 call print_newlines
 mov cx,16
 call print_spaces
 mov dl, offset level2
 mov ah,9
 int 21h
 mov cx,2
 call print_newlines
 mov cx,15
 call print_spaces
 mov dx, offset sc
mov ah,9
int 21h
s2:
mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne cont2

call checking
cmp [count_ducks],1
je samv2
 
jmp cont
samv2:
inc [level_countss]
cmp [level_countss],5
jng s2222
mov [page_no],07
jmp level1_end
s2222:
call gm1_ 
cont2:
cmp [dk_random],0
   jne r22
  call for_duck1
  jmp s2

  r22:
   call for_duck2
   jmp s1 

level2_end:  
  ret
gm1_level2 endp

; --------------------------- L3


 ;-----------------------------  L3-----------------------------------

;------------------------------------------------------

gm1_level3 proc
mov [level_countss],0
mov ax,13h
  int 10h
 mov [duck_pos_x],320
 mov [duck_pos_y],70
 mov dx, offset sc
mov ah,9
int 21h
s3:
mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne cont3

call checking
cmp [count_ducks],1
je samv3
 
jmp cont3
samv3:
inc [level_countss]
cmp [level_countss],5
jng s22222
mov [page_no],8
jmp level3_end
s22222:
call gm1_ 
cont3:
cmp [dk_random],0
   jne r33
  call for_duck1
  jmp s3

  r33:
   call for_duck2
   jmp s3 
level3_end:  
  ret
gm1_level3 endp

;--------------------------------------

;------------- DISPLAYING RANDOM
;-------------                 FOR 1 & 2
;-----------------------------------

for_duck1 proc
;-------------- not pressed click
cmp [duck_pos_x],320
jne cny
mov [duck_pos_x],0
cny:
 ;----------- which image to display
cmp [type_duck],2
jl type1
mov [type_duck],0
type1:
cmp [type_duck],0
jne type2
call print_duck
add [duck_pos_x],1
inc [type_duck]                     
   jmp ret8
type2:
cmp [type_duck],1
jne type3
call print_duck_2
add [duck_pos_x],1  
inc [type_duck]                  
   jmp ret8
type3:
call print_duck_2
add [duck_pos_x],1
inc [type_duck] 

ret8:
ret
for_duck1 endp

;---------------------------------------
;----------------for duck 2
for_duck2 proc
;-------------- not pressed click
cmp [duck_pos_x],0
jne cny1
mov [duck_pos_x],320
cny1:
 ;----------- which image to display
cmp [type_duck],2
jl type2_1
mov [type_duck],0
type2_1:
cmp [type_duck],0
jne type2_2
call print_duck2
dec [duck_pos_x]
inc [type_duck]                     
   jmp ret7
type2_2:
cmp [type_duck],1
jne type2_3
call print_duck2_1
dec [duck_pos_x]
inc [type_duck]                  
   jmp ret7
type2_3:
call print_duck2_2
dec [duck_pos_x]
inc [type_duck] 

ret7:
ret
for_duck2 endp

;-----------------------------------
;---------------  HItting ducks
;---------------------------------

;---------------------------
hitting_duck proc
mov  width_counter1,0
mov width_counter2,0
mov dx,[duck_pos_y]
mov cx,0
mov si,0
drawOuter_hit:
drawInner_hit:
mov ah,0ch
mov al, hit_duck[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp width_counter2,33 ;inner loop is of length 9
jl drawInner_hit

;outer loop

mov width_counter2,0

mov cx,[duck_pos_x]

inc dx

inc  width_counter1

cmp  width_counter1,33 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter_hit
ret
hitting_duck endp
 
hitting proc
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
call hitting_duck
ret
hitting endp


output1 proc
mov count, 0
continuepushing:
mov DX, 0
mov BX, 10
div BX
push DX
inc count
cmp AX, 0
jne continuepushing
continuepopping:
pop DX
add DX, 48
mov AH, 02h
int 21h
dec count
cmp count,0
jne continuepopping
stoppopping:
mov DX, 10
mov AH, 02
int 21h
ret
output1 endp

;-------------------------------

;------------------------------

;-------------------------
;--------------- up counter
up proc
   mov [x], 150
    mov [y],30h
    mov [PixelCount],7
    mov [sizes],50
     call draw_rows

       mov [x],184
    mov [y],30h
    mov [PixelCount],7
    mov [sizes],50
     call draw_rows

      mov [x],150
    mov [y],97
    mov [PixelCount],41
    mov [sizes],7
     call draw_rows
    mov [x],196
    mov [y], 97
    mov [PixelCount],7
    mov [sizes],60
     call draw_rows
 
       mov [x],196
    mov [y], 97
    mov [PixelCount],35
    mov [sizes],7
     call draw_rows  

      mov [x],196
    mov [y], 97
    mov [PixelCount],35
    mov [sizes],7
     call draw_rows  

     mov [x],196
    mov [y], 97
    mov [PixelCount],35
    mov [sizes],7
     call draw_rows  
      
      mov [x],228
    mov [y], 97
    mov [PixelCount],7
    mov [sizes],25
     call draw_rows  
   
     mov [x],200
    mov [y], 120
    mov [PixelCount],35
    mov [sizes],7
     call draw_rows 
     ret
 up endp
 
up_control proc
up_loop:
cmp [up_counter],7
jge up_end
mov color,03h
call up
mov color,03h
call up
mov color,03h
call up
mov color,03h
call up
mov color,04h
call up
mov color,04h
call up
mov color,04h
call up
mov color,04h
call up
inc [up_counter]
jmp up_loop
up_end:
ret
up_control endp 


;-------------------------------  GAME 2


;-------------------------------       Game2


;------------------------------ GAME 2


gm2_level1 proc
mov [level_countss],0
mov ax,13h
  int 10h
 mov [duck_pos_x],320
 mov [duck_pos_y],70
 mov dx, offset sc
mov ah,9
int 21h
s1u11:
mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne cont66

call checking8
cmp [count_ducks],1
je samv55
call checking1
cmp [count_ducks_g2],1
je samv55
jmp cont66
samv55:
inc [level_countss]
cmp [level_countss],20
jng s222221
mov [page_no],6
jmp level1_end7
s222221:
call gm2_ 
cont66:
cmp [dk_random],0
   jne r11111
  call for_duck1
  call for_duck2_g2
  jne s1u11
    jmp s1u11
     
  r11111:
   call for_duck2
   call for_duck2_g2
   jmp s1u11 

level1_end7:  
  ret
gm2_level1 endp

;--------------------------------  GAME 2

gm2_ proc
cmp [count_ducks],1
jne ht_g2
call hitting_g227 
call falling_ducks_g22 
inc [dk_random]
 ;---------------  for random ducks
 cmp [dk_random],2
 jnge chk_g2
 mov [dk_random],0

 ;------------- chexk for duck 1 or 2 to set axis
 chk_g2:
cmp [dk_random],0
   jne r_0_g2
  mov [duck_pos_y],40
  mov [duck_pos_x],0
  jmp ht1_g2
  r_0_g2:
  mov [duck_pos_y],40
mov [duck_pos_x],310
jmp ht1_g2
ht_g2:
 call hitting_g2
 call falling_ducks22 
ht1_g2:
add [score],10
mov [count_ducks],0
mov [count_ducks_g2],0
mov ax,13
int 10h

mov dx,offset sc
mov ah,9
int 21h
mov ax,score
call output1
  
 
ret
gm2_ endp

 

;-------------------------------
;-----------------------   for x2


;-------------------------- for x2 
;------------------------------------------------
;-------------------------------------------
 ;-------------------------------------------

 print_duck_g2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter6_g2:
drawInner6_g2:
mov ah,0ch
mov al, duck1[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner6_g2

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter6_g2

ret
print_duck_g2 endp
 print_duck_g2_1 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter_g2_1:
drawInner_g2_1:
mov ah,0ch
mov al, duck1_2[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner_g2_1

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter_g2_1

ret

print_duck_g2_1 endp
;-----------------------------------------
  print_duck_g2_2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter1_g2_1:
drawInner1_g2_1:
mov ah,0ch
mov al, duck1_3[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner1_g2_1

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter1_g2_1

ret
print_duck_g2_2 endp
;----------------------------------------------------------------------------------------------
;------------------printing duck 2
;---------------------------------------------------------------------------------------------
print_duck2_g2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter2_g2:
drawInner2_g2:
mov ah,0ch
mov al, duck2[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner2_g2

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_g2

ret
print_duck2_g2 endp

;-------------------------------------------------
print_duck2_g2_1 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter2_g2_1:
drawInner2_g2_1:
mov ah,0ch
mov al, duck2_1[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner2_g2_1

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_g2_1

ret
print_duck2_g2_1 endp

;------------------------------------
 print_duck2_g2_2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter2_g2_2:
drawInner2_g2_2:
mov ah,0ch
mov al, duck2_2[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 34 ;inner loop is of length 9
jl drawInner2_g2_2

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,32 ;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_g2_2

ret
print_duck2_g2_2 endp


;-----------------------------

hitting_duck_g2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter2_g2_2hit:
drawInner2_g2_2hit:
mov ah,0ch
mov al, hit_Duck[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 33 ;inner loop is of length 9
jl drawInner2_g2_2hit

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,33;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_g2_2hit

ret
hitting_duck_g2 endp


falling_ducks_g2 proc
mov  width_counter1 ,0
mov  width_counter2,0
mov dx,[duck_pos_y1]
mov cx,0
mov si,0
drawOuter2_g2_2fall:
drawInner2_g2_2fall:
mov ah,0ch
mov al, duck_fall[si]
int 10h
inc cx
inc  width_counter2

inc si

cmp  width_counter2, 33 ;inner loop is of length 9
jl drawInner2_g2_2fall

;outer loop

mov  width_counter2,0

mov cx,[duck_pos_x1]

inc dx

inc  width_counter1 

cmp  width_counter1 ,33;outer loop is of length 20, this is because our image's dimensions were 9x20
jl drawOuter2_g2_2fall
ret
falling_ducks_g2 endp

falling_ducks22 proc
vloop2:

mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne e_g22
call checking8
cmp [count_ducks],1
jne e_g22
 jmp exitls2
e_g22:
 cmp [duck_pos_y1],100
 jle  loi22
 mov [duck_pos_y1],0
 jmp exitls2
 loi22:
 call falling_ducks_g2 
  inc [duck_pos_y1]
 cmp [dk_random],2
 jnge chk_g23333
 mov [dk_random],0

 chk_g23333:
  cmp [dk_random],0
   jne snio_22 
call  for_duck1
jmp snio2_22
snio_22: 
call for_duck2
snio2_22:
 jmp vloop2 
 exitls2:
 ret
falling_ducks22 endp


 checking8 proc
 mov ax,0
 mov bx,0
mov ax,[duck_pos_x]
mov bx,[duck_pos_y]
add ax,ax
cmp ax,[xcoor]
jle next_1r

jmp exit_loopsr
next_1r:
add ax,68
cmp ax,[xcoor]
jge next_2r
jmp exit_loopsr

next_2r:
sub bx,2
cmp bx,[ycoor]
jle next_3r
jmp exit_loopsr
next_3r:
add bx,30
cmp bx,[ycoor]
jge next_4r
jmp exit_loopsr
next_4r:
mov [count_ducks],1
exit_loopsr:
 ret
checking8 endp

 checking1 proc
 mov ax,0
 mov bx,0
mov ax,[duck_pos_x1]
mov bx,[duck_pos_y1]
add ax,ax
cmp ax,[xcoor]
jle next_1_g2

jmp exit_loops_g2
next_1_g2:
add ax,68
cmp ax,[xcoor]
jge next_2_g2
jmp exit_loops_g2

next_2_g2:
sub bx,2
cmp bx,[ycoor]
jle next_3_g2
jmp exit_loops_g2
next_3_g2:
add bx,30
cmp bx,[ycoor]
jge next_4_g2
jmp exit_loops_g2
next_4_g2:
mov [count_ducks_g2],1
exit_loops_g2:
 ret
checking1 endp

for_duck2_g2 proc
;-------------- not pressed click
cmp [duck_pos_x1],0
jne cny1_g22
mov [duck_pos_x1],320
cny1_g22:
 ;----------- which image to display
cmp [type_duck_g2],2
jl type2_1_g22
mov [type_duck_g2],0
type2_1_g22:
cmp [type_duck_g2],0
jne type2_2_g2
call print_duck2_g2
dec [duck_pos_x1]
inc [type_duck_g2]                     
   jmp ret7_g2
type2_2_g2:
cmp [type_duck_g2],1
jne type2_3_g2
call print_duck2_g2_1
dec [duck_pos_x1]
inc [type_duck_g2]                  
   jmp ret7_g2
type2_3_g2:
call print_duck2_g2_2
dec [duck_pos_x1]
inc [type_duck_g2] 

ret7_g2:
ret
for_duck2_g2  endp


hitting_g2 proc
nmpkkkk:

 cmp [count],20
  je rt_0000
call hitting_duck_g2
cmp [dk_random],0
jne snio
call  for_duck1
jmp snio2
snio: 
call  for_duck2 
snio2:
inc [count]

jmp nmpkkkk 
rt_0000:
mov [count],0 
ret
hitting_g2 endp

falling_ducks_g22 proc
vloopop:
mov ax, 5
mov bx, 0
int 33h
mov xcoor, cx 
mov ycoor,dx
;----------------- when click is pressed
cmp ax, 1
jne e_g2op
call checking1
cmp [count_ducks_g2],1
jne e_g2op
 jmp exitlsop
e_g2op:
 cmp [duck_pos_y],100
 jle  loiop
 mov [duck_pos_y],0
 jmp exitlsop
 loiop:
 call print_fall
 inc [duck_pos_y]
 call for_duck2_g2
 jmp vloopop 
 exitlsop:
 ret
falling_ducks_g22 endp

hitting_g227 proc
nmpkkk21u:

 cmp [count],20
  je rt_00001
call hitting_duck
call  for_duck2_g2
 
inc [count]

jmp nmpkkk21u 
rt_00001:
mov [count],0
   ret
hitting_g227 endp
end main
  