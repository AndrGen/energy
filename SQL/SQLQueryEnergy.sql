select 
	LEFT(CONVERT(nvarchar(20), DATEADD(MINUTE, -30, mv_act_in.value_dt), 108), 5) + ' - ' + LEFT(CONVERT(nvarchar(20), mv_act_in.value_dt, 108), 5) as time_diff, 
	max(mv_act_in.value) as act_in, 
	max(mv_act_out.value) as act_out, 
	max(mv_react_in.value) as react_in, 
	max(mv_react_out.value) as react_ot,
	mv_act_in.value_dt as value_dt,
	mv_act_in.meter_id as meter_id
from measuring_values mv_act_in
inner join (select mv.value_dt, mv.value, meter_id from measuring_values mv where mv.parametr_id = 2) as mv_act_out ON  mv_act_out.meter_id = mv_act_in.meter_id and mv_act_out.value_dt = mv_act_in.value_dt
inner join (select mv.value_dt, mv.value, meter_id from measuring_values mv where mv.parametr_id = 3) as mv_react_in ON  mv_react_in.meter_id = mv_act_in.meter_id and mv_react_in.value_dt = mv_act_in.value_dt
inner join (select mv.value_dt, mv.value, meter_id from measuring_values mv where mv.parametr_id = 4) as mv_react_out ON  mv_react_out.meter_id = mv_act_in.meter_id and mv_react_out.value_dt = mv_act_in.value_dt
where mv_act_in.parametr_id = 1
group by mv_act_in.value_dt, mv_act_in.meter_id
order by value_dt



select * from energy_report_view where meter_id = 1 and value_dt between '2016-01-01' and '2016-02-01'                                                                                                                                                                                                                         