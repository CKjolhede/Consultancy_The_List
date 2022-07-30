# Introduction

**TheLIstAPI** in conjunction with **TheList** is the product of a team of software development students. From its inception to its living production deployment, all aspects of this product can be directly traced back to a team member. This product is wholly original and comprehensively demonstrates the creativity and capability of each member of the team. This is a product we are exceptionally proud of and now offer you the opportunity to explore **TheList.**
### <br>
# Overview

**TheListAPI** is designed specifically to interact with **TheList** as a repository of user information and user recommendation data.
### <br>
# Authentication

**Google OAuth** is required to access and interact with **TheList**. Access to **TheListAPI** is restricted to only **TheList** and its users so authentication is implicit through access and authorization is managed by **TheList**
### <br>
# Error Codes

*Traditional HTTP Response Codes can be expected*
*   Successful Responses will be represented using 2xx codes
*   Data errors will be represented with 4xx codes
*   Server errors will be represented through 5xx codes
### <br>    

# Rate limit

The only thing limiting your rates is our bandwidth.  
*Get it gurrl!* 
### <br>

# End Points


 ### User Index (List of all users)
*GET*   http://localhost:3000/api/v1/users
###### <br> 

 ### User Create (New User Creation)
*POST* http://localhost:3000/api/v1/users
###### <br> 
 ## User Dashboard (Single User's Homepage)
*GET* http://localhost:3000/api/v1/user/:id 

<i>:id refers to the user's id</i>
###### <br> 
 ## Recommendations Index Endpoint (Specific User's Recommendations)
*GET* http://localhost:3000/api/v1/users/:user_id/recommendations
###### <br> 
 ## Recommendations Create Endpoint (Creates a recommendation)
*POST* http://localhost:3000/api/v1/users/:user_id/recommendations
###### <br> 
 ## Recommendations Update Endpoint (Changes Status to Accepted)
*PATCH* http://localhost:3000/api/v1/users/:user_id/recommendations/:id

<i>:id refers to the recommendation's id</i>
###### <br> 
 ## Recommendations Destroy Endpoint (Recommendation rejected)
*DEL* http://localhost:3000/api/v1/users/:user_id/recommendations/:id

<i>:id refers to the user's id</i>
###### <br> 
