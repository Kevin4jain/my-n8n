# Use official n8n image
FROM n8nio/n8n:latest

# Let Render assign a dynamic port
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Optional: enable basic auth for security
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=kvs
ENV N8N_BASIC_AUTH_PASSWORD=kvs3357#

# Your Render app URL
ENV WEBHOOK_URL=https://my-n8n-0esw.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://my-n8n-0esw.onrender.com/

# Encryption key (use a random secure string)
ENV N8N_ENCRYPTION_KEY=my-super-secret-key

# Expose Render's dynamic port
EXPOSE ${PORT}

# Start n8n
CMD ["n8n", "start"]
