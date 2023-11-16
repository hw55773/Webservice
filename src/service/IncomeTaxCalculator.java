package service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IncomeTaxCalculator {
    @WebMethod
    double calculateIncomeTax(double income);
}
