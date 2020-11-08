# ESPRESSIF ESP Toolchain for Linux

## ESP32

```bash
# Build Docker image with ESP8266 toolchain and RTOS SDK
make esp32

# Later access the container from anywhere using the following command
docker run --rm -it -v "${PWD}:/${PWD##*/}" --device=/dev/ttyUSB0 -w "/${PWD##*/}" esp32
```

### References

- [Espressif IoT Development Framework](https://github.com/espressif/esp-idf)
- [ESP32 FreeRtos MeetUp](https://www.youtube.com/watch?v=E9FY-IOvC3Q&ab_channel=MairSwartz)
- [Mastering the FreeRTOS Real Time Kernel – a Hands On Tutorial Guide](https://www.freertos.org/fr-content-src/uploads/2018/07/161204_Mastering_the_FreeRTOS_Real_Time_Kernel-A_Hands-On_Tutorial_Guide.pdf)

---

## ESP8266

```bash
# Build Docker image with ESP8266 toolchain and RTOS SDK
make esp8266

# Later access the container from anywhere using the following command
docker run --rm -it -v "${PWD}:/${PWD##*/}" --device=/dev/ttyUSB0 -w "/${PWD##*/}" esp8266
```

### References

- [ESP8266_RTOS_SDK (IDF Style) Programming Guide](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/)
- [ESP8266 Community Forum](https://www.esp8266.com/)
- [ESP8266 Modules Reference](https://www.esp8266.com/wiki/doku.php?id=esp8266-module-family)

---

## General Links

- [Espressif Technical Documentation](https://www.espressif.com/en/support/documents/technical-documents)
- [Awesome ESP](https://github.com/agucova/awesome-esp)
