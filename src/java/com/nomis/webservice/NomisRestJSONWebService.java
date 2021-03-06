/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.nomis.webservice;

import com.fhi.kidmap.dao.CaregiverDao;
import com.fhi.kidmap.dao.CaregiverDaoImpl;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;

/**
 * REST Web Service
 *
 * @author smomoh
 */

@Path("welcome")
public class NomisRestJSONWebService {
    @Context
    private UriInfo context;

    /** Creates a new instance of NomisRestJSONWebService */
    public NomisRestJSONWebService() {
    }

    /**
     * Retrieves representation of an instance of com.nomis.webservice.NomisRestJSONWebService
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/json")
    public List getJson()
    {
        List list=null;
        CaregiverDao cgiverdao=new CaregiverDaoImpl();
        try
        {
            list=cgiverdao.getListOfCaregivers(" and hhe.stateCode='FCT' ");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return list;
        //TODO return proper representation object
        //throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of NomisRestJSONWebService
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }
}
