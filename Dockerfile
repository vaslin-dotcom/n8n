FROM n8nio/n8n

# Set timezone (optional but recommended)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Expose port used by n8n
EXPOSE 5678

# Set the default command to run n8n
CMD ["n8n"]

