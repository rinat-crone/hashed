require "hashed/version"
require "active_record"

module Hashed
  def hashed(opts = { field: :id, only_field: false })
    opts          = { field: opts } if opts.is_a? Symbol
    opts[:field]  = :id             if opts[:field].nil?
    result        = {}

    self.all.each do |row|
      result[row.send(opts[:field])] = (opts[:only_field] ? row.send(opts[:only_field]) : row)
    end

    result
  end
end

ActiveRecord::Base.extend Hashed
