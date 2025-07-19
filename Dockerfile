# official python 3.10 image
FROM python:3.10-slim

# working directory for container
WORKDIR /app

# Copy everything from the current directory to the container
COPY . /app

# Upgrade pip and install python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# start the flask app
CMD ["flask", "run", "--host=0.0.0.0"]
