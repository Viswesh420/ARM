     AREA     Largest, CODE, READONLY
	 export __main	 
	 ENTRY 
__main  function
	          MOV R0 , #10   ;first number
	          MOV R1 , #30    ;second number
              MOV R2 , #20 	  ;third number  			  
              CMP R0 , R1
              IT HI
              MOVHI R1 , R0
			  CMP R1 , R2
			  ITE HI 
			  MOVHI R3 , R1  ; R3 stores the largest number
			  MOVLS R3 , R2 
STOP		      B STOP  ; stop program
        endfunc
      end
	