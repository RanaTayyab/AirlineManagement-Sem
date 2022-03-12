/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebServices;

import Model.FlightBooked;
import Model.MyDatabase;
import Model.ProfileUser;
import com.sun.rowset.WebRowSetImpl;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.rowset.WebRowSet;

/**
 *
 * @author Tayyab
 */
@WebService(serviceName = "SeatPrice")
public class SeatPrice {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     * @param departure
     */
    @WebMethod(operationName = "GetPrice")
    public int GetPrice(@WebParam(name = "departure") String departure, @WebParam(name = "arrival") String arrival) {
        try {
            ProfileUser pf=new ProfileUser();
            pf.setArrival(arrival);
            pf.setDeparture(departure);
            return  pf.SearchFlightWebservice();
            
            //TODO write your implementation code here:
        } catch (SQLException ex) {
            Logger.getLogger(SeatPrice.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SeatPrice.class.getName()).log(Level.SEVERE, null, ex);
        }
       return 0;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "NoOfSeats")
    public int NoOfSeats(@WebParam(name = "flightno") String flightno, @WebParam(name = "date") String date) {
        try {
            FlightBooked fb=new FlightBooked();
            fb.setFlightno(flightno);
            fb.setMailis(date);
            
            
            return  fb.NoOfSeatsWebservice();
            
            //TODO write your implementation code here:
        } catch (SQLException ex) {
            Logger.getLogger(SeatPrice.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SeatPrice.class.getName()).log(Level.SEVERE, null, ex);
        }
       return 0;
    }
    

}
