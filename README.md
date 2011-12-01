# Hashed

Provides `hashed` method to ActiveRecord objects-set that return hash where keys is value of some field in dataset (default: "id").

```ruby
gem "hashed"
```

Then run `bundle install` and simple use it!

```ruby
Category.active.hashed
# equal to
Category.active.hashed(:id)
# you may want to have hash not by id
Category.active.hashed(:created_at)
# you may want to select only one field ({key: value})
Category.active.hashed(field: :created_at, only_field: :name)
```
