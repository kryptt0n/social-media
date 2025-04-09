# Social Media Project
A Social Media Platform built with React and Spring Boot.

# 2025-04-08 Update
**All updates are in different branches**

**Root: d-microservice**

**Backend: d-ms**

- Build microservice architecture
- Build Consul
- Build spring cloud gateway
- Build Kafka
- Credential domain
- Media exchange domain

# 2025-03-11 Update
- Admin panel
- Implement JWT
- Images store as files, replace byte array
- Add profile management features
- Password reset, forgot password feature with mail service

# How to Run
Clone this root repository and it's submodules by running: 

```
git clone --recurse-submodules https://github.com/desmondsyu/social-media.git
```

In the root repo, create a .env and add the following: 

```
MYSQL_DATABASE=[your_database_name] 
MYSQL_ROOT_PASSWORD=[your_password] 
JWT_KEY=[generated_key(512)]
FRONT_END_URL=[front_end_url]
SMTP_USERNAME=[google_account]
SMTP_PASSWORD=[google_app_password]
```

For more information of SMTP credentials, visit https://support.google.com/accounts/answer/185833

In the root directory, deploy the whole project in Docker.

# File Structure
**/document** contains all project documents, reports, UMLs

**/resource** contains all images for testing features

# Team Members
| Name | N_ID |
| ----------- | ----------- |
| Marina Carvalho | N01606437 |
| Vitaly Sukhinin | N01605938 |
| Kexin Zhu | N01621302 |
| Samruddhi Chavan | N01604191 |
| Sruthi Pandiath | N01618202 |
