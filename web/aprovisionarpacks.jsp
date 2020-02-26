

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
    
    <link href="plantilla/bower_components/charts/highcharts.js" rel="stylesheet">
    <link href="plantilla/bower_components/charts/jquery.highchartsTable.js" rel="stylesheet">

       <!-- DatePick -->
    <link href="plantilla/bootdate/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    
    <!-- Bootstrap -->
    <link href="plantilla/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="plantilla/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="plantilla/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="plantilla/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="plantilla/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="plantilla/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="plantilla/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="plantilla/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="plantilla/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    

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
     <style id="compiled-css" type="text/css">
    
        table.display tbody tr:nth-child(even):hover td{
            background-color: #ffc2c2;
        }

        table.display tbody tr:nth-child(odd):hover td {
            background-color: #ffc2c2;
        }


  </style>

    
 
    
  </head>

  <body class="nav-md">
      
      
  <%  
        String nombre = (String) session.getAttribute("nombre");    
        String apellido = (String) session.getAttribute("apellido");
        String rol = (String) session.getAttribute("rol");
            
            String displaySegmentacion = "display:block";
            String display1 = "display:block";
            String display2 = "display:block";
            String display3 = "display:block";
            String display4 = "display:block";
            String display5 = "display:block";
            String display6 = "display:block";
                String display7 = "display:block";
            
            int selectRol = Integer.parseInt(rol);
            
            switch (selectRol){
             
                case 2:         
                        displaySegmentacion = "display:none";
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        display6 = "display:none";
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
                        displaySegmentacion = "display:none";
                        display1 = "display:none"; 
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display6 = "display:none";
                        break; 
                case 6:
                        displaySegmentacion = "display:none";
                        display1 = "display:none"; 
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        break; 
                case 7:
                       displaySegmentacion = "display:none";
                        display2 = "display:none";
                        display3 = "display:none";
                        display4 = "display:none";
                        display5 = "display:none";
                        break;  
            }
                   
