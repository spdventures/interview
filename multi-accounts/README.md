# Multi accounts

Our customer base has more and more corporate accounts.
Because of that, they need to manage branch acccounts on our e-references checking app.

In that goal, you have to implement a basic API to manage `Users`, `Companies`, `Recruiters` and `Candidates`.

## Case study

- A company can have one parent company. The parent company can manage all children ones.
- A company has multiple recruiters.
- A recruiter can be part of multiple companies.
- A candidate has one recruiter assigned to them.
- A user can be a recruiter or a candidate. (first name, last name, email password)


## Requirements

- Entity Relationship model
- RESTful endpoints
  - CRUD Companies
  - CRUD Recruiters
  - CRUD Candidates
  - CRUD Users

Please consider to build this project in a **three hours timeframe**. If you are not covering 100% of this scenario, feel free to send it to us as it is.

## Submitting your project

To submit your project, please create a public repository on your github account and send us the link.

If you have any question, feel free to shoot us an email to [vincent@vitay.io](mailto:vincent@vitay.io)

## Bonus

- Write spec files
- Implement [JSON API](http://jsonapi.org/)
