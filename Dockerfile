FROM docker:latest
WORKDIR /app
COPY benchmark.sh .
RUN chmod +x benchmark.sh
CMD ["sh", "benchmark.sh"]
