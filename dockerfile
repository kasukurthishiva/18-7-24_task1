FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY --from=node:14 /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
