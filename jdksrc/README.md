JDK源代码阅读  
版本：jdk-12.0.1  
源代码位置：jdk-12.0.1/src  
备注：本套代码中不包含源代码

1）新建一个项目文件jdksrc  
2）创建包：  
    jdksrc\src\cn\codesheep\source（存放源代码）
    jdksrc\src\cn\codesheep\test（存放测试代码）  
    
3）配置源代码路径  
project structure->SDKS->Sourcepath
jdksrc/src/cn/codesheep/source  

4）解锁源代码，方可修改源代码  
Build,Execution...->Debugger->Stepping->Do not step into the classes取消勾选

5）测试代码
jdksrc\src\cn\codesheep\test中创建Test.class  
以hashMap为例  
package cn.codesheep.test.hashmap;  

import java.util.HashMap;  
import java.util.Map;  

public class Test {  
    public static void main(String[] args){  
        Map<String,Double> hashMap =  new HashMap<>();  
        hashMap.put("k1",0.1);  
        hashMap.put("k2",0.1);  
        hashMap.put("k3",0.1);  
        hashMap.put("k4",0.1);  
    }  
}



