Value INTERFACE (\S+)
Value STATUS (\w+)
Value VLAN (\w+)
Value DUPLEX (\w+)
Value SPEED (\w+)
Value PORT_TYPE (\S+)

Start
  # (Don't include the header line in any records)
  ^Port -> ShowIPIntBriefTable

ShowIPIntBriefTable
  ^${INTERFACE}\s+${STATUS}\s+${VLAN}\s+${DUPLEX}\s+${SPEED}\s+${PORT_TYPE}\s*$$ -> Record

EOF
