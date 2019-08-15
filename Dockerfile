# The base image
  FROM python:2.7

  # Install python and pip
  #RUN apt-get update -y
  #RUN apt-get install -y python-pip python-dev build-essential

  # Install Python modules needed by the Python app
  COPY requirements.txt /usr/src/app/
  RUN pip install --user  --no-cache-dir -r /usr/src/app/requirements.txt

  # Copy files required for the app to run
  COPY . /usr/src/app/

  # Declare the port number the container should expose
  EXPOSE 5000

  WORKDIR "/usr/src/app"
  # Run the application
  CMD ["python", "run.py"]
