   

  yum install -y docker
  systemctl enable docker
  systemctl start docker
  systemctl stop firewalld
  systemctl disable firewalld
  
  
  