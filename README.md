# ESPRESSIF ESP Toolchain for Linux

## ESP8266

```bash
# Build Docker image with ESP8266 toolchain and RTOS SDK
make esp8266

# Later access the container from anywhere using the following command
docker run --rm -it -v "${PWD}:/${PWD##*/}" --device=/dev/ttyUSB0 -w "/${PWD##*/}" esp8266
```

## References

- [Espressif IoT Development Framework](https://github.com/espressif/esp-idf)
- [ESP8266_RTOS_SDK (IDF Style) Programming Guide](https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/)
- [Espressif Technical Documentation](https://www.espressif.com/en/support/documents/technical-documents)
- [ESP8266 Community Forum](https://www.esp8266.com/)
- [Awesome ESP](https://github.com/agucova/awesome-esp)
