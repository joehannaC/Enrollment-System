public class StudentProfile {

    private int sID;
    private String sFullName;
    private Course arrEnrolled[];
    private int nUnits;


    public StudentProfile(int sID, String surname, String firstname, Course arrEn[])
    {
        this.sID = sID;
        this.sFullName = surname + ", " + firstname;
        this.arrEnrolled = arrEn;
        calcUnits();
    }

    public int getStudentID()
    {
        return sID;
    }

    public String getFullName()
    {
        return this.sFullName;
    }

    private void calcUnits()
    {
        int y = arrEnrolled.length,
            x;
        nUnits = 0;
        for(x = 0; x < y; x++)
        {
            nUnits += arrEnrolled[x].getUnits();
        }
    }

    public int getUnits()
    {
        return this.nUnits;
    }

}