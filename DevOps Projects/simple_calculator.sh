#!/bin/bash
# Simple Calculator
# Supports + (Addition), - (Subraction), * (Multiplication), / (Devision)

# Display help
show_help() {
    echo "Enter the values and expression in format like : 5 + 3"
    echo "Use operators + - * /"
    echo "Type Q or q or Quit or quit to exit calculator"
}

# Main Calculator
calculate() {
    case "$2" in
        +) result=$(echo "$1 + $3" | bc -l);;
        -) result=$(echo "$1 - $3" | bc -l);;
        \*) result=$(echo "$1 * $3" | bc -l);;
        /) if(( $(echo "$3 == 0" | bc -l) )); then
                echo -e "Error: Devided by zero" >&2
                return 1
           fi
           result=$(echo "$1 / $3" | bc -l);;
    esac

    echo -e "Result: $1 $2 $3 = $result"
}

while true; do
    read -p "Enter the expression and values (q to exit): " input

    if [[ "$input" =~ ^[qQ](uit)?$ ]]; then
        echo -e "Goodboye!"
        break;
    fi

    if ! [[ "$input" =~ ^[-+]?[0-9]*\.?[0-9]+\ [+-/*]\ [-+]?[0-9]*\.?[0-9]+$ ]]; then
        echo "Invalid Number or operator" >&2
        show_help
        continue
    fi

    read val1 operator val2 <<< "$input"

    calculate "$val1" "$operator" "$val2"
done