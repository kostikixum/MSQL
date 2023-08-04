drop procedure if exists print_num;
delimiter //
create procedure print_num
(
    num int
)
begin
declare n int; 
declare nums varchar(10) default "";
set n = 2;
repeat
	set nums = concat(nums, n, " ");
    set n = n + 2;
    until n > num
end repeat;
select nums;
end //

call print_num(10);

