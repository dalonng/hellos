#/usr/bin/env ruby

require "mysql"

dbh = Mysql.real_connect("10.34.144.63", "jack", "admin", "testdb", 3306)

sql = "select * from test"
res = dbh.query(sql)

p res

dbh.close
