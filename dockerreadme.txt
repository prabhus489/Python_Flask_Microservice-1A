Docker running commands
----------------------------------
docker build -t pythonapp2:1.0 .
 docker run -d -p 5000:5000 --name pythonapp2 pythonapp2:1.0