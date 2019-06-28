FROM centos
LABEL maintainer="Jenner.luo"
#install python3.7.3 and go1.12.6 and docker-ce and git
RUN yum install -y curl https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz -o go1.12.6.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.12.6.linux-amd64.tar.gz && go_path=/usr/local/go/bin && profile_path=/etc/profile \
    && grep "export PATH=\$PATH:$go_path" $profile_path  || echo  "export PATH=\$PATH:$go_path" >> $profile_path  