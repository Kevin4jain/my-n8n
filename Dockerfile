# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /data

# Environment configuration
ENV PORT=5678
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Public URL (replace with your Render URL)
ENV WEBHOOK_URL=https://my-n8n-0esw.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://my-n8n-0esw.onrender.com/

# Optional: Basic Auth for security
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Encryption key (should be replaced with secure one)
ENV N8N_ENCRYPTION_KEY=my-super-secret-key

# Fix for permission warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Make sure the PATH includes global npm binaries
ENV PATH=/usr/local/bin:$PATH

# Expose Render’s dynamic port
EXPOSE ${PORT}

# Start n8n explicitly from correct binary path
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
