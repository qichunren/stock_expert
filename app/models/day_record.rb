# encoding: utf-8
class DayRecord < ActiveRecord::Base

  def self.fetch_by_code(code)
    require 'open-uri'
    contents = open("http://hq.sinajs.cn/list=#{code}") {|io| io.read}
    contents = /\".*\"/.match(contents)[0]
    contents[1..-2].split(",")
  end

  def self.sync_data(data_array)
  end

end
