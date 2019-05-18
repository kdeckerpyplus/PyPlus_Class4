Value PORT_NAME (\S+)

Start
  # (Don't include the header line in any records)
  ^Port -> ShowIPIntBriefTable

ShowIPIntBriefTable
  ^${PORT_NAME}\s+ -> Record

EOF
