require "hashed/version"
require "active_record"

module Hashed
  def hashed(opts = {})
    result  = {}
    opts    = { by: opts } if opts.is_a? Symbol
    options = { by: (primary_key.respond_to?(:to_sym) ? primary_key.to_sym : primary_key.to_s), only: false }
    options.merge! opts

    dataset = options[:only] ? select([[table_name, options[:by]].join('.'), [table_name, options[:only]].join('.')]) : self
    dataset.all.each do |row|
      result[row.send(options[:by])] = (options[:only] ? row.send(options[:only]) : row)
    end

    result
  end
end

ActiveRecord::Base.extend Hashed
