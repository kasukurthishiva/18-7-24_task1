FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY --from=node:14 index.html /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
