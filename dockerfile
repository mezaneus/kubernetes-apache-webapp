# Specifying base image
FROM  centos:7

#Description
LABEL decription=" building this image for apache containers" 

LABEL maintener="MIKE"

# Executing command to install package
RUN yum update -y 

# Executing command to install httpd 
RUN yum -y install httpd 

# copying index file from your local to the container at the specific location.
COPY index.html /var/www/html/

# exposing port 80
EXPOSE 80

# Start our container with httpd
##systemctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ] 

# /usr/sbin/httpd -D FOREGROUND
CMD [ "-D" , "FOREGROUND" ]