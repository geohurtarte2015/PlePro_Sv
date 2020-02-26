

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <title>Ple</title>
    
   
    <!-- Bootstrap CSS-->
    <link href="plantilla/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Jquery -->
     <script src="plantilla/js/jquery-1.9.1.min.js"></script>
   
    
       <!-- DatePick -->
    <link href="plantilla/bootdate/build/css/bootstrap-datetimepicker.css" rel="stylesheet">    
     
    <!-- Boostrap Js -->
    <script src="plantilla/js/bootstrap.min.js"></script> 
    
    <!-- Font Awesome -->
    <link href="plantilla/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="plantilla/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="plantilla/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    
    <!-- Alert Bootbox -->
    <script src="plantilla/bootbox/bootbox.min.js"></script> 
    
   
    <!-- Custom Theme Style -->
    <link href="plantilla/build/css/custom.min.css" rel="stylesheet">
    
    <!-- Style Modal -->
     <style>
        .modal-header, h4, .close {
            background-color: #5cb85c;
            color:white !important;
            text-align: center;
            font-size: 30px;
        }
        .modal-footer {
            background-color: #f9f9f9;
        }
    </style>

    
 
    
  </head>

  <body class="nav-md">
      
  
      
    <% 
        String nombre = (String) session.getAttribute("nombre");    
        String apellido = (String) session.getAttribute("apellido");
        String rol = (String) session.getAttribute("rol");
            
            String display1 = "display:block";
            String display2 = "display:block";
            String display3 = "display:block";
            String display4 = "display:block";
            String display5 = "display:block";
            String display6 = "display:block";
            String display7 = "display:block";
            String displaySegmentacion = "display:block";
            
            int selectRol = Integer.parseInt(rol);
            
            switch (selectRol){
             
                case 2:   
                        displaySegmentacion = "display:none";
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        display6 = "display:none";
                        response.sendRedirect("principal.jsp");
                    break;
                case 3:
                        display1 = "display:none"; 
                        display5 = "display:none"; 
                        display6 = "display:none";
                  
                    break;      
                 case 4:
                        display5 = "display:none";               
                       
                        break; 
                 case 5:
                        display1 = "display:none"; 
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display6 = "display:none";
                        response.sendRedirect("principal.jsp");
                        break; 
                  case 6:
                        display1 = "display:none"; 
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        response.sendRedirect("principal.jsp");
                        break; 
                   case 7:
                        displaySegmentacion = "display:none"; 
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        response.sendRedirect("principal.jsp");
                        break;
            }
    %>
         

        
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="principal.jsp" class="site_title"><span>CLARO</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
            
              <div class="profile_info">
                     <span>Bienvenido,<%=" "+nombre%></span>
                <h2></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />
             <br />
              <br />
               <br />
                <br />

  
             <!-- sidebar menu -->
              <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <!-- <li><a><i class="fa fa-home"></i> Consultas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="#">Consulta aprovisionamientos</a></li>
                       <li><a href="#">Consulta aprovisionamientos</a></li>    
                      <li><a href="#">Consulta notificaciones</a></li>    
                       <li><a href="#">Modificaciones</a></li>   
                    </ul>
                  </li>-->
                    <li style="<%=display1%>"><a><i class="fa fa-cogs"></i> Catalogos <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                          <li><a href="configuracion.jsp">Configuracion</a></li>  
                          <li><a href="aprovisionarpacks.jsp">Aprovisionar</a></li> 
                      </ul>
                  </li>
                  <li style="<%=display6%>"><a><i class="fa fa-home"></i> Consultas <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="aprovisionamiento.jsp">Consulta aprovisionamientos</a></li>  
                      <li><a href="notification.jsp">Consulta notificaciones</a></li>  
                     <!--  <li><a href="modificacion.jsp">Modificaciones</a></li>   -->
                    </ul>
                  </li>                  
                  <li style="<%=displaySegmentacion%>"><a><i class="fa fa-mobile"></i>Focalizada POS <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                            
                          <li style="<%=display3%>"><a href="creacion.jsp">Carga de clientes POS</a></li> 
                          <li style="<%=display4%>"><a href="eliminar.jsp">Eliminar clientes POS</a></li>   
                          <li style="<%=display7%>"><a href="mantenimiento.jsp">Mantenimiento clientes POS</a></li>
                      </ul>
                  </li>
                  <li style="<%=display5%>"><a><i class="fa fa-user-plus"></i> Administración <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                          <li><a href="userManagement.jsp">Usuarios y Perfiles</a></li>                     
                      </ul>
                  </li>
                </ul>
              </div>
            </div>    
            <!-- /sidebar menu -->

         
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    Opciones
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">                    
                    <li><a href="EndSesion"><i class="fa fa-sign-out pull-right"></i> Salir</a></li>
                  </ul>
                </li>
         
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
                     
                 
            <h1>Eliminar MSISDN</h1>            
            <div class="modal-footer">
                <div class="panel-body">  
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Elegir segmentación</label>
                            <select name="Product" id="Product" class="form-control" required="">

                            </select>
                        </div>
                    </div>
                </div>
                
                <form  method="post" role="form" action="DeletePhone" enctype="multipart/form-data" id="fileUploadFormList">
                    <!--<input type="hidden" id="option" name="option" value="1"> -->
                  <div class="panel-body">                    
                        <div class="col-sm-4">                                
                            <div class="form-group">
                                <label for="file" id="labelFileList" name="labelFileList"></label>                                     
                                <input type="file" class="form-control-file" name="fileList" id="fileList">
                                <button type="button" class="btn btn-danger" data-loading-text="Loading ..."  id="btnSubmitList"> Cargar </button>
                                <button type="button" class="btn btn-danger"   id="btnSubmitTest"> Test </button>
                            </div>                                 
                        </div> 
                  </div>
                    <div class="panel-body"> 
                        <div class="col-sm-4">                           
                            <div class="form-group">
                                Descarga de formato CSV:
                                <a href="option/formato.csv" download="format.csv">
                                    <img src="img/excel.png" alt="W3Schools" width="80" height="80">
                                </a>
                            </div>                                 
                        </div> 
                    </div>
                       
                    </div>
                  
                </form>
                <div class="container">
                     <div id="alertsWebservice"></div>
                       <div id="alertsInsert"></div>
                       <div id="alertsUpload"></div> 
                    
                </div>
                     
                
            </div>       
   

            <br />

          



        
        </div>
        

        
      

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Segmented Packages - Desarrollado por <a href="https://www.claro.com.gt">Desarrollo de Productos</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>


    

    <!-- Custom Theme Scripts -->
    <script src="plantilla/build/js/custom.min.js"></script>
    
              
    <!-- bootstrap-daterangepicker -->
    <script src="plantilla/vendors/moment/min/moment.min.js"></script>
    <script src="plantilla/bootdate/src/js/bootstrap-datetimepicker.js"></script>  
    
    <!-- Datatables -->
    <script src="plantilla/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="plantilla/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="plantilla/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="plantilla/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="plantilla/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="plantilla/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="plantilla/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="plantilla/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="plantilla/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="plantilla/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="plantilla/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="plantilla/vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
    <script src="plantilla/vendors/jszip/dist/jszip.min.js"></script>
    <script src="plantilla/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="plantilla/vendors/pdfmake/build/vfs_fonts.js"></script>


    
     <script type="text/javascript">
        var id;
        var rol;
        var data = new FormData();
        
              $(function () {
                       $('#fechainicio').datetimepicker({
                           format: "DD-MM-YYYY hh:mm:ss a"                      
                           });
                       });

        $(function () {
                       $('#fechafinal').datetimepicker({
                           format: "DD-MM-YYYY hh:mm:ss a"                      
                           });
                       });
        

        
        $(document).ready(function(){                       
           $.post("GetProudct", function(json){ 
               $("#Product").append('<option value="-1">Seleccionar...</option>');
                $.each(json, function (key,value) {
                    $.each(value, function (id, description) {
                        $("#Product").append('<option value="'+id+'">'+description+'</option>');
                    });
                });
               
                        
            
            });
           
           $("#btnSubmitList").click(function (event) {
               
               $(this).button('loading').delay(1000).queue(function() {

                    //stop submit the form, we will post it manually.
                    event.preventDefault();

                    // Get form
                    var form = $('#fileUploadFormList')[0];

                    // Create an FormData object 
                    var data = new FormData(form);

                    // If you want to add an extra field for the FormData
                    //data.append("id",$( "#Product" ).val());

                    // disabled the submit button
                    $("#btnSubmitList").prop("disabled", true);

                    $.ajax({
                        type: "POST",
                        enctype: 'multipart/form-data',
                        url: "DeletePhone",
                        data: data,
                        processData: false,
                        contentType: false,
                        cache: false,
                        timeout: 600000,
                        success: function (data) { 
                            $("#btnSubmitList").button('reset');
                            $("#btnSubmitList").dequeue();
                            bootbox.alert({
                                message: "Cargado",
                                callback: function () {
                                    
                                     if (data.phones == "ok") {                                         
                                          $('#alertsInsert').html("<div class='alert alert-success alert-dismissible'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a> <strong>Resultado </strong>"+"Eliminacion  MSISDN correcta: "+data.phones+"</div>");                                         
                                     }else{                                         
                                         $('#alertsInsert').html("<div class='alert alert-danger alert-dismissible'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a> <strong>Resultado </strong>"+"Error al eliminar </div>");
                                     }
                                    
                                                                       
                                    $("#labelFileList").val('');
                                    $("#fileList").val('');
                                },
                                size: 'small'
                            });
                            
                            $("#btnSubmitList").prop("disabled", false);
                        },
                        error: function (e) {
                              bootbox.alert({
                                message: "Error en carga del archivo",
                                callback: function () {
                                    $("#labelFileList").val('');
                                    $("#fileList").val('');
                                },
                                size: 'small'
                            });
                            $("#btnSubmitList").prop("disabled", false);
                        }
                    });
                  }); 
            });
            
            $("#btnSubmitTest").click(function() {
               var tableParameter="parameter";
               var  auditory="auditory";                
                            $.post(
                                "PropertiesResponse",
                                {
                                    tableParameter: tableParameter,
                                    auditory: auditory

                                },
                        function (data) {
                            alert(data);
                        });
            });
                
                
               
 
            
            
           $("#limpiar").click(function(){
                        $("#stb").val('');
                        $("#address").val('');
                        $("#packs").val('');  
            }); 
            
            
           $("#modificar").click(function(){
                $("#idRolHidden").val($("#RolUpdate").prop('selectedIndex')); 
            });
            
            
            
            
     
            
         });
         
         
         
    </script>


  </body>
</html>

