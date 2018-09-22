FROM dreamlabs/php-composer:latest

RUN composer global require jakub-onderka/php-parallel-lint && \
    composer global require jakub-onderka/php-console-highlighter;

ENTRYPOINT ["/root/.composer/vendor/bin/parallel-lint"]