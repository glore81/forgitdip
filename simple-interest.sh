#!/bin/bash

# Script to calculate simple interest
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "----------------------------------------"
echo "     Simple Interest Calculator         "
echo "----------------------------------------"

# Prompt user for input
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of interest (in %): " rate
read -p "Enter the Time period (in years): " time

# Calculate simple interest using bc for floating point math
# or awk. Here we use bc.
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "----------------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "----------------------------------------"
echo "The Simple Interest is: $interest"
echo "----------------------------------------"
