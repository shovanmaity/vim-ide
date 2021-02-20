FROM ubuntu:20.04
RUN apt-get update

RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata
RUN apt-get install -y iputils-ping
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y neovim

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn


RUN curl -o golang.tar.gz https://storage.googleapis.com/golang/go1.16.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf golang.tar.gz
RUN rm golang.tar.gz
RUN mkdir -p /gocode
RUN echo 'export GOROOT=/usr/local/go' >> ~/.bashrc 
RUN echo 'export GOPATH=/gocode' >> ~/.bashrc
RUN echo 'export PATH="${GOROOT}/bin:${GOPATH}/bin:${PATH}"' >> ~/.bashrc

RUN sh -c 'curl -fLo /root/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN mkdir -p /root/.config/nvim/
COPY golang/1.16/init.vim /root/.config/nvim/init.vim
COPY golang/1.16/coc-settings.json /root/.config/nvim/coc-settings.json

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY golang/1.16/x-install /usr/local/sbin/x-install
COPY golang/1.16/x-update /usr/local/sbin/x-update

CMD ["/bin/bash", "-c", "sleep 86400"]
