.PHONY: esp8266 esp32


esp8266:
	docker build -t esp8266 esp8266

esp32:
	docker build -t esp32 esp32