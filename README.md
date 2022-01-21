
# Travel Management System

Semester 6 project which helps users to checkout a travel agency's packages, explore and book vechicle from the agency for the tour package.

### Features:
* view and book packages/vechicle
* view travel blogs posted by the agency
* submit review for the agency
* enquire about a particular package
* fully featured and beautiful django material admin





### Dependencies
* python3
* pip
* postgresql

## Deployment
* First create a database user and update the `USER` and `PASSWORD` field in `travelbug/settings.py` 

* Import the databse configs with the following command:
```bash
psql travelbug < travelbug.sql
```
* NOTE: when creating a `USER` other than the name `athul` requires editing the sql file accordingly

* Create a python virtual environment and install dependencies 
```bash
python3 -m venv project
```
```bash
source project/bin/activate
```
``` bash
pip install -r requirements.txt
```

* Running the server 
```bash
python3 manage.py runserver
```

