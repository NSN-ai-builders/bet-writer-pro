FROM node:22-alpine
WORKDIR /app
RUN npm install -g serve
COPY index.html ./
ENV PORT=3000
EXPOSE 3000
CMD ["serve", "-s", ".", "-l", "3000"]
