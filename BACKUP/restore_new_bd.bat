createdb -h localhost -p 5432 -U postgres -T template0 school 
pg_restore -h localhost -p 5432 -U postgres -d school -v -c "D:\Leonardo\English Learning\learningEglish_DB\BACKUP\school.bkp"
pause