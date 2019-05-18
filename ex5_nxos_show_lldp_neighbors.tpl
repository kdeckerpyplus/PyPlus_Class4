Value DEVICE_ID (\S+)
Value LOCAL_INTERFACE (\S+)
Value CAPABILITY ([RBTCWPSO]*)
Value PORT_ID (\S+)

Start
  ^Device ID\s+Local Intf\s+Hold-time\s+Capability\s+Port ID\s*$$ -> ShowLLDPNeighTable

ShowLLDPNeighTable
  ^${DEVICE_ID}\s+${LOCAL_INTERFACE}\s+\d+\s+${CAPABILITY}\s+${PORT_ID}\s*$$ -> Record

EOF
