#!/usr/bin/awk -f

# Definir las expresiones regulares y sus tokens
BEGIN {
    regex[1] = "^[+]$"
    token[1] = "SUMA"
    
    regex[2] = "^[+][+]$"
    token[2] = "INCR"
    
    regex[3] = "^[0-9]+$"
    token[3] = "ENTERO"
    
    regex[4] = "^([0-9]+)\\.([0-9]+)$"
    token[4] = "REAL"
}

{
    state = "q0"
    matched = 0
    
    for (i = 1; i <= length($0); i++) {
        char = substr($0, i, 1)

        # Transiciones basadas en el estado actual y el carácter
        if (state == "q0") {
            if (char ~ /[0-9]/) {
                state = "q3"
            } else if (char == "+") {
                state = "q1"
            } else {
                state = "UNKNOWN"
            }
        } else if (state == "q1") {
            if (char == "+") {
                state = "q2"
            } else {
                state = "UNKNOWN"
            }
        } else if (state == "q2") {
            state = "UNKNOWN"
        } else if (state == "q3") {
            if (char ~ /[0-9]/) {
                state = "q3"
            } else if (char == ".") {
                state = "q4"
            } else {
                state = "UNKNOWN"
            }
        } else if (state == "q4") {
            if (char ~ /[0-9]/) {
                state = "q5"
            } else {
                state = "UNKNOWN"
            }
        } else if (state == "q5") {
            if (char ~ /[0-9]/) {
                state = "q5"
            } else {
                state = "UNKNOWN"
            }
        } else {
            state = "UNKNOWN"
        }
        
        if (state == "UNKNOWN") break
    }

    # Verificar si el estado final es uno de los estados aceptados
    if (state == "q1") {
        print "SUMA"
        matched = 1
    } else if (state == "q2") {
        print "INCR"
        matched = 1
    } else if (state == "q3") {
        print "ENTERO"
        matched = 1
    } else if (state == "q5") {
        print "REAL"
        matched = 1
    }
    
    if (!matched) {
        print "UNKNOWN"
    }
}
