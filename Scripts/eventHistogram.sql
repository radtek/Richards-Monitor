SELECT * 
FROM gv$event_histogram eh
WHERE eh.event != 'AQ Proxy Cleanup Wait'
  AND eh.event != 'ASM background timer'
  AND eh.event != 'DBRM Logical Idle Wait'
  AND eh.event != 'DIAG idle wait'
  AND eh.event != 'EMON idle wait'
  AND eh.event != 'EMON slave idle wait'
  AND eh.event != 'IORM Scheduler Slave Idle Wait'
  AND eh.event != 'KSV master wait'
  AND eh.event != 'LNS ASYNC archive log'
  AND eh.event != 'LNS ASYNC dest activation'
  AND eh.event != 'LNS ASYNC end of log'
  AND eh.event != 'LogMiner: client waiting for transaction'
  AND eh.event != 'LogMiner: generic process sleep'
  AND eh.event != 'LogMiner: reader waiting for more redo'
  AND eh.event != 'LogMiner: slave waiting for activate message'
  AND eh.event != 'LogMiner: waiting for processes to soft detach'
  AND eh.event != 'LogMiner: wakeup event for builder'
  AND eh.event != 'LogMiner: wakeup event for preparer'
  AND eh.event != 'LogMiner: wakeup event for reader'
  AND eh.event != 'MRP redo arrival'
  AND eh.event != 'Null event'
  AND eh.event != 'PING'
  AND eh.event != 'PX Deq Credit: need buffer'
  AND eh.event != 'PX Deq Credit: send blkd'
  AND eh.event != 'PX Deq: Execute Reply'
  AND eh.event != 'PX Deq: Execution Msg'
  AND eh.event != 'PX Deq: Par Recov Execute'
  AND eh.event != 'PX Deq: Signal ACK'
  AND eh.event != 'PX Deq: Table Q Normal'
  AND eh.event != 'PX Deq: Table Q Sample'
  AND eh.event != 'PX Deque wait'
  AND eh.event != 'PX Idle Wait'
  AND eh.event != 'Queue Monitor Shutdown Wait'
  AND eh.event != 'Queue Monitor Slave Wait'
  AND eh.event != 'Queue Monitor Wait'
  AND eh.event != 'SQL*Net message from client'
  AND eh.event != 'SQL*Net message to client'
  AND eh.event != 'SQL*Net more data from client'
  AND eh.event != 'STREAMS apply coord waiting for slave message'
  AND eh.event != 'STREAMS apply slave idle wait'
  AND eh.event != 'STREAMS apply slave waiting for coord message'
  AND eh.event != 'STREAMS capture process filter callback wait for ruleset'
  AND eh.event != 'STREAMS fetch slave waiting for txns'
  AND eh.event != 'STREAMS waiting for subscribers to catch up'
  AND eh.event != 'Space Manager: slave idle wait'
  AND eh.event != 'Streams AQ: RAC qmn coordinator idle wait'
  AND eh.event != 'Streams AQ: deallocate messages from Streams Pool'
  AND eh.event != 'Streams AQ: delete acknowledged messages'
  AND eh.event != 'Streams AQ: qmn coordinator idle wait'
  AND eh.event != 'Streams AQ: qmn slave idle wait'
  AND eh.event != 'Streams AQ: waiting for messages in the queue'
  AND eh.event != 'Streams AQ: waiting for time management or cleanup tasks'
  AND eh.event != 'Streams capture: waiting for archive log'
  AND eh.event != 'Streams fetch slave: waiting for txns'
  AND eh.event != 'class slave wait'
  AND eh.event != 'client message'
  AND eh.event != 'cmon timer'
  AND eh.event != 'dispatcher timer'
  AND eh.event != 'fbar timer'
  AND eh.event != 'gcs for action'
  AND eh.event != 'gcs remote message'
  AND eh.event != 'ges remote message'
  AND eh.event != 'i/o slave wait'
  AND eh.event != 'jobq slave wait'
  AND eh.event != 'knlqdeq'
  AND eh.event != 'lock manager wait for remote message'
  AND eh.event != 'master wait'
  AND eh.event != 'null event'
  AND eh.event != 'parallel query dequeue'
  AND eh.event != 'parallel recovery coordinator waits for slave cleanup'
  AND eh.event != 'parallel recovery slave idle wait'
  AND eh.event != 'parallel recovery slave next change'
  AND eh.event != 'parallel recovery slave wait for change'
  AND eh.event != 'pipe get'
  AND eh.event != 'pmon timer'
  AND eh.event != 'pool server timer'
  AND eh.event != 'queue messages'
  AND eh.event != 'rdbms ipc message'
  AND eh.event != 'slave wait'
  AND eh.event != 'smon timer'
  AND eh.event != 'virtual circuit status'
  AND eh.event != 'wait for activate message'
  AND eh.event != 'wait for unread message on broadcast channel'
  AND eh.event != 'wakeup event for builder'
  AND eh.event != 'wakeup event for preparer'
  AND eh.event != 'wakeup event for reader'
  AND eh.event != 'wakeup time manager'
  AND eh.event != 'watchdog main loop'