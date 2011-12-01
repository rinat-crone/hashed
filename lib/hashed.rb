require "hashed/version"
require "active_record"

module Hashed
  def hashed(field = :id)
    result = {}

    self.all.each { |row| result[row.send(field)] = row }
    result
  end
end

ActiveRecord::Base.extend Hashed
