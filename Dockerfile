FROM n8nio/n8n

# Copy startup script into container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose n8n default port
EXPOSE 5678

# Run our script instead of relying on CMD
ENTRYPOINT ["/start.sh"]
