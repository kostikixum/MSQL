drop procedure if exists print_days_hours;
delimiter //
create procedure print_days_hours
(
	num int
) 
begin 
 declare days varchar(100);
 set days=concat(FLOOR(num/(24*60*60)),' дней ',
 FLOOR(num%(24*60*60)/(60*60)),' часов ',FLOOR(num%(60*60)/60),' минут ',num%60,' секунд');
 select days;
end //

call print_days_hours(123456);
