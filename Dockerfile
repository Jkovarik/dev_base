from ubuntu:16.04
RUN apt-get update && apt-get install -y apt-utils software-properties-common && apt-add-repository ppa:ubuntu-elisp/ppa -y
RUN apt-get update && apt-get install -y emacs-snapshot git curl wget vim sudo bzip2 build-essential
RUN useradd -c 'Default dev user' -m -d /home/dev -s /bin/bash dev
USER dev
ENV HOME /home/dev