delete from binzip_host_bbs
where idx=5;

select reserve_startdate, reserve_enddate, binzip_member_id
from binzip_reserve
where status=2 and binzip_host_bbs_idx=3
order by todaydate;

select r.reserve_startdate, r.reserve_enddate, r.binzip_member_id, hb.zipname, hb.idx
from binzip_reserve r
left join binzip_host_bbs hb
on r.binzip_host_bbs_idx = hb.idx
where r.status = 3
and hb.binzip_member_id = 'test4'
order by r.reserve_startdate

commit

commit

delete from binzip_reserve
where binzip_member_id = 'test5'
and reserve_startdate = '20211005'
and binzip_host_bbs_idx = 3

rollback

select id, question, answer, name, birthdate, phone, email from binzip_member where id = 'test7'

select bank, acnumber from binzip_host where binzip_member_id = 'test7'

commit

select r.binzip_host_bbs_idx, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost, r.status, hb.zipname, hb.ziptype, hb. zipaddr, hbi.imgpath 
from binzip_reserve r
left join binzip_host_bbs hb
on r.binzip_host_bbs_idx = hb.idx
left join binzip_host_bbs_imgs hbi
on r.binzip_host_bbs_idx = hbi.binzip_host_bbs_idx
where r.status >= 0
and r.status < 4
and r.binzip_member_id = 'test3' 
order by r.binzip_host_bbs_idx, r.status

and r.binzip_host_bbs_idx = 1

select r.binzip_host_bbs_idx, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost, r.status, hb.zipname, hb.ziptype, hb. zipaddr, hbi.imgpath, 
from binzip_reserve r
left join binzip_host_bbs hb
on r.binzip_host_bbs_idx = hb.idx
left join binzip_host_bbs_imgs hbi
on r.binzip_host_bbs_idx = hbi.binzip_host_bbs_idx
where r.status >= 0
and r.status < 4
and r.binzip_member_id = 'test3' 
order by r.binzip_host_bbs_idx, r.status

select hb.zipname, hb.ziptype, hb.zipaddr, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost, r.status, m.name, m.phone, r.payer, r.request, hbi.imgpath
from binzip_host_bbs hb
left join binzip_reserve r
on hb.idx = r.binzip_host_bbs_idx   
left join binzip_host_bbs_imgs hbi
on hbi.binzip_host_bbs_idx = hb.idx
left join binzip_member m
on m.id = hb.binzip_member_id
where hb.idx = 1
and r.reserve_startdate = '20211018'
and r.status = 2

delete from binzip_reserve
where status = ?
and binzip_host_bbs_idx = ?
and reserve_startdate = ?

commit

update binzip_reserve
set status = -1
where binzip_host_bbs_idx = ?
and reserve_startdate = ?
and status = ?

select hb.idx, hb.zipname, hb.ziptype, hb.zipaddr, r.reserve_startdate, r.reserve_enddate, r.peoplenum, r.cost
from binzip_host_bbs hb
left join binzip_reserve r
on hb.idx = r.binzip_host_bbs_idx
where r.binzip_member_id = 'test3'
and r.status = -1

select peoplenum, zipname, ziptype, zipaddr, cost, idx from binzip_host_bbs where binzip_member_id='test4' order by idx

select * from user_sequences

select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*
            from binzip_host_bbs a
            left join binzip_host_bbs_imgs b
            on a.idx = b.binzip_host_bbs_idx
            group by a.idx, a.binzip_member_id, a.host_name, a.host_email,
                a.host_phone, a.host_bank, a.host_acnumber, a.zipname,
                a.ziptype, a.zipaddr, a.cost, a.peoplenum,
                a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate
                
                
                
 ---use               
