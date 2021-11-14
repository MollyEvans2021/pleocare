SELECT HOUR(TIMEDIFF(end, start)) as `difference` FROM tbl_active_shifts

SELECT tblusers.ID, tblusers.firstname, tblBookedShifts.bID, tblBookedShifts.shiftID, tblBookedShifts.status, tbl_active_shifts.salary, tbl_active_shifts.start, tbl_active_shifts.end,WEEKDAY(start),WEEKDAY(end) FROM tblusers INNER JOIN (tbl_active_shifts INNER JOIN tblBookedShifts ON tbl_active_shifts.shiftID = tblBookedShifts.shiftID) ON tblusers.ID = tblBookedShifts.id

SELECT tblusers.ID, tblusers.firstname, tblBookedShifts.bID, tblBookedShifts.shiftID, tblBookedShifts.status, tbl_active_shifts.salary, tbl_active_shifts.start, tbl_active_shifts.end,WEEKDAY(start),WEEKDAY(end), HOUR(TIMEDIFF(end, start)) as difference
FROM tblusers INNER JOIN (tbl_active_shifts INNER JOIN tblBookedShifts ON tbl_active_shifts.shiftID = tblBookedShifts.shiftID) ON tblusers.ID = tblBookedShifts.id

#Earnings
SELECT shiftID, salary*difference AS total_price from Eearnings
