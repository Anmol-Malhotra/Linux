# !/bin/bash


echo "Health Problems."
echo ""
echo "1. Fever"
echo "2. Sore Throat"
echo "3. Cough and Congestion"
echo "4. Runny Nose or Sneezing"
echo "5. Fatigued or has Body Aches"
echo "6. Headache"
echo "7. Upset Stomach"
echo ""
read -p "Enter the number as per your problem: " choice

if [ "$choice" -eq 1 ]; then
	echo "Recommend taking a fever reducer medication."
elif [ "$choice" -eq 2 ]; then
	echo "Recommend gargling with warm saltwater."
elif [ "$choice" -eq 3 ]; then
        echo "Recommend drinking warm fluids and taking cough syrup."
elif [ "$choice" -eq 4 ]; then
        echo "Recommend using a saline nasal spray and keeping tissues handy to avoid skin irritation."
elif [ "$choice" -eq 5 ]; then
        echo "Recommend getting plenty of rest, staying hydrated, and optionally taking a mild pain reliever."
elif [ "$choice" -eq 6 ]; then
        echo "Rest in a quiet space, consider mild pain relief."
elif [ "$choice" -eq 7 ]; then
        echo "Eat bland foods, hydrate, avoid spicy/oily meals."
else
	echo "To stay healthy eat nutritious foods, stay hydrated, get enough rest and maintain good hygiene habits. Regular exercise and stress management also go a long way in boosting your immunity."
fi

echo ""
if [[ "$choice" -ge 1 && "$choice" -le 7 ]]; then
	echo "Do you have any other problem?"
	read -p "Press Y/y if you want any other recommendation based on your problem else Press N/n: " run
	if [[ "$run" == 'Y' || $run == 'y' ]]; then
		echo""
		exec "$(realpath "$0")"
	else
		echo ""
		echo "Thank you! Stay healthy and take care."
	fi
else
	echo ""
	echo "Thank you! Stay healthy and take care."
fi



