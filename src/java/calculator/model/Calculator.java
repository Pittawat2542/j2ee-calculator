package calculator.model;

public class Calculator {

    double firstNumber;
    double secondNumber;
    String operation;

    public Calculator(double firstNumber, double secondNumber, String operation) {
        this.firstNumber = firstNumber;
        this.secondNumber = secondNumber;
        this.operation = operation;
    }

    public static double calculate(double firstNumber, double secondNumber, String operation) {
        double result = 0;

        switch (operation) {
            case "add":
                result = firstNumber + secondNumber;
                break;
            case "subtract":
                result = firstNumber - secondNumber;
                break;
            case "multiply":
                result = firstNumber * secondNumber;
                break;
            case "divide":
                if (secondNumber != 0) {
                    result = firstNumber / secondNumber;
                }
                break;
            default:
        }

        return result;
    }

    public double getResult() {
        return calculate(firstNumber, secondNumber, operation);
    }

    @Override
    public String toString() {
        String operator = "";

        switch (operation) {
            case "add":
                operator = "+";
                break;
            case "subtract":
                operator = "-";
                break;
            case "multiply":
                operator = "*";
                break;
            case "divide":
                operator = "/";
                break;
        }
        
        return firstNumber + " " + operator + " " + secondNumber + " = " + getResult();
    }
}