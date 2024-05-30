
public class PaymentRecord extends StudentRecord {
    
    private float fAmountPaid;
    private float fPrevBal;
    private float fNewBal;

    public PaymentRecord(int recordID, int studentID, String date, float fAmountPaid, float fPrevBal, float fNewBal)
    {
        super(recordID,studentID,date);
        this.fAmountPaid = fAmountPaid;
        this.fPrevBal = fPrevBal;
        this.fNewBal = fNewBal;
    }

    public float getAmountPaid()
    {
        return fAmountPaid;
    }

    public float getPrevBalance()
    {
        return fPrevBal;
    }

    public float getNewBalance()
    {
        return fNewBal;
    }
}
