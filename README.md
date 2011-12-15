# Hashed

[![Build Status](https://secure.travis-ci.org/rinat-crone/hashed.png)](http://travis-ci.org/rinat-crone/hashed)

Provides `hashed` method to ActiveRecord objects-set that return hash where keys is value of some attribute of object (default – primary key of used table).

Put this line to your Gemfile

```ruby
gem "hashed"
```

Then run `bundle install` and let's go!

```ruby
Category.active.hashed
# equal to
Category.active.hashed(Category.primary_key)
# you may want to have hash not by primary_key
Category.active.hashed(:created_at)
# you may want to select only one field ({key: value})
Category.active.hashed(by: :created_at, only: :name)
```
