import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class StudentRecord {

    protected int rID;
    protected int sID;
    protected LocalDate dateMade;
    private DateTimeFormatter format;

    public StudentRecord(int rID, int sID, String date) 
    {
        this.rID = rID;
        this.sID = sID;
        format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"); //Please encode record dates + times in SQL as TIMESTAMPs.
        dateMade = LocalDate.parse(date,format);
       //sql datetime = YYYY-MM-DD HH:MI:SS
       //java translation = yyyy-MM-dd HH:mm:ss
    }

    public int getRecordID()
    {
        return this.rID;
    }

    public int getStudentID()
    {
        return this.sID;
    }

}