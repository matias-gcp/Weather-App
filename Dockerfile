# Python image to use.
FROM python:3.11-alpine

# Set the working directory to /app
WORKDIR My_Weather_Webapp/weather

# copy the requirements file used for dependencies
COPY My_Weather_Webapp/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the working directory contents into the container at /app
COPY  My_Weather_Webapp .

# Run app.py when the container launches
ENTRYPOINT ["python", "manage.py", "runserver", "--noreload"]
