![Wercker](https://img.shields.io/wercker/ci/wercker/go-wercker-api.svg)
![AUR](https://img.shields.io/aur/license/yaourt.svg) 

# Rails PurAí API
App build in Rails that provides an RESTful API. It covers endpoints to add, edit and delete events.

This project package the following functions:
- [x] Events
- [ ] Categories
- [ ] Sale Places
- [ ] User
- [ ] Login

## Installation
Get via git clone:
```
$ git clone https://github.com/purai/rails_api.git
$ cd rails_api
```

Get dependencies:
```
$ bundle install
```

## Usage

Run the migration. This command will execute the migration that is stored in the `db/migrate/` directory and have not yet been executed in the database
```
$ rake db:migrate
```

Content from file `db/seeds.rb` will add some sample records. So run it to insert those values
```
$ rake db:seed
```

Then start the server with `rails s -p 3001`

![server](/screenshots/server.png "server")

And the application will start at `http://localhost:3001`

## Endpoint

#### GET `http://localhost:3001/api/v1/events`

#### POST `http://localhost:3001/api/v1/events`

#### PUT `http://localhost:3001/api/v1/events/{id}`

#### DELETE `http://localhost:3001/api/v1/events/{id}`

### Event data object example

```json
{ 
    "event":
    {
        "title": "",
        "body": ""
    }
}
```

## License
This project is licensed under the GNU GPLv3 License - see the [LICENSE](LICENSE) file for details

Made with :heart: by [Felipe Mendes](https://github.com/felipemendes).
