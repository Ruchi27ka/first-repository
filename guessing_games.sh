#!/bin/bash
Estimate_func(){
        echo "Please estimate the number of file in directory"
        read estimate
        if ! [[ "$estimate" =~ ^[0-9]+$ ]]
        then
        echo "Sorry integers only"
        Estimate_func
        fi
}
while [[ "$estimate" != $(ls -1a | wc -l) ]];
do
        Estimate_func
        if [[ "$estimate" -eq  $(ls -1a | wc -l) ]]; 
        then
                echo "Congrats!! Your estimation is right"
        elif [[ "$estimate" -gt $(ls -1a | wc -l) ]];
        then
                echo "Try again, the number is too big"
        else
                echo "Try again,  the number is too small"
        fi
done