%>
         

        
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><span>CLARO</span></a>
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
                            
            <h1>Aprovisionamiento de Paquetes</h1>
            
              <div class="modal-footer">
                  
                
                <div class="panel-body">
                            <form action="GetServiceAddPack" method="post" id="form_serviceAddPack">  
                                <div class="row"> 

                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>MSISDN</label>
                                            <input class="form-control" name="msisdn" id="msisdn" placeholder="Msisdn" requeried>
                                        </div>
                                    </div>   


                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>KEYWORD</label>
                                            <input class="form-control" name="keyword" id="keyword" placeholder="keyword" disabled>
                                        </div>
                                    </div>                       
                                </div>
                            <br>
                            <br>
                             <div class="row"> 
                                <div class="col-sm-4">
                                    <div class="form-group">
                                       <button type="submit" class="btn btn-primary">Aprovisionar</button>
                                       <button type="button" name="btnClearAprov" id = "btnClearAprov"  class="btn btn-primary">Limpiar</button>
                                    </div>
                                </div>
                               
                             </div>
                            </form>
                 
                  <br />
                  
                  <div class="col-lg-12">
                      <div class="panel-body">
                          <div class="table-responsive"> 
                              <div id="message" class="alert alert-success alert-dismissible fade in" role="alert">
                                  <button type="button" class="close" data-dismiss="alert">
                                  </button>
                                  <strong>Mensaje</strong> Cargando los datos, ¡espere un momento porfavor!.
                              </div>



                          </div>
                      </div>
                  </div>
                
                  <div class="row"> 
                <div class="col-lg-12">
                     <div class="panel panel-default">
                         <div class="panel-body">                           
                             <div class="table-responsive">
                                 <table id="TABLEPACKAPROV" class="table table-striped table-bordered table-hover" style="cursor:pointer"  cellspacing="0" width="100%">

                                     <tr>
                                         <th>SERVICE_ID</th>
                                         <th>DESCRIPTION</th>
                                         <th>TEXT_KEYWORD</th>
                                     </tr>
                                     </thead>

                                     <tfoot>
                                         <tr>
                                          <th>SERVICE_ID</th>
                                         <th>DESCRIPTION</th>
                                         <th>TEXT_KEYWORD</th>
                                         </tr>
                                     </tfoot>
                                 </table>
                             </div>
                         </div>
                     </div>
                 </div>
                  </div>  

              </div>
       
     
          <br />
          
          



        
        </div>
        
        
        <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
   
      
    </div>
  </div> 
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Ple - Desarrollado por <a href="https://www.claro.com.gt">Desarrollo de Productos</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

      <!-- DatePick -->
    <script src="plantilla/js/jquery-1.9.1.min.js"></script>            
                
    <!-- bootstrap-daterangepicker -->
    <script src="plantilla/vendors/moment/min/moment.min.js"></script>
    <script src="plantilla/bootdate/src/js/bootstrap-datetimepicker.js"></script>  
  
    <!-- Bootstrap -->
    <script src="plantilla/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="plantilla/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="plantilla/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="plantilla/vendors/iCheck/icheck.min.js"></script>
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

    <!-- Custom Theme Scripts -->
    <script src="plantilla/build/js/custom.min.js"></script>
  

    
     <script type="text/javascript">
      var id;
      var rol;
        
      var dateinit="";  
      var datefinish="";
      var msisdn="";
      
      $('#message').hide();

        
        $(document).ready(function(){
            

        var tablePackAprov = $('#TABLEPACKAPROV').DataTable({
            "ajax": {
                "url": "TableList",
                "type": "POST",    
                 "data": function (d) {
                    d.id = 0;
                    d.tableParameter = "SELECT sp.service_id, sp.description,  sps.text_keyword  FROM MPM_SERVICE_PACK_RATE pr  JOIN MPM_SERVICE_PACK sp  ON sp.SERVICE_ID = pr.service  JOIN MPM_SERVICE_PACK_SOURCE sps   ON sp.service_id = sps.service   JOIN MPM_CONFIG_PACK cp   ON pr.pack = cp.ID_PACK   JOIN MPM_PRODUCTS_PER_SERVICE pps   ON pps.service = sp.SERVICE_ID AND pps.pack = cp.ID_PACK WHERE pr.ott_credit=0 and pr.ott_debit<>0 group by sp.service_id,sp.description,sps.text_keyword";
                }
            },
            "global": false,
            "lengthMenu": [[4, 5, 6, -1], [4, 5, 6, "All"]],
            "dataType": "json",
            "createdRow": function (row, data, dataIndex) {
                if (data[2] == "1") {
                    $(row).addClass('important');
                }
            },
            "columns": [
                {"title": "SERVICE_ID"},
                {"title": "DESCRIPTION"},
                {"title": "TEXT_KEYWORD"}    
            ]

        });

        $('#TABLEPACKAPROV tfoot th').each( function () {
                    var title = $(this).text();
                    $(this).html( '<input type="text" placeholder="Filtrar por '+title+'" />' );
                } );  
        tablePackAprov.columns().every( function () {
                var that = this;
                    $( 'input', this.footer() ).on( 'keyup change', function () {
                        if ( that.search() !== this.value ) {
                            that
                                .search( this.value )
                                .draw();
                            }
                    } );
        } );
        $('#TABLEPACKAPROV tbody').on('click', 'tr', function () {    
            var data = tablePackAprov.row(this).data();
            id = data[0];
            description = data[1];
            keyword = data[2];
            alert('Seleccionado Keyword:'+" "+keyword);       
              $("#keyword").val(keyword);            

        } ); 
        
        
        $("#form_serviceAddPack").submit(function(event){
        event.preventDefault(); //prevent default action 
        
      
        var auditory="Subscripcion paquete";
        var msisdn = $("#msisdn").val();
        var keyword = $("#keyword").val();
 

        $.post(
                "GetServiceAddPack",
                {
                    msisdn: msisdn,
                    keyword: keyword,
                    auditory: auditory

                },
        function (json) {
        $("#msisdn").val("");
        $("#keyword").val("");
        alert(json.message);
     
        });

    });
        
        
        $("#btnClearAprov").click(function(){                    
            $("#msisdn").val("");
            $("#keyword").val("");
        });
        
        
    
                    
            
         });
         
         
         
    </script>


  </body>
</html>

