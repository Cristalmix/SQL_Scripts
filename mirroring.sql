create endpoint nombreEndpoint
state = started
as tcp (LISTENER_PORT = 5023)
for DATABASE_MIRRORING (ROLE=PARTNER);


--drop endpoint mirroring


--select * from sys.tcp_endpoints


grant connect on endpoint::nombreEndpoint to public

alter database [bdTest] set partner = 'TCP://10.128.0.2:5022'
