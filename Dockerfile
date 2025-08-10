FROM n8nio/n8n:0.198.0

ENV NODE_FUNCTION_ALLOW_EXTERNAL=*

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]
