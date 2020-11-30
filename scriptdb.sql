
                                   ############################## script MongoDB#############################################################

 db.residents.insert({lastname: " Lovelace" ,"firstname":"Ada", "gender":"Mme", "birth_date":"1925-03-10",, age: 205})
 db.residents.insert({last_name: " Dupond" ,"first_name":"David", "gender":"Mme", "birth_date":"1923-03-10","entry_date":"2014-04-01","exit_date":"2018-09-12"})
 db.residents.insert({last_name: " Lebon" ,"first_name":"Tony", "gender":"Mr", "birth_date":"1923-03-10","entry_date":"2014-04-01","exit_date":"2018-09-12"})
 db.residents.insert({last_name: " Jean" ,"first_name":"Silvin", "gender":"Mr", "birth_date":"1913-03-10","entry_date":"2011-04-01","exit_date":"2019-09-12"})
 db.residents.insert({last_name: " Lebon" ,"first_name":"Samuel", "gender":"Mme", "birth_date":"1925-03-10","entry_date":"2016-04-01","exit_date":"2018-09-12"})
 db.residents.insert({last_name: " Esprit" ,"first_name":"Charlotte", "gender":"Mme", "birth_date":"1925-03-10","entry_date":"2016-04-01","exit_date":"2018-09-12"})
 
 
 
              #############################################Script postgres #############################################################################
			  
  create table residents (last_name varchar(26), first_name varchar(20), gender varchar(15), birth_date DATE, entry_date DATE, exit_date DATE);
  insert into residents(last_name,first_name, gender, birth_date, entry_date,exit_date) values ("toto","toto", "M", 1933-11-11, 2014-10-10, 2019-01-12);
  create table residents (id SERIAL PRIMARY KEY,lastname varchar(26), firstname varchar(20), gender varchar(15), birth_date DATE, entry_date DATE, exit_date DATE);
  insert into residents(lastname,firstname, gender, birth_date, entry_date,exit_date) values ('tota','tito', 'M', '1933-11-11', '2014-10-10', '2019-01-12');
  select * from residents;