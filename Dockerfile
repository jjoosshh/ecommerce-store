# use the official python image
FROM python:3.10

# set working dir in the container
WORKDIR /app

#copy the project files into the container
COPY . /app

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#expose the port Django runs on
EXPOSE 8000

#run the apllication
CMD ["python","manage.py","runserver","0.0.0.0:8000"]

