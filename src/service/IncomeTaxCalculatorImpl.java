package service; /**
 * className:       service.IncomeTaxCalculatorImpl
 * author:          wenhao2002
 * date:            2023/11/16 15:28
 */
import service.IncomeTaxCalculator;

import javax.jws.WebService;

@WebService(endpointInterface = "service.IncomeTaxCalculator",targetNamespace = "wsdl")
public class IncomeTaxCalculatorImpl implements IncomeTaxCalculator {

    @Override
    public double calculateIncomeTax(double income) {
        // 在这里实现个人所得税计算逻辑，根据当地税法规定来计算税额
        // 这里简单地假设税率为10%
        return income * 0.1;
    }
}

