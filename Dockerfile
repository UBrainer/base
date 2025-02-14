FROM docker:dind

WORKDIR /benchmark

COPY run_benchmark.sh /run_benchmark.sh
RUN chmod +x /run_benchmark.sh

CMD ["/run_benchmark.sh"]






