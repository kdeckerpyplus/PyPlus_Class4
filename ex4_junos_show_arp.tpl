Value MAC_ADDRESS ((\w{2}:){5}\w{2})
Value IP_ADDRESS ((\d{1,3}.){3}\d{1,3})
Value NAME (\S+)
Value INTERFACE (\S+)

Start
  ^MAC Address\s+ -> ShowARPTable

ShowARPTable
  ^${MAC_ADDRESS}\s+${IP_ADDRESS}\s+${NAME}\s+${INTERFACE}\s+ -> Record

EOF
