package boletin1;

public class Ejercicio1 {

    public static void main(String[] args) {
        int num1 = 12;
        int num2 = 4;

        if (num1 % num2 == 0 || num2 % num1 == 0) {
            System.out.println(num1 + " y " + num2 + " son múltiplos.");
        } else {
            System.out.println(num1 + " y " + num2 + " no son múltiplos.");
        }
    }
}

