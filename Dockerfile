FROM n8nio/n8n:0.198.0

# Install community Twitter node
RUN npm install n8n-nodes-twitter-v2

# Install other community nodes
RUN npm install n8n-nodes-amazon-scraper n8n-nodes-flipkart-scraper n8n-nodes-myntra-scraper

# Make sure n8n uses these
ENV NODE_FUNCTION_ALLOW_EXTERNAL=*

# Expose the n8n port
EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]
