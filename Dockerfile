#使用openJDK8作为基础镜像
FROM openjdk:8-jdk

#设置容器工作目录为/app
WORKDIR /app

#创建容器工作目录
#mkdir -p /app

 #复制当前目录下的target/springboot-demo-0.0.1-SNAPSHOT.jar到镜像的/app目录下
COPY target/springboot2-1.0-SNAPSHOT.jar /app

#设置环境变量 JAR_FILE
#ENV JAR_FILE=springboot-demo-0.0.1-SNAPSHOT.jar

#暴露容器端口 8084
EXPOSE 8084
#设置容器启动时执行的命令，即启动springboot项目
CMD ["java","-jar","springboot2-1.0-SNAPSHOT.jar"]
