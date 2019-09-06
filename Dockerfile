FROM 127.0.0.1:5050/env/jdk7
     
MAINTAINER

COPY ./target/train-ssm.jar /root/

WORKDIR /root/

EXPOSE 8080

CMD ["java" , "-Xmx1024m","-XX:MaxPermSize=128M","-jar", "train-ssm.jar"]
