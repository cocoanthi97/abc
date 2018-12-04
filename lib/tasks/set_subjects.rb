Subject.create(title:"sub1" , description:"aaaaaa")
Subject.create(title:"sub2" , description:"aaaaaa")
Subject.create(title:"sub2" , description:"aaaaaa")
Subject.create(title:"sub3" , description:"aaaaaa")
Subject.create(title:"sub4" , description:"aaaaaa")
Subject.create(title:"sub5" , description:"aaaaaa")
Subject.create(title:"sub6" , description:"aaaaaa")
Subject.create(title:"sub7" , description:"aaaaaa")
Subject.create(title:"sub8" , description:"aaaaaa")
Subject.create(title:"sub9" , description:"aaaaaa")
Subject.create(title:"sub10" , description:"aaaaaa")

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
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(2)
ttd.time_table_times << TimeTableTime.find(4)
ttd.time_table_times << TimeTableTime.find(1)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(5)
ttd.time_table_times << TimeTableTime.find(2)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(4)
ttd.time_table_times << TimeTableTime.find(5)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(2)
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(4)
ttd.time_table_times << TimeTableTime.find(5)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(5)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(3)
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(5)
ttd.save

ttd = TimeTableDay.new
ttd.time_table_times << TimeTableTime.find(1)
ttd.time_table_times << TimeTableTime.find(2)
ttd.time_table_times << TimeTableTime.find(5)
ttd.time_table_times << TimeTableTime.find(4)
ttd.time_table_times << TimeTableTime.find(1)
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


