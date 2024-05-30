import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class CourseSchedule {
    private int cID;
    //private String cSection;
    private String dateStart;
    private String dateEnd;
    private String timeStart;
    private String timeEnd;
    private int weekdaySessions[] = {0,0,0,0,0};

    public CourseSchedule(int cID, String dateS, String dateE, String timeS, String timeE)
    {
        this.cID = cID;
        this.dateStart = dateS;
        this.dateEnd = dateE;
        this.timeStart = timeS;
        this.timeEnd = timeE;
    }
}
