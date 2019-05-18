Value INTERFACE (\S+)
Value LINE_STATUS (\w+)
Value ADMIN_STATE (\w+)
Value MAC_ADDRESS (\w{4}.\w{4}.\w{4})
Value MTU (\d+)
Value DUPLEX (\w+)
Value SPEED (\d+ \S+)

Start
  ^${INTERFACE} is ${LINE_STATUS}
  ^admin state is ${ADMIN_STATE},\s+
  ^\s+Hardware:\s+\w+,\s+address: ${MAC_ADDRESS}\s+
  ^\s+MTU ${MTU} bytes
  ^\s+${DUPLEX}-duplex, ${SPEED}\s*$$

