#team-awkey-backend

### Purpose
This is the backend component of a practice project to store photos, users, comments, and likes.

### Group Workflow Process
The group used GitHub, Trello, and Slack.

### To Use
When requesting photos, this is the sample format of the JSON file:
```
photos = [
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

### Other Notes
This README is not yet finalized.
