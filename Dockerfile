# n8n için resmi Docker imajını kullan
FROM n8nio/n8n:1.86.1

# Root kullanıcısı olarak çalış
USER root

# FFmpeg'i yükle ve önbelleği temizle
RUN apt-get update && apt-get install -y ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# n8n kullanıcısına geri dön
USER node

# n8n'i çalıştır
CMD ["n8n", "start"]
