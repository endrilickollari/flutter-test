

RUN sudo apt update & sudo apt install fonts-liberation libgbm1 libu2f-udev xdg-utils
ADD google-chrome-stable_current_amd64.deb .
RUN sudo gdebi -n google-chrome-stable_current_amd64.deb

WORKDIR /app
ADD chromedriver .
RUN sudo chmod +x chromedriver

RUN cd /home/cirrus/sdks/flutter && git checkout master && git pull && flutter upgrade

RUN flutter config --enable-web && flutter doctor
