# Rails CMS

This project models a Media reviews domain with User registration, authentication, third party identity integration, and the following relationships:  

![Model of Database](https://cdn.buttercms.com/0p3WydW7TSez9lsOW9Do)

## Installation

Clone the repo and install dependencies

```bash
$ git clone https://github.com/endotnick/media-reviews-api.git
$ bundle install
```

Set PostgreSQL credentials in `config\database.yml`

Migrate and Seed dev DB:

```bash
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
Note: You may see a validation error on seeding in the rare event that the semi-randomly generated object has been previously generated. This is fine for testing.

Generate secrets used for auth

```bash
$ Editor=vim rails credentials:edit
```
Enter `:q` to exit vim

## Development

After installation, run 

```bash
$ rails s -p 3001
```
to launch the dev server.   
Now, you'll need to [install the frontend](https://github.com/endotnick/media-reviews-api)


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/endotnick/media-reviews-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the media-reviews project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/endotnick/media-reviews-api/blob/master/CODE_OF_CONDUCT.md).
