 <%@page import="org.json.JSONArray"%>
 <%@page import="org.json.JSONTokener"%>
 <%@page import="org.json.JSONObject"%>

<!DOCTYPE html>
<html lang="en">
  <head>

    <title>View User Detail</title>
    <%@include file="adminHeaders.jsp" %>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
         
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
         <script src="<%=application.getContextPath()%>/uiadmin/js/jquery-ui-1.10.4.custom.min.js"></script>        
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.dataTables.editable.js"></script>
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.jeditable.js"></script>
    <script> 
        $(document).ready(function(){
            $("#tabledetail").DataTable();
        });
    </script>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
     <%@include file="navigation.jsp" %>
       
  
  <!-- page content -->
<div class="right_col" role="main">
          <div class="">
            
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>View User Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">  
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <script type="text/javascript">

            function editRow(Table, nRow)
            {
                var Data = Table.fnGetData(nRow);
                var Td = $('>td', nRow);
                alert(Td.length + "-------");
                //jqTds[0].innerHTML = '<input type="text" value="' + aData[0] + '" readOnly>';
                Td[0].innerHTML = Data[0];
//                Td[1].innerHTML = Data[1];
//                Td[2].innerHTML = Data[2];
//                Td[3].innerHTML = Data[3];
                Td[4].innerHTML = '<input type="text" value="' + Data[4] + '">';
                Td[5].innerHTML = '<a href="">View</a>';
                
                
                Td[6].innerHTML = '<a class="edit" href="">Save</a>';
            }


            function saveRow(Table, nRow)
            {
                var Inputs = $('input', nRow);

                alert(Inputs.length);
               
//                var f_name = Inputs[1].value;
//                var role = Inputs[2].value;
//                var designation = Inputs[3].value;
                var priority = Inputs[0].value;
                var p_id = Inputs[1].value;
                alert("p_id--"+p_id);
                alert("priority-----"+priority);
//                alert("cid:"+c_id);
//                alert(c_name);
                location.href = "<%=application.getContextPath()%>/SerEditUserDetail?p_id="+ p_id + "&priority=" + priority;
                    
                Table.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 1, false);
                Table.fnDraw();
            }

            function restoreRow(Table, nRow) {
                var Data = Table.fnGetData(nRow);
                var Td = $('>td', nRow);

                for (var i = 0, iLen = Td.length; i < iLen; i++) {
                    Table.fnUpdate(Data[i], nRow, i, false);
                }
                Table.fnDraw();
            }

 $(document).ready(function() {
                Table = $("#tabledetail").dataTable({
                    "bScrollCollapse": true,
                    "bPaginate": true,
                    "sPaginationType": "full_numbers",
                 
                    "aLengthMenu": [[3, 5, 10, -1], [3, 5, 10, "All"]],
                    "iDisplayLength": 10
                });
           





                var nEditing = null;

                $(document).on('click', '#tabledetail a.edit', function(e) {
                 alert("inedit");
                    e.preventDefault();

                    var nRow = $(this).parents('tr')[0];

                    if (nEditing!== null && nEditing!== nRow) {
                        /* Currently editing - but not this row - restore the old before continuing to edit mode */
                        alert("inif");
                        restoreRow(Table, nEditing);
                        editRow(Table, nRow);
                        nEditing = nRow;
                    }
                    else if (nEditing === nRow && this.innerHTML === "Save") {
                        alert(nRow);
                        /* Editing this row and want to save it */
                        alert("inelseif");
                        saveRow(Table, nEditing);
                        nEditing = null;
                    }
                    else {
                        /* No edit in progress - let's start one */
                       alert("inelse");
                        editRow(Table, nRow);
                        nEditing = nRow;
                    }
                });


});
        </script>

                    <p>Simple table with User Detail with editing options</p>
 <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" >
                    <!-- start project list -->
                    <table name="tabledetail" id="tabledetail" class="display table table-striped table-bordered" cellspacing="0" width="100%"  style="color:black ; ">
                      <thead>
                        <tr>
                          <th style="width: 10%">P_ID</th>
                          <th>Name</th>
                          <th>Role</th>
                          <th>Designation</th>
                          <th>Priority</th>
                          <th>Profile Attribute</th>
                          <th>Edit</th>
                        </tr>
                      </thead>
                      <tbody>
                           <%
                           CourseSubSecOperation cso=new CourseSubSecOperation(con);
                            JSONArray ja=cso.getusersdetails();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                              %>
                         
                          <tr>
                          
                          <td>
                              <%=obj.getString("p_id")%>
                          </td>
                          <td><%=obj.getString("f_name")%>
                          </td>
                          <td><%=obj.getString("role")%>
                          </td>
                          <td><%=obj.getString("designation")%>
                          </td>
                          <td>
                                 <%
                                     String p_id = obj.getString("p_id");
                                     String check = cso.prioritycheck(p_id);
                                     System.out.println("check--------"+check);
                                     if(check==null)
                                     {
                                        %>
                                        0
                                        <% 
                                            String assignpriority=cso.assignpriority(p_id,"0");
                                     }
                                    else{
                                            %>
                                            <%=check%>
                                            <%
                                         }   

                              %>                       
                          </td>
                          <td>
                                 <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>                       
                          </td>
                           <td>
                            <a href="" class="edit"><i class="fa fa-pencil"></i> Edit Priority</a>
                           </td>
                          
                         
                          </tr>
                         <% }%>
                        
                      </tbody>
                    </table>
                    <!-- end project list -->
 </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
  <!-- /page content -->
  


    <%@include file="adminfootersfiles.jsp" %>
 
  </body>
</html>
