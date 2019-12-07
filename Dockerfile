FROM ubuntu:latest

RUN mkdir -p /pizzalar/ton-balikli
COPY soganlar.txt /pizzalar/ton-balikli
COPY tonbaliklari.txt /pizzalar/ton-balikli
COPY hazirla.sh /pizzalar/ton-balikli
WORKDIR /pizzalar/ton-balikli
RUN chmod +x hazirla.sh

CMD ./hazirla.sh \
    "ince-tabanli"