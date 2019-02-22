# Job Hunter

Application developed to scrape and apply for jobs from the following sources:
- www.indeed.com
- https://angel.co/jobs
- more coming soon

The list of jobs will be limited to the "easy to apply" ones from the page. The application is personalized by giving the user the capabilities of entering his/her information to store and later use this data. The user is capable of uploading his/her resume and updating a new version of it. The search parameters, which include the job title, location and pages to inspect, are determined by the user input.

The application has a matching algorithm that lets the user apply to jobs in which he/she is more than 50% compatible against the requirements for that specific position. The user can inspect the jobs and decide if it is appropiate to apply.

If you have any questions, contact the maintainers of this project:

- Juan Ortiz (jmopr83@gmail.com)
- Rodney Perez (rodneyeperez@gmail.com)
- Perhaps you? Please e-mail us if you'd like to get involved!


## Usage

You can easily run it with docker [1]:

```
docker build -t jobhunter/app .

docker run jobhunter/app
```

or use docker-compose [2] (more production like):

```
docker-compose up -d
docker-compose exec jobhunt rake db:setup
```

If you want to store the data in a separate database, you need to pass the ENV flags from `config/database.yml`.

After starting the container, you can access it via `http://localhost:3000`

## Links

[1] https://www.docker.com/

[2] https://docs.docker.com/compose/