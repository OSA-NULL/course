# arduion教程
![](./pictures/arduino.jpeg)
## 环境准备
### 编程软件
#### Arduino IDE
![](./pictures/arduinoide.png)
#####下载链接
官方:  <https://www.arduino.cc/en/Main/Software>
中文社区:  <https://www.arduino.cn/resource-view-1.html>
#####安装教程  
CSDN:  <https://blog.csdn.net/qq_23937195/article/details/68944217>

#### Fritzing
![](./pictures/fritzing.png)
#####下载链接
官方:  <http://fritzing.org/download/>
中文社区:  <https://www.arduino.cn/resource-view-11.html>
### 基础硬件
#### arduino板
![](./pictures/arduinoboard.jpg)
#### 串口线
![](./pictures/arduinousb.png)
## 简单实践
### 呼吸灯
#### 需要器件
`arduino uno板` `led灯` `1k电阻`
#### 电路图
![](./pictures/呼吸灯电路图.png)
### 代码
```arduino
int ledPin = 10;

void setup() {
    pinMode(ledPin,OUTPUT);
}

void loop(){
    fadeOn(1000,5); 
    fadeOff(1000,5);
}

void fadeOn(unsigned int time,int increament){

    for (byte value = 0 ; value < 255; value+=increament){ 
        analogWrite(ledPin, value); 
        delay(time/(255/increament)); 
        }

}

void fadeOff(unsigned int time,int decreament){
    for (byte value = 255; value >0; value-=decreament){
        analogWrite(ledPin, value);
        delay(time/(255/decreament));
        }

}
```
## 扩展资料
官网<https://www.arduino.cc/>  
中文社区<https://www.arduino.cn/>  
推荐教程<https://www.tutorialspoint.com/arduino/>  
[blocklyduino](http://blocklyduino.github.io/BlocklyDuino/blockly/apps/blocklyduino/)在线可视化编辑器 *github地址*<https://github.com/BlocklyDuino/BlocklyDuino>
