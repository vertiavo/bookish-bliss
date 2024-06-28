# Use Nginx to serve the Vue.js application
FROM nginx:1.27.0-alpine

# Copy the pre-built Vue.js application from the 'dist' directory
COPY dist/ /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
