#team-awkey-backend

### Purpose
This is the backend component of a practice project to store photos, users, comments, and likes.

### Group Workflow Process
The group used GitHub, Trello, and Slack.

### Endpoints:

###### 1) To get all the photos possible:
```
  GET: "/photos"
```

###### 2) To get all the photos possible for a particular user:
```
  GET: "/users/[user_id]/photos"
```

###### 3) To create a new user
```
  POST: "/users"
```

### Structure of JSON request:
```
[
  {photoInfo: {
  id: [Integer as a string],
  url: [String],
  uploaderId: [Integer as a string]
  },
  photoComments:[{
      id: [Integer as a string],
      commenterId: [Integer as a string],
      photoId: [Integer as a string],
      content: [String]
      },
      {
      id: [Integer as a string],
      commenterId: [Integer as a string],
      photoId: [Integer as a string],
      content: [String]
      },
      {
      id: [Integer as a string],
      commenterId: [Integer as a string],
      photoId: [Integer as a string],
      content: [String]
      }
    ],
  photoLikes: [Integer]
  }
]
```

### Additional Resources
1) Paperclip [GitHub user: thoughtbot]

https://github.com/thoughtbot/paperclip

2) Bootstrap [GitHub user: twbs]

http://getbootstrap.com/

3) Rails::API [GitHub user: rails-api]

https://github.com/rails-api/rails-api

### Other Notes
This README is not yet finalized.
