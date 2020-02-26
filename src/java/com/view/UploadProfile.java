
package com.view;


import com.controller.ReadCsv;
import com.model.DaoObject;
import com.pojo.Phone;
import com.pojo.ProfileList;
import com.pojo.Response;
import com.pojo.ResultList;
import com.pojo.ResultListProfile;
import com.pojo.ResultUpload;
import com.webservice.GetWebservice;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet("/uploadProfile")
@MultipartConfig
public class UploadProfile extends HttpServlet {
    
    private  String UPLOAD_DIR = "uploads";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
           
        try {            
           ArrayList<ProfileList> listProfile = null;
           ServletFileUpload  upload = new ServletFileUpload();
           FileItemIterator iter = upload.getItemIterator(request);  
           DaoObject daoObject = new DaoObject();
           int option=-1;  
           int countReadRows=0;
           int countErrors=0;
           int countInvalid=0;
           int countOk=0;
           
           int countRows = 0;
       
           //String user = (String) request.getSession().getAttribute("usuario");  
          // String ip = request.getRemoteAddr();
             
    
           //int idUpload = daoObject.getSequence("select SEQ_POS_UPLOAD_FOCALIZADOS.nextval from dual");
                      
           
           //Parse read file csv
            ReadCsv readCsv = new ReadCsv();
            ResultListProfile resultList=readCsv.getReadCsvProfile(iter);            
           
            listProfile = resultList.getListProfileList();            
            if (!listProfile.isEmpty()){
                countRows=listProfile.size();
            }       
          
            
           //insert details nameFile upload 
//           ResultUpload resultUpload = new ResultUpload();
//           resultUpload.setId(idUpload);
//           resultUpload.setFileName(nameFile);
//           resultUpload.setIp(ip);
//           resultUpload.setProcessedRecords(countRows);
//           resultUpload.setUserName(user);
//           String responseSqlDetails = daoObject.insertUpload(resultUpload);
           
           //insert phones numbers 
           ArrayList<Response> responseSqlPhones = daoObject.insertProfileStoreProcedure(listProfile);
       
           int sizeArray = responseSqlPhones.size();

         
           for(int x=0;x<sizeArray;x++){
               if(responseSqlPhones.get(x).getCode()==0){
                   countOk++;
               }else{
                   countInvalid++;
               }
           
           }
           
           
           //number rows read in file
           countReadRows=countRows;
                      
           //get count errors
           //countErrors = daoObject.getCountError("select count(*) from TB_POS_LOAD_DETAIL where ID_UPLOAD="+idUpload+" order by id asc");
           
           // succesful insert  msisdn in data base
           int countInsert = countReadRows - countErrors;
           
           //Response webservice and parse response
           
           
           //prepare json response
            JSONObject json = new JSONObject();        
            
            
            json.put("countInvalid", countInvalid);
            json.put("countOk", countOk);  
            
            json.put("responseResumeFile", resultList.getResponse().getResponseResume());
            json.put("responseDescriptionFile", resultList.getResponse().getDescription());  
            //json.put("idUpload",String.valueOf(idUpload));
            json.put("countRows",countInsert);
            json.put("countErrors",countErrors);
            json.put("countInsert", countInsert);
            response.setContentType("application/json");
            response.getWriter().write(json.toString());
  
           
           
           // response.sendRedirect("creacion.jsp");
                    } catch (FileUploadException ex) {
                            System.out.println("Error File Upload: "+ex);
                    } catch (JSONException ex) {
                            System.out.println("Error Json read: "+ex);
        }
           
        }
    


  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
