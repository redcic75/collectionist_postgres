# README
## Configuration
Locally ran and tested on `ruby 3.0.3p157` and `rails 7.0.4`.

This rails app uses a `Postgres` database (consistent with the collectionist's job offer)
## How to use
### Initialization
- Clone the repo
- cd into the repo
- Run `rails db:create && rails db:migrate && rails db:seed`

### Run the app
After initialization:
- cd in the app's repo
- Run `rails s`
- Go to `localhost:3000` on your browser
- Navigate into the 2 example shops with the links of the webpages
- Default app language is french. Browse in english on `localhost:3000/en`

### Launch tests
After initialization:
- cd in the app's repo
- Run "rails test:models" to test the models
- Run "rails test:controllers" to test the controllers

## Developers' notes - Limitations / Foreseen improvements
- `opening_range` model has limitations like:
  - does not check that time ranges are not overlapping for a given shop and day
  - does not check that `end_time_seconds` is greater than `start_time_seconds`
- Only basic example tests were added using rails default testing framework (minitest)
- Focus was not put on styling the views (just replicated the print screen of the tech test statement).
- Index is not paginated. It should be in production app with a lot of shops.
- CI/CD automation not in place => Tests to be launched manually
- Documentation comments should be added
