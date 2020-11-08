FROM ubuntu:20.04

ENV VERSION esp-idf-v4.0.2
ENV IDF_PATH /opt/$VERSION
ENV DEBIAN_FRONTEND noninteractive
ENV PATH $IDF_PATH/components/esptool_py/esptool:$IDF_PATH/components/espcoredump:$IDF_PATH/components/partition_table/:/opt/espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin:/opt/espressif/tools/esp32ulp-elf/2.28.51.20170517/esp32ulp-elf-binutils/bin:/opt/espressif/tools/openocd-esp32/v0.10.0-esp32-20200709/openocd-esp32/bin:/opt/espressif/python_env/idf4.0_py3.8_env/bin:$IDF_PATH/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

WORKDIR /opt

RUN apt update && apt install -y wget git minicom unzip make vim libncurses-dev flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util \
  && rm -rf /var/lib/apt/lists/* \
  && update-alternatives --install /usr/bin/python python /usr/bin/python3 10 \
  && git clone -b v4.0.2 --recursive https://github.com/espressif/esp-idf.git $VERSION \
  && $IDF_PATH/install.sh \
  && mv /root/.espressif /opt/espressif \
  && ln -s /opt/espressif /root/.espressif \
  && rm -rf $IDF_PATH/examples /opt/espressif/dist

WORKDIR /