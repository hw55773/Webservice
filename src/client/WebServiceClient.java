package client;

/**
 * className:       WebServiceClient
 * author:          wenhao2002
 * date:            2023/11/16 15:44
 */
import service.IncomeTaxCalculator;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import java.net.URL;

public class WebServiceClient {
    public static void main(String[] args) throws Exception {
        double bound=50000.0;
        // Web服务的WSDL地址
        URL wsdlURL = new URL("http://localhost:8081/incometaxcalculator?wsdl");

        // 命名空间和服务名称
        QName serviceName = new QName("wsdl", "IncomeTaxCalculatorImplService");

        // 创建服务
        Service service = Service.create(wsdlURL, serviceName);

        // 获取Web服务端点
        IncomeTaxCalculator calculator = service.getPort(IncomeTaxCalculator.class);

        // 调用Web服务方法
        double result = calculator.calculateIncomeTax(bound);

        // 打印结果
        System.out.println("收入:"+bound);
        System.out.println("所得税: " + result);
    }
}
