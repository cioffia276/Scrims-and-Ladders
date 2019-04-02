/*insert into public."userInfo" (password,"f_Name","l_Name","email",admin,gender,"region","username")
values ('1234','Cat','Davis','cdavis@fake.com','0','1','USA','CDavis159')
*/
/*
update public."userInfo" set "admin" = '1' where "username" = 'CDavis159'
*/
select * from public."userInfo";

select * from public.characteristics;

/*
insert into public.characteristics ("role","rank","playerType","experience","s_Laning","w_Laning","s_TFight","w_TFight",
"s_ShotCalling","w_ShotCalling","s_GSense","w_GSense","s_Vision","w_Vision","preferred_Champion","username")
values('King of the castle','Gold 4','Casual','None','1','0','1','0','1','0','1','0','1','0','Olympics','CDavis159')
*/

/*
UPDATE public.characteristics set "s_Farm" = '1', "w_Farm" = '0' where "username" = 'CDavis159'
*/

select * from public."userInfo" ui
join public.characteristics c on ui."username" = c."username"