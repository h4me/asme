          global    main
          extern    puts
          extern printf


         section   .data
message:
          db "Hola, mundo", 0 
format:   db "%d",0  


          section   .text
main:     
          mov     rax, 33;
          mov     rdi, format             ; set 1st parameter (format)
          mov     rsi, rax                ; set 2nd parameter (current_number)
          xor     rax, rax                ; because printf is varargs

        ; Stack is already aligned because we pushed three 8 byte registers
          call    printf 

                                  ; This is called by the C library startup code
          mov       rdi, message            ; First integer (or pointer) argument in rdi
          call      puts                    ; puts(message)
          ret                               ; Return from main back into C library wrapper
