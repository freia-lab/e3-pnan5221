# This should be a test or example startup script

require pnan5221

# One can add the database used by the scan server scripts or it can be used in a dedicated IOC

# This is for scanning motor 1 (resonance frequency read from trace 2 of the spectrum vector analuzer)
dbLoadRecords("$(pnan5221_DB)mtr-scan.template", "P=LLRF:,N=1,MRKR=2")

# This is for scanning motor 2 (resonance frequency read from trace 3 of the spectrum vector analuzer)
dbLoadRecords("$(pnan5221_DB)mtr-scan.template", "P=LLRF:,N=2,MRKR=3")

#iocshLoad("$(pnan5221_DIR)/pnan5221.iocsh", "IP=192.168.10.33")

