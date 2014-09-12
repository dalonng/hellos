#!/usr/bin/env ruby

module ModuleY
  def go
    puts "go function."
  end
  def self.show 
    puts "ModuleY self.show"
  end
end

ModuleY.show
