# Stanlay Park Digital Interview

Thanks for taking the time to complete this exercise.

We would ask you to implement a basic API to manage `References`, `Candidates` and `Recruiters` for a candidates references management app.

For each recruiter, we have a list of candidates assigned to him, with a collection of references. A recruiter can create a candidate. A candidate can add reference to himself.
A reference assigned a score to his candidate.

## Back end requirements

* Entity Relationship model
* RESTful endpoints
  * CRUD Candidates
  * CRUD References
  * CRUD Recruiters

Please consider to build this project in a **two hours timeframe**. If you are not covering 100% of this scenario, feel free to send it to us as it is.

## Submitting your project

To submit your project, please create a public repository on your github account and send us the link.

If you have any question, feel free to shoot us an email to [vincent@stanleyparkdigital.com](mailto:vincent@stanleyparkdigital.com)

## Bonus

* Build front end (Angular 5+)
* Implement [JSON API](http://jsonapi.org/)






## API description

**Recruiters**

To get all the recruiters
```shell
    curl http://localhost:3000/api/recruiters
```

To create a recruiter  
```shell
    curl -d "recruiter[first_name]=FirstName" -d "recruiter[last_name]=LastName" -d "recruiter[company]=Company" -X POST http://localhost:3000/api/recruiters
```

To update a carecruiter  
```shell
    curl -X PATCH -d "recruiter[first_name]=FirstName" -d "recruiter[last_name]=LastName" -d "recruiter[company]=Company" http://localhost:3000/api/recruiters/:recruiter_id
```

To get a recruiter by id  
```shell
    curl http://localhost:3000/api/recruiters/:recruiter_id
```

To destroy recruiter 
```shell
    curl -X DELETE http://localhost:3000/api/recruiters/:recruiter_id
```

**Candidates**

To get all the candidates
```shell
    curl http://localhost:3000/api/candidates
```

To create a candidate  
```shell
    curl -d "candidate[first_name]=FirstName" -d "candidate[last_name]=LastName" -d "candidate[occupation]=OCCUPATION" -d "recruiter_id=RECRUITER_ID" -X POST http://localhost:3000/api/candidates
```

To update a candidate  
```shell
    curl -X PATCH -d "candidate[first_name]=FirstName" -d "candidate[last_name]=LastName" -d "candidate[occupation]=OCCUPATION" http://localhost:3000/api/candidates/:candidate_id
```

To get a candidate by id  
```shell
    curl http://localhost:3000/api/candidate/:candidate_id
```

To destroy candidate 
```shell
    curl -X DELETE http://localhost:3000/api/candidates/:candidate_id
```


**References**

To get all the references
```shell
    curl http://localhost:3000/api/references
```

To create a reference  
```shell
    curl -d "reference[content]=FirstName" -d "reference[company]=LastName" -d "candidate_id=CANDIDATE_Id" -X POST http://localhost:3000/api/references
```

To update a reference  
```shell
    curl -X PATCH -d "reference[first_name]=FirstName" -d "reference[last_name]=LastName" -d "reference[occupation]=OCCUPATION" http://localhost:3000/api/references/:reference_id
```

To get a reference by id  
```shell
    curl http://localhost:3000/api/references/:reference_id
```

To destroy reference 
```shell
    curl -X DELETE http://localhost:3000/api/references/:reference_id
```
