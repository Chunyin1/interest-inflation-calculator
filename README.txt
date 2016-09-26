Just paste calc.rb into any ruby compiler and replace the following:

`$monthly = 200 					#How much you're planning to save.	-	-	-	-	(Monthly)
	$rates = 1.02					#Rate of returns on savings. -	-	-	-	-	-	(Annual )
	$inflation = 1.02				#Rate of inflation. 	-	-	-	-	-	-	(Annual )
	$years_waiting_before_withdrawing = 20		#How many years you'd like to wait before withdrawing your money.
	$years_saving_monthly = 10			#How many years would you like to spend deposit money monthly.

  #Additional controls
	$bank_bonus = 1					#If the bank matches your money/grants bonus for early deposits. 	(Annual )
`

with whatever you want.
If you wish to check a sum of money's worth in a few years time, simply set $monthly to sum/12 and $years_saving_monthly to 1.
