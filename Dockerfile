# We're using Ubuntu 20.10
FROM koala21/manusiarakitan:kampang

#
# Clone repo and prepare working directory
#
RUN git clone -b Kampang https://github.com/ikhsncml/latihan /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ikhsncml/latihan/Kampang/requirements.txt

CMD ["python3","-m","userbot"]
