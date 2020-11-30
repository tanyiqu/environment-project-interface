package com.object;

public class holiday {
    private Integer holidayId;
    private String holidayName;
    private String holidDate;
    private String holidayReason;

    public holiday() {
    }

    public holiday(Integer holidayId, String holidayName, String holidDate, String holidayReason) {
        this.holidayId = holidayId;
        this.holidayName = holidayName;
        this.holidDate = holidDate;
        this.holidayReason = holidayReason;
    }

    public Integer getHolidayId() {
        return holidayId;
    }

    public void setHolidayId(Integer holidayId) {
        this.holidayId = holidayId;
    }

    public String getHolidayName() {
        return holidayName;
    }

    public void setHolidayName(String holidayName) {
        this.holidayName = holidayName;
    }

    public String getHolidDate() {
        return holidDate;
    }

    public void setHolidDate(String holidDate) {
        this.holidDate = holidDate;
    }

    public String getHolidayReason() {
        return holidayReason;
    }

    public void setHolidayReason(String holidayReason) {
        this.holidayReason = holidayReason;
    }

    @Override
    public String toString() {
        return "holiday{" +
                "holidayId=" + holidayId +
                ", holidayName='" + holidayName + '\'' +
                ", holidDate='" + holidDate + '\'' +
                ", holidayReason='" + holidayReason + '\'' +
                '}';
    }
}
