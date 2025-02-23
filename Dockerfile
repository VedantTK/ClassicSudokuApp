# Use the official Nginx base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML file to the Nginx default directory
COPY sudoku.html .

# Rename the file to index.html (Nginx serves this by default)
RUN mv sudoku.html index.html

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
