.model small
.code
org 100h
start:
      jmp mulai
nama db 13,10, "Nama Pembeli: $"
alamat db 13,10,"masukan alamat anda : $"    
nohp db 13,10,"masukan no hp  anda : $" 

tampung_nama db 30,?,30 dup(?) 
tampung_alamat db 40,?,40 dup(?)
tampung_nohp db 50,?,50 dup(?)

daftar db 13,10,'|--------------------------------------------------|'
       db 13,10,'|-------------------daftar sepatu------------------|'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'|No |    nama sepatu      |         harga          |'
       db 13,10,'|--------------------------------------------------|'   
       db 13,10,'| 1 |    air jordan       |       Rp24.000.000     |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 2 |    adidas           |       Rp12.000.000     |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 3 |    compas           |       Rp500.000        |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 4 |    vantela          |       Rp150.000        |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 5 |    aerostreet       |       Rp150.000        |'
       db 13,10,'|--------------------------------------------------|'
       db 13,10,'| 6 |    patrobas         |       Rp150.000        |'
       db 13,10,'|--------------------------------------------------|','$'
       
daftar2 db 13,10,'|--------------------------------------------------|'
        db 13,10,'|-------------------size chart---------------------|'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'|No |  size sepatu                                 |'
        db 13,10,'|--------------------------------------------------|'   
        db 13,10,'| 1 |  size 39                                     |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 2 |  size 40                                     |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 3 |  size 41                                     |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 4 |  size 42                                     |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 5 |  size 43                                     |'
        db 13,10,'|--------------------------------------------------|'
        db 13,10,'| 6 |  size 44                                     |'
        db 13,10,'|--------------------------------------------------|','$'
        
error    db 13,10,'NOMOR YANG ANDA MASUKAN SALAH $'
pilih    db 13,10,'Silahkan Pilih sepatu Yang Anda Ingin Beli: $'
pilih2   db 13,10,'Silahkan Pilih size Yang Anda Ingin Beli: $'

mulai:
    
    mov ah,09h
    lea dx,nama
    int 21h
    mov ah,0ah
    lea dx,tampung_nama
    int 21h       
    
    mov ah,09h
    lea dx,alamat
    int 21h
    mov ah,0ah
    lea dx,tampung_alamat
    int 21h 
    
    mov ah,09h
    lea dx,nohp
    int 21h
    mov ah,0ah
    lea dx,tampung_nohp
    int 21h 
     
    mov ah,09h
    mov dx,offset daftar
    int 21h
     
    jmp proses
   
     
      
error_nsg: 
      mov ah,09h
      mov dx,offset error
      int 21h
      int 20h

proses: 
      mov ah,09h
      mov dx,offset pilih
      int 21h
      
      mov ah,1
      int 21h
     
      mov bl,al
      
      cmp bl,'1'
      je hasil1
      
      
      cmp bl,'2'
      je hasil2 
      
      
      cmp bl,'3'
      je hasil3 
      
      
      cmp bl,'4'
      je hasil4 
      
      
      cmp bl,'5'
      je hasil5 
      
      
      cmp bl,'6'
      je hasil6 
      jne error_nsg 
;--------------------------------------
      
proses2:

      mov ah,09h
      mov dx,offset daftar2
      int 21h
       
      mov ah,09h
      mov dx,offset pilih2
      int 21h
       
      mov ah,1
      int 21h
      mov bl,al
      
      
      cmp bl,'1'
      je hasil7 
      
      cmp bl,'2'
      je hasil8
      
      cmp bl,'3'
      je hasil9 
      
      cmp bl,'4'
      je hasil10 
      
      cmp bl,'5'
      je hasil11 
      
      cmp bl,'6'
      je hasil12
      
      jne error_nsg
;-------------------------------------

hasil1:
     mov ah,09h
     lea dx,teks1
     int 21h
     jmp proses2
     int 20h
hasil2:
     mov ah,09h
     lea dx,teks2
     int 21h
     jmp proses2
     int 20h
hasil3:
     mov ah,09h
     lea dx,teks3
     int 21h
     jmp proses2
     int 20h
hasil4:
     mov ah,09h
     lea dx,teks5
     int 21h 
     jmp proses2
     int 20h
hasil5:
     mov ah,09h
     lea dx,teks5
     int 21h    
     jmp proses2
     int 20h
hasil6:
     mov ah,09h
     lea dx,teks6
     int 21h    
     jmp proses2
     int 20h
hasil7:
     mov ah,09h
     lea dx,teks7
     int 21h
     int 20h
hasil8:
     mov ah,09h
     lea dx,teks8
     int 21h
     int 20h
hasil9:
     mov ah,09h
     lea dx,teks9
     int 21h
     int 20h
hasil10:
     mov ah,09h
     lea dx,teks10
     int 21h
     int 20h
hasil11:
     mov ah,09h
     lea dx,teks11
     int 21h
     int 20h
hasil12:
     mov ah,09h
     lea dx,teks12
     int 21h
     int 20h


;----------------------------------------------

teks1 db 13,10,'Anda memilih sepatu air jordan Rp24.000.000 $'
      

teks2 db 13,10,'Anda memilih sepatu adidas Rp12.000.000 $'
      
     
teks3 db 13,10,'Anda memilih sepatu compas Rp500.000 $'
      
      
teks4 db 13,10,'Anda memilih sepatu vantela Rp150.000 $'
      
      
teks5 db 13,10,'Anda memilih sepatu aerostreet Rp150.000 $'
     
      
teks6 db 13,10,'Anda memilih sepatu patrobas Rp150.000 $'
 
;-------------------------------------------------      
      
teks7 db 13,10,'Anda memilih size 39'
      db 13,10,'Terimakasih Telah Berbelanja $'
      
teks8 db 13,10,'Anda memilih size 40'
      db 13,10,'Terimakasih Telah Berbelanja $'
      
teks9 db 13,10,'Anda memilih size 41'
      db 13,10,'Terimakasih Telah Berbelanja $'
      
teks10 db 13,10,'Anda memilih size 42'
      db 13,10,'Terimakasih Telah Berbelanja $'
      
teks11 db 13,10,'Anda memilih size 43'
      db 13,10,'Terimakasih Telah Berbelanja $'
      
teks12 db 13,10,'Anda memilih size 44'
      db 13,10,'Terimakasih Telah Berbelanja $'
      

end start