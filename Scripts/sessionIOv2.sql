SELECT s.sid
,      TO_CHAR(block_gets, '999,999,999,990' ) "Blocks Gets"
,      TO_CHAR(consistent_gets, '999,999,999,990' ) "Consistent Gets"
,      TO_CHAR(physical_reads, '999,999,999,990' ) "Physical Reads"
,      TO_CHAR(block_changes, '999,999,999,990' ) "Block Changes"
,      TO_CHAR(consistent_changes, '999,999,999,990' ) "Consistent Changes" 
FROM gv$sess_io s 
,    gv$session sess
WHERE s.sid like ? 
and s.sid = sess.sid
and s.inst_id = sess.inst_id
ORDER BY block_gets desc 
/
