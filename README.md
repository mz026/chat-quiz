# Chat Quiz

## Setup

- install dependencies
- update local `config/database.yml`
- create database by `rake db:create`
- run migration
- run spec by `bundle exec rspec`

# What do we have?

- an `User` model
- an `Admin` model

# TODO:

Create an API so that:

An admin can query the message thread of a certain user:

- path: `/messages`
- method: `GET`
- query: `user_id`
- response:

```javascript
[
  {
    id: 1,
    content: 'the-message-content',
    created_at: 1473760621, // timestamp of created_at
    admin: {
      id: 1,
      email: 'the-admin-email@test.com'
    }
  }
]
```
