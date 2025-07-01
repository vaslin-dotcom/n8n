FROM n8nio/n8n

# Switch to root to modify file permissions
USER root

# Copy start.sh to a writable directory
COPY start.sh /home/node/start.sh
RUN chmod +x /home/node/start.sh

# Switch back to non-root user
USER node

# Expose the n8n port
EXPOSE 5678

# Use the script as the entrypoint
ENTRYPOINT ["/home/node/start.sh"]