select * from      
    (select i.*
        ,r.binzip_member_id as r_id
        ,r.RESERVE_STARTDATE
        ,r.RESERVE_ENDDATE
        ,r.PEOPLENUM
        ,r.RESERVER_NAME
        ,r.RESERVER_PHONE
        ,r.PAYER
        ,r.RESERVER_BANK
        ,r.RESERVER_ACNUMBER
        ,r.COST
        ,r.REQUEST
        ,r.STATUS
    from 
        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*
        from binzip_host_bbs a
        left join binzip_host_bbs_imgs b
        on a.idx = b.binzip_host_bbs_idx
        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,
        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,
        a.ziptype, a.zipaddr, a.cost, a.peoplenum,
        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r
    where i.idx = r.BINZIP_HOST_BBS_IDX)
where r.BINZIP_HOST_BBS_IDX = ?
and r.RESERVE_STARTDATE = ?
and r.STATUS = ? ;

commit


;
---TEST
    select i.*
        ,r.binzip_member_id as r_id
        ,r.RESERVE_STARTDATE
        ,r.RESERVE_ENDDATE
        ,r.PEOPLENUM
        ,r.RESERVER_NAME
        ,r.RESERVER_PHONE
        ,r.PAYER
        ,r.RESERVER_BANK
        ,r.RESERVER_ACNUMBER
        ,r.COST
        ,r.REQUEST
        ,r.STATUS
        ,r.TODAYDATE
    from 
        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*
        from binzip_host_bbs a
        left join binzip_host_bbs_imgs b
        on a.idx = b.binzip_host_bbs_idx
        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,
        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,
        a.ziptype, a.zipaddr, a.cost, a.peoplenum,
        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r
    where i.idx = r.BINZIP_HOST_BBS_IDX
    and binzip_member_id = 'eunsa'; 
    
    
    --»èÁ¦
    DELETE FROM binzip_reserve WHERE idx = 4;
    SELECT * FROM binzip_reserve;
    
    commit;
    
---»ç¿ëÄõ¸®    
select * from      
    (select i.*
        ,r.binzip_member_id as r_id
        ,r.RESERVE_STARTDATE
        ,r.RESERVE_ENDDATE
        ,r.PEOPLENUM as r_pnum
        ,r.RESERVER_NAME
        ,r.RESERVER_PHONE
        ,r.PAYER
        ,r.RESERVER_BANK
        ,r.RESERVER_ACNUMBER
        ,r.COST as r_cost
        ,r.REQUEST
        ,r.STATUS
    from 
        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*
        from binzip_host_bbs a
        left join binzip_host_bbs_imgs b
        on a.idx = b.binzip_host_bbs_idx
        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,
        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,
        a.ziptype, a.zipaddr, a.cost, a.peoplenum,
        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r
    where i.idx = r.BINZIP_HOST_BBS_IDX)
where status >= 0
and status < 4
and r_id = 'test3';

----

and status < 4
and r_id = 'test3';



where r_id = 'test3';

and status >= 0
and status < 4
and r_id = 'eunsa';


select * from      
    (select i.*
        ,r.binzip_member_id as r_id
        ,r.RESERVE_STARTDATE
        ,r.RESERVE_ENDDATE
        ,r.PEOPLENUM as r_pnum
        ,r.RESERVER_NAME
        ,r.RESERVER_PHONE
        ,r.PAYER
        ,r.RESERVER_BANK
        ,r.RESERVER_ACNUMBER
        ,r.COST as r_cost
        ,r.REQUEST
        ,r.STATUS
    from 
        (select listagg(b.imgpath, ',') within group (order by a.idx) as imgpath, a.*
        from binzip_host_bbs a
        left join binzip_host_bbs_imgs b
        on a.idx = b.binzip_host_bbs_idx
        group by a.idx, a.binzip_member_id, a.host_name, a.host_email,
        a.host_phone, a.host_bank, a.host_acnumber, a.zipname,
        a.ziptype, a.zipaddr, a.cost, a.peoplenum,
        a.todaydate, a.contents, a.host_bbs_startdate, a.host_bbs_enddate) i, BINZIP_RESERVE r
    where i.idx = r.BINZIP_HOST_BBS_IDX)
where status >= 0
and status < 4
and r_id = 'test3';



--



