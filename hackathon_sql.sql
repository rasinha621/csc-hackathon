SELECT 
  voterbase_id,
  vb_tsmart_first_name,
  vb_tsmart_last_name
  tmc_cell_phone,
  ts_tsmart_ideology_score,
  vb_vf_source_state,
  ad_info,
FROM prj-training-ao7c,voterfiles.voterfile_snapshot p
JOIN prj-training-ao7c.data_mart.ads_data a 
ON p.voterbase_id = a.voterbase_id
where p.vb_vf_p2016 = 'D'
where p.vb_voterbase_age in (50,51,52,53,54,55,56,57,58,59,60,61,62,63,64)
ORDER BY latest_timestamp 
GROUP BY dvoterbase_id
