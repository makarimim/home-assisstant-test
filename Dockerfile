# استفاده از ایمیج رسمی Home Assistant Core
FROM ghcr.io/home-assistant/home-assistant:latest

# تنظیم منطقه زمانی (اختیاری)
ENV TZ=Asia/Tehran

# مسیر کانفیگ
ENV HASS_CONFIG=/config

# ایجاد پوشه کانفیگ
RUN mkdir -p /config

# کپی کانفیگ اولیه (اگر داری)
COPY config/ /config/

# Home Assistant روی پورت 8123 گوش می‌دهد
EXPOSE 8123

# فرمان اجرا (ایمیج رسمی خودش entrypoint دارد، نیازی به تغییر نیست)
