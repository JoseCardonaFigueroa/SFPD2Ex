public inherited sharing class ExampleSoapConsumption {
    public ExampleSoapConsumption() {

        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();

        Double a = 13.0;
        Double b = 7.0;
        Double c = calc.doMultiply(a,b);

        System.debug('The result is: '+ c);
    }


}
