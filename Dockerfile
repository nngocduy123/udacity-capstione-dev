FROM node:13.8.0-alpine

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . helloworld/ /app/

## Step 3:
# Install packages
RUN npm install -y

## Step 4:
#Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["npm", "start"]