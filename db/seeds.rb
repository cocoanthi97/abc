# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Subject.create(title:"1lec1", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec2", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec3", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec4", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec5", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec6", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec7", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec8", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec9", description:"sample", lecture:0, practice:-1)
Subject.create(title:"1lec10", description:"sample", lecture:0, practice:-1)

Subject.create(title:"1exam1", description:"sample", lecture:1, practice:-1)
Subject.create(title:"1exam2", description:"sample", lecture:2, practice:-1)

Subject.create(title:"1pra1", description:"sample", lecture:-1, practice:0)
Subject.create(title:"1pra2", description:"sample", lecture:-1, practice:1)
Subject.create(title:"1pra3", description:"sample", lecture:-1, practice:2)
Subject.create(title:"1pra4", description:"sample", lecture:-1, practice:3)
Subject.create(title:"1pra5", description:"sample", lecture:-1, practice:4)
Subject.create(title:"1pra6", description:"sample", lecture:-1, practice:5)
Subject.create(title:"1pra7", description:"sample", lecture:-1, practice:6)
Subject.create(title:"1pra8", description:"sample", lecture:-1, practice:7)
Subject.create(title:"1pra9", description:"sample", lecture:-1, practice:8)
Subject.create(title:"1pra10", description:"sample", lecture:-1, practice:9)
Subject.create(title:"1pra11", description:"sample", lecture:-1, practice:10)
Subject.create(title:"1pra12", description:"sample", lecture:-1, practice:11)
Subject.create(title:"1pra13", description:"sample", lecture:-1, practice:12)
Subject.create(title:"1pra14", description:"sample", lecture:-1, practice:13)
Subject.create(title:"1pra15", description:"sample", lecture:-1, practice:14)

Subject.create(title:"1test", description:"sample", lecture:3, practice:15)

Subject.create(title:"2lec1", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec2", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec3", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec4", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec5", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec6", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec7", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec8", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec9", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec10", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec11", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec12", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec13", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec14", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec15", description:"sample", lecture:4, practice:-1)
Subject.create(title:"2lec16", description:"sample", lecture:4, practice:-1)

Subject.create(title:"2exam1", description:"sample", lecture:5, practice:-1)
Subject.create(title:"2exam2", description:"sample", lecture:6, practice:-1)

Subject.create(title:"2pra1", description:"sample", lecture:-1, practice:16)
Subject.create(title:"2pra2", description:"sample", lecture:-1, practice:17)
Subject.create(title:"2pra3", description:"sample", lecture:-1, practice:18)
Subject.create(title:"2pra4", description:"sample", lecture:-1, practice:19)
Subject.create(title:"2pra5", description:"sample", lecture:-1, practice:20)
Subject.create(title:"2pra6", description:"sample", lecture:-1, practice:21)
Subject.create(title:"2pra7", description:"sample", lecture:-1, practice:22)
Subject.create(title:"2pra8", description:"sample", lecture:-1, practice:23)
Subject.create(title:"2pra9", description:"sample", lecture:-1, practice:24)
Subject.create(title:"2pra10", description:"sample", lecture:-1, practice:25)
Subject.create(title:"2pra11", description:"sample", lecture:-1, practice:26)
Subject.create(title:"2pra12", description:"sample", lecture:-1, practice:27)
Subject.create(title:"2pra13", description:"sample", lecture:-1, practice:28)
Subject.create(title:"2pra14", description:"sample", lecture:-1, practice:29)
Subject.create(title:"2pra15", description:"sample", lecture:-1, practice:30)
Subject.create(title:"2pra16", description:"sample", lecture:-1, practice:31)
Subject.create(title:"2pra17", description:"sample", lecture:-1, practice:32)
Subject.create(title:"2pra18", description:"sample", lecture:-1, practice:33)
Subject.create(title:"2pra19", description:"sample", lecture:-1, practice:34)

Subject.create(title:"2test", description:"sample", lecture:7, practice:35)

ttt = TimeTableTime.new
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save

ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(2)
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(8)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(3)
ttt.subjects << Subject.find(5)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(8)
ttt.subjects << Subject.find(9)
ttt.subjects << Subject.find(10)
ttt.save
ttt = TimeTableTime.new
ttt.subjects << Subject.find(1)
ttt.subjects << Subject.find(4)
ttt.subjects << Subject.find(7)
ttt.subjects << Subject.find(9)
ttt.save


ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(2)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(4)
ttd.time_table_times << TimeTableTime.find(5)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(6)
ttd.time_table_times << TimeTableTime.find(7)
ttd.time_table_times << TimeTableTime.find(8)
ttd.time_table_times << TimeTableTime.find(9)
ttd.time_table_times << TimeTableTime.find(10)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(11)
ttd.time_table_times << TimeTableTime.find(12)
ttd.time_table_times << TimeTableTime.find(13)
ttd.time_table_times << TimeTableTime.find(14)
ttd.time_table_times << TimeTableTime.find(15)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(16)
ttd.time_table_times << TimeTableTime.find(17)
ttd.time_table_times << TimeTableTime.find(18)
ttd.time_table_times << TimeTableTime.find(19)
ttd.time_table_times << TimeTableTime.find(20)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(21)
ttd.time_table_times << TimeTableTime.find(22)
ttd.time_table_times << TimeTableTime.find(23)
ttd.time_table_times << TimeTableTime.find(24)
ttd.time_table_times << TimeTableTime.find(25)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(26)
ttd.time_table_times << TimeTableTime.find(27)
ttd.time_table_times << TimeTableTime.find(28)
ttd.time_table_times << TimeTableTime.find(29)
ttd.time_table_times << TimeTableTime.find(30)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(31)
ttd.time_table_times << TimeTableTime.find(32)
ttd.time_table_times << TimeTableTime.find(33)
ttd.time_table_times << TimeTableTime.find(34)
ttd.time_table_times << TimeTableTime.find(35)
ttd.save



ttw = TimeTableWeek.new
ttw.time_table_days << TimeTableDay.find(1)
ttw.time_table_days << TimeTableDay.find(2)
ttw.time_table_days << TimeTableDay.find(3)
ttw.time_table_days << TimeTableDay.find(4)
ttw.time_table_days << TimeTableDay.find(5)
ttw.time_table_days << TimeTableDay.find(6)
ttw.time_table_days << TimeTableDay.find(7)
ttw.save
