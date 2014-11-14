#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'open-uri'

uri = URI("http://next-st.nhn-playart.com/")
urlS = "http://next-st.nhn-playart.com/"
html_response = nil
open(urlS) do |http|
  html_response = http.read
end

puts html_response

