   

  yum install -y docker
  systemctl enable docker
  systemctl start docker
  systemctl stop firewalld
  systemctl disable firewalld
  docker build -t flask-tutorial:latest /filess
  docker run -d -p 5000:80 flask-tutorial
  
  
