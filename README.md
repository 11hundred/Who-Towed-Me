# Who Towed Me

Visit who.towed.me to search recently towed vehicles in the City of Chicago.

Who Towed Me searches the City of Chicago database of recently towed vehicles.
You can search by plate or make to see if your vehicle has been towed. Please note that there may be a slight delay after a vehicle is towed until it shows up in the database.

We are using data from the City of Chicago Data Portal:
https://data.cityofchicago.org/Transportation/Towed-Vehicles/ygr5-vcbg

Google Maps are used to display the location of the towed vehicle

There are many ways this can be done better. Namely by Scott Robbin http://www.wasmycartowed.com/ and https://github.com/smartchicago/wasmycartowed.

To deploy to production:

```
git checkout master
cap production deploy
[enter deploy user password]
```

To deploy to staging.url.com:
```
git checkout [branchname]
cap staging deploy BRANCH=[branchname]
[enter deploy user password]
```
