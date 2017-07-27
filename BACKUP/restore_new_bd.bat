createdb -h localhost -p 5432 -U postgres -T template0 proyectos 
pg_restore -h localhost -p 5432 -U postgres -d proyectos -v -c "C:\Users\Administrador\Downloads\proyectos.bkp"
pause