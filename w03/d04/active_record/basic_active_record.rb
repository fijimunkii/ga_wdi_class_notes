require 'pg'

class Table
  ## creates a class variable of the connection to the psql database
  @@connection = PG.connect( dbname: "amazon_db", :host => 'localhost' )

  ## inserts the hash passed as an argument into the table which shares the name of the Table object
  def self.insert(data)
    @@connection.exec("insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )")
  end

  ## when called with a specific id, returns a hash of the object in the table
  def self.find(id)
    @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
  end

  # May only be called within the context of the calling object
  private

  ## adds apostrophies to the values and joins them into a string separated by commas
  def self.transform_vals(values)
    values.map { |v| "\'#{v}\'" }.join(",")
  end

  ## transforms the symbols from hash keys to strings, separates them by commas and joins them into a string
  def self.transform_keys(keys)
    keys.map(&:to_s).join(',')
  end
end

class Books < Table
end
