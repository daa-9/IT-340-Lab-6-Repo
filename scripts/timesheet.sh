#!/bin/bash
# Logging worker, their time working, and summary of their tasks

LOGFILE="/home/developers/Lab_6_workspace/logs/timesheet.log"

# Prompts for identifying information and time spent working with a desc.
echo -n "First Name: "
read fname
echo -n "Last Name: "
read lname
echo -n "Number of Hours Worked: "
read hours
echo -n "Description of Work: "
read desc

# Saving information to timesheet.log
echo "${fname} ${lname}" >> $LOGFILE
echo "Hours Worked: ${hours}" >> $LOGFILE
echo "Description: ${desc}" >> $LOGFILE
echo "" >> $LOGFILE

# Creating a copy of timesheet.log into Lab_6_workspace/data
cp $LOGFILE /home/developers/Lab_6_workspace/data/
