SELECT * 
FROM (SELECT /*+ ordered use_nl (b st) */ TO_CHAR((e.executions - NVL(b.executions, 0)), '999,999,999') "Executions"
      ,      TO_CHAR((NVL(e.rows_processed, 0) - NVL(b.rows_processed, 0)), '99,999,999,999') "Rows Processed"
      ,      TO_CHAR(DECODE(NVL(e.rows_processed, 0) - NVL(b.rows_processed, 0), 0, 0, (e.rows_processed - NVL(b.rows_processed, 0)) / (e.executions - NVL(b.executions, 0))), '9,999,999,990.0') "Rows per Execution"
      ,      NVL(TO_CHAR((e.cpu_time - NVL(b.cpu_time, 0)) / (e.executions - NVL(b.executions, 0)) /1000000, '999990.00'), ' ') "CPU per Exec   ( s )  "
      ,      NVL(TO_CHAR((e.elapsed_time - NVL(b.elapsed_time, 0)) / (e.executions - NVL(b.executions, 0)) /1000000, '9999990.00'), ' ') "Elapsed per Exec (s)"
      ,      TRIM(TO_CHAR(SUBSTR(st.sql_text, 1, 50))) "SQL Text"
      ,      e.old_hash_value "Top SQL Hash Value" 
      FROM stats$sql_summary e
      ,    stats$sql_summary b
      ,    stats$sqltext st 
      WHERE b.snap_id (+) = ? 
        AND b.dbid (+) = e.dbid 
        AND b.instance_number (+) = e.instance_number 
        AND b.old_hash_value (+) = e.old_hash_value 
        AND b.address (+) = e.address 
        AND b.text_subset (+) = e.text_subset 
        AND e.snap_id = ? 
        AND e.dbid = ? 
        AND e.instance_number = ? 
        AND e.old_hash_value = st.old_hash_value 
        AND e.text_subset = st.text_subset 
        AND st.piece <= 1 
        AND e.executions > NVL(b.executions, 0) 
      ORDER BY (e.executions - NVL(b.executions, 0)) desc
      ,        e.old_hash_value
      ,        st.piece ) 
WHERE rownum <= 40;