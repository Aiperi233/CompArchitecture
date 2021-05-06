Begin:		CLR P0.3			
			CALL IDCode0		
			SetB P0.3			
			JB F0,Done  		
						
			;Scan Row2
			CLR P0.2			
			CALL IDCode1		
			SetB P0.2			
			JB F0,Done		 	
			;Scan Row1
			CLR P0.1			
			CALL IDCode2		
			SetB P0.1			
			JB F0,Done			 

			;Scan Row0			
			CLR P0.0			
			CALL IDCode3		
			SetB P0.0		
			JB F0,Done			
														
			JMP Begin		
							
Done:		JMP $				

			
IDCode0:	JNB P0.4, KeyCode03
			JNB P0.5, KeyCode13	
			JNB P0.6, KeyCode23	
			RET					

KeyCode03:	SETB F0			
			Mov R7,#0B0h	
			Mov P1,R7		
			RET				

KeyCode13:	SETB F0			
			Mov R7,#0A4h	
			Mov P1,R7		
			RET				

KeyCode23:	SETB F0			
			Mov R7,#0F9h	
			Mov P1,R7		
			RET				

IDCode1:	JNB P0.4, KeyCode02
			JNB P0.5, KeyCode12	
			JNB P0.6, KeyCode22
			RET					

KeyCode02:	SETB F0			
			Mov R7,#82h		
			Mov P1,R7		
			RET				

KeyCode12:	SETB F0			
			Mov R7,#92h	
			Mov P1,R7		
			RET				

KeyCode22:	SETB F0			
			Mov R7,#99h		
			Mov P1,R7		
			RET				

IDCode2:	JNB P0.4, KeyCode01
			JNB P0.5, KeyCode11	
			JNB P0.6, KeyCode21	
			RET					

KeyCode01:	SETB F0			
			Mov R7,#90h		
			Mov P1,R7		
			RET				

KeyCode11:	SETB F0			
			Mov R7,#80h		
			Mov P1,R7		
			RET				

KeyCode21:	SETB F0			
			Mov R7,#0F8h	
			Mov P1,R7		
			RET				

IDCode3:	JNB P0.4, KeyCode00	
			JNB P0.5, KeyCode10	
			JNB P0.6, KeyCode20	
			RET					

KeyCode00:	SETB F0			
			Mov R7,#0BFh	
			Mov P1,R7		
			RET				

KeyCode10:	SETB F0			
			Mov R7,#0C0h	
			Mov P1,R7	
			RET				

KeyCode20:	SETB F0			
			Mov R7,#0BFh	 
			Mov P1,R7		
			RET				
		  
			End