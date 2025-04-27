# Dockerfile
FROM nginx:alpine

# 将项目根目录下的所有文件复制进 Nginx 默认站点目录
COPY index.html /usr/share/nginx/html/
COPY images/     /usr/share/nginx/html/images/
# 如果你想保留 worker.js （纯备份，无需运行）
COPY worker.js   /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]