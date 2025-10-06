
FROM n8nio/n8n

# Set working directory
WORKDIR /data

# Use Render's provided PORT variable
ENV PORT=5678
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Optional: Secure n8n editor with basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kvs
ENV N8N_BASIC_AUTH_PASSWORD=kvs3357#

# Public URL (your Render URL)
ENV WEBHOOK_URL=https://my-n8n-0esw.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://my-n8n-0esw.onrender.com/

# Encryption key (should be random and private)
ENV N8N_ENCRYPTION_KEY=my-super-secret-key

# Optional: Fix the config permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose Render’s dynamic port
EXPOSE ${PORT}

# Start n8n
CMD ["n8n", "start"]
