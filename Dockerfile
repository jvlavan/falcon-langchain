# Step 1: Choose a base image
FROM python:3.10

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application files to the container
COPY . /app

# Step 4: Install the required dependencies
RUN pip install -r requirements.txt

# Step 5: Expose the necessary port
EXPOSE 8080

# Step 6: Define the entry point command
CMD ["chainlit", "run", "app.py", "-w"]
