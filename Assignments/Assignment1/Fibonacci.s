     AREA     Fibonacci, CODE, READONLY
	 export __main	 
	 ENTRY 
__main  function
	          MOV r0 , #0  ;  1st number
	          MOV r1 , #1    ; 2nd number 
              MOV r3 , #14	   ;  nth number in the Fibonacci series
              SUB r4 , r3 ,#2
			  MOV r5 , #0	 ;  		  
              CMP r4 , r5
              IT EQ 
              BEQ STOP				  
			  
LOOP              ADD r2 , r1 , r0  ;R2 stores final value of nth number
                  MOV r0 ,r1
                  MOV r1 ,r2
				  ADD r5,r5, #1
                  CMP r4 ,r5
                  BNE LOOP					  
STOP		      B STOP  ; stop program
        endfunc
      end

	