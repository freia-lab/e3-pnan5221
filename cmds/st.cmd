# This should be a test or example startup script

require pnan5221,main

drvAsynIPPortConfigure("PORT1","192.168.10.33:5025",0,0,0)

#Indicate the folder where the protocol file is installed
epicsEnvSet("STREAM_PROTOCOL_PATH","$(pnan5221_DB)")

#Load your database defining the EPICS records
dbLoadRecords("pnan5221.db", "PORT=PORT1,P=LLRF-PNA,DEV=Meas")
