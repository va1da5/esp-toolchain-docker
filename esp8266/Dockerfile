FROM ubuntu:20.04

ENV TOOLCHAIN xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
ENV IDF_PATH /opt/esp8266-rtos-sdk-v3.3
ENV PATH /opt/esp8266-rtos-sdk-v3.3/components/esptool_py/esptool:/opt/esp8266-rtos-sdk-v3.3/components/partition_table/:/opt/xtensa-lx106-elf/bin:/opt/esp8266-rtos-sdk-v3.3/tools:/opt/rtos3.4_py3.8_env/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

WORKDIR /opt

RUN apt update && apt install -y wget git minicom unzip make vim python3-venv gcc build-essential libncurses-dev flex bison gperf \
  && rm -rf /var/lib/apt/lists/* \
  && git clone -b v3.3 --recursive https://github.com/espressif/ESP8266_RTOS_SDK.git esp8266-rtos-sdk-v3.3\
  && wget https://dl.espressif.com/dl/xtensa-lx106-elf-linux64-1.22.0-100-ge567ec7-5.2.0.tar.gz -O xtensa.tar.gz \
  && tar -xvf xtensa.tar.gz \
  && rm -rf xtensa.tar.gz \
  && python3 -m venv /opt/rtos3.4_py3.8_env \
  && . /opt/rtos3.4_py3.8_env/bin/activate \ 
  && pip install -r $IDF_PATH/requirements.txt


WORKDIR /