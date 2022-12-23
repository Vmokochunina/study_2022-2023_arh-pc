%include 'in_out.asm'
SECTION .data
filename db 'name.txt', 0h
msg db 'Как Вас зовут?: ', 0h
imia DB 'Меня зовут ',0
SECTION .bss
contents resb 255 ; переменная для вводимой строки
SECTION .text
global _start
_start:
; --- Печать сообщения `msg`
mov eax,msg
call sprintLF
; ---- Запись введеной с клавиатуры строки в `contents`
mov ecx, contents
mov edx, 255
call sread
; --- Открытие существующего файла (`sys_open`)
mov ecx, 0777o ; открываем для записи 
mov ebx, filename
mov eax, 8
int 80h
; --- Запись дескриптора файла в `esi`
mov esi, eax
; --- Расчет длины введенной строки
mov eax, imia
call slen
mov edx,eax
mov ecx,imia
mov ebx,esi
mov eax,4
int 80h
mov eax, contents ; в `eax` запишется количество
call slen ; введенных байтов
; --- Записываем в файл `contents` (`sys_write`)
mov edx, eax
mov ecx, contents
mov ebx, esi
mov eax, 4
int 80h
; --- Закрываем файл (`sys_close`)
mov ebx, esi
mov eax, 6
int 80h
call quit