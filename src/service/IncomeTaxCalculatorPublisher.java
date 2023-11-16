package service; /**
 * className:       service.IncomeTaxCalculatorPublisher
 * author:          wenhao2002
 * date:            2023/11/16 15:30
 */
import javax.xml.ws.Endpoint;

public class IncomeTaxCalculatorPublisher {
    public static void main(String[] args) {
        // 定义服务端点的地址
        String address = "http://localhost:8081/incometaxcalculator";

        // 创建服务端点，并将服务类的实例发布在指定地址上
        Endpoint.publish(address, new IncomeTaxCalculatorImpl());

        // 输出发布成功的消息
        System.out.println("Web service is published at: " + address);
    }
}

