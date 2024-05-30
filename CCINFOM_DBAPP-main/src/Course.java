public class Course {
    private int cID;
    private String cSection;
    private int nUnits;
    private int maxCap;

    private int nEnrolled;

    public Course(int cID, String cSection, int nUnits, int maxCap, int nEnrolled)
    {
        this.cID = cID;
        this.cSection = cSection;
        this.nUnits = nUnits;
        this.maxCap = maxCap;
        this.nEnrolled = nEnrolled;
    }

    public int getUnits()
    {
        return this.nUnits;
    }
}
