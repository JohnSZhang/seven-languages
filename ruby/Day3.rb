# Do:
# Modify the CSV application to support an each method to return a CsvRow
# object. Use method_missing on that CsvRow to return the value for the column
# for a given heading.
# For example, for the file:
# one, two
# lions, tigers
# allow an API that works like this:
# csv = RubyCsv.new
# csv.each {|row| puts row.one}
# This should print "lions".
a = ActsAsCsv.new()
a.each {|row| puts row.one}
a.one
class ActsAsCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')
    file.each do |row|
      @result << row.chomp.split(', ')
    end
  end
  def headers
    @headers
  end
  def csv_contents
    @result
  end
  def initialize
    @result = []
    read
  end
  def method_missing name
    header_idx = @headers.find_index(name.to_s)
    @result.map { |line| line[header_idx] }
  end
  def each &block
    @result.each { |row| yield(row) }
  end
end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
