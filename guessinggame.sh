n_files = $(ls -l | wc -l)
exit_code=0
echo "Please guess how many files there are in the current directory:"
read guess

while [[ $exit_code -eq 0 ]]
do 
 if [[ $guess -gt $n_files ]]
 then echo "Your guess is too high, please try again:"
 read guess
 elif [[ $guess -lt $n_files ]]
 then echo "Your guess is too low, please try again:"
 read guess
 else
 let exit_code=1
 break
 fi 
done


echo "Congrats! You are correct."
