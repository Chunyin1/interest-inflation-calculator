#User variables
  $initial = 0            #How much you start with
  $monthly = 200 					#How much you're planning to save.	-	-	-	-	(Monthly)
	$rates = 1.02				  	#Rate of returns on savings. -	-	-	-	-	-	(Annual )
	$inflation = 1.02				#Rate of inflation. 	-	-	-	-	-	-	(Annual )
	$years_waiting_before_withdrawing = 20		#How many years you'd like to wait before withdrawing your money.
	$years_saving_monthly = 10			#How many years would you like to spend deposit money monthly.

	#Additional controls
	$bank_bonus = 1					#If the bank matches your money/grants bonus for early deposits. 	(Annual )

	#System commands
	$adjusted = 0
	$final = $initial
	$i = 0
	$amount_deposited = 0
	$inflation_now = 1

	while $i < $years_waiting_before_withdrawing do
		if $i < $years_saving_monthly
		$final += $monthly*$bank_bonus*12
		$amount_deposited += $monthly*12
		end
		$final = $final*$rates
		$i += 1
		$inflation_now = $inflation_now*$inflation
		$adjusted = $final / $inflation_now
		puts "Year #{$i}: $#{sprintf '%.2f', $final}, "
		puts "         Adjusted for inflation of #{sprintf '%.2f', $inflation_now}: $#{sprintf '%.2f', $adjusted}"
		puts ""
	end

	puts ""
	puts("Final amount: #{sprintf "%.2f", $final} (Amount deposited by you: #{sprintf '%.2f', $amount_deposited})")
	puts "              Adjusted for inflation of #{sprintf '%.2f', $inflation_now}: $#{sprintf '%.2f', $adjusted}"
