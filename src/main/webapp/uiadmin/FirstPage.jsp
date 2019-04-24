<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>FirstPage</title>

    <!-- Bootstrap -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=application.getContextPath()%>/uiadmin/build/css/custom.min.css" rel="stylesheet">
  </head>
  <body>
      
         <%
session.setMaxInactiveInterval(2);
String msg=(String)session.getAttribute("msg");
                    if(msg!=null)
                    {
                 //      out.println(msg);
                    }
                  else if(msg==null)
                {
                    msg="";
              }
%>
  
        <script language = "Javascript">
            function validateEmail()
            {
                var x = document.frmSample.email.value;
                var atposition = x.indexOf("@");
                var dotposition = x.lastIndexOf(".");
                if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
                    alert("Please enter a valid e-mail address");
                    return false;
                }
            }
            /**
             * DHTML phone number validation script. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
             */

            // Declaring required variables
            var digits = "0123456789";
            // non-digit characters which are allowed in phone numbers
            var phoneNumberDelimiters = "()- ";
            // characters which are allowed in international phone numbers
            // (a leading + is OK)
            var validWorldPhoneChars = phoneNumberDelimiters + "+";
            // Minimum no of digits in an international phone no.
            var minDigitsInIPhoneNumber = 10;

            function isInteger(s)
            {
                var i;
                for (i = 0; i < s.length; i++)
                {
                    // Check that current character is number.
                    var c = s.charAt(i);
                    if (((c < "0") || (c > "9")))
                        return false;
                }
                // All characters are numbers.
                return true;
            }
            function trim(s)
            {
                var i;
                var returnString = "";
                // Search through string's characters one by one.
                // If character is not a whitespace, append to returnString.
                for (i = 0; i < s.length; i++)
                {
                    // Check that current character isn't whitespace.
                    var c = s.charAt(i);
                    if (c !== " ")
                        returnString += c;
                }
                return returnString;
            }
            function stripCharsInBag(s, bag)
            {
                var i;
                var returnString = "";
                // Search through string's characters one by one.
                // If character is not in bag, append to returnString.
                for (i = 0; i < s.length; i++)
                {
                    // Check that current character isn't whitespace.
                    var c = s.charAt(i);
                    if (bag.indexOf(c) === -1)
                        returnString += c;
                }
                return returnString;
            }

            function checkInternationalPhone(strPhone) {
                var bracket = 3;
                strPhone = trim(strPhone);
                if (strPhone.indexOf("+") > 1)
                    return false;
                if (strPhone.indexOf("-") !== -1)
                    bracket = bracket + 1;
                if (strPhone.indexOf("(") !== -1 && strPhone.indexOf("(") > bracket)
                    return false;
                var brchr = strPhone.indexOf("(");
                if (strPhone.indexOf("(") !== -1 && strPhone.charAt(brchr + 2) !== ")")
                    return false;
                if (strPhone.indexOf("(") === -1 && strPhone.indexOf(")") !== -1)
                    return false;
                s = stripCharsInBag(strPhone, validWorldPhoneChars);
                return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
            }

            function ValidateForm() {
                var Phone = document.frmSample.contact_no;

                if ((Phone.value === null) || (Phone.value === "")) {
                    alert("Please Enter your Phone Number");
                    Phone.focus();
                    return false;
                }
                if (checkInternationalPhone(Phone.value) === false) {
                    alert("Please Enter a Valid Phone Number");
                    Phone.value = "";
                    Phone.focus();
                    return false;
                }
                return true;
            }

            function matchpass() {
                var email = document.getElementById("email").value;
                var reenteremail = document.getElementById("re-email").value;

                if (email !== reenteremail) {
                    alert("Email do not match!");
                    $("#re-email").val("");
                    return false;

                } else {

                    return true;

                }
            }
            function isNumber(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    alert("Enter number only");
                    return false;

                }
                return true;
            }
            function isAlfa(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
                    alert("Enter alphabet only!!");
                    return false;
                }
                return true;
            }



        </script>
 <script>
    $(document).ready(function(){
       $('#msg').fadeOut(5000);
     
        $("#l").hide();
     d=0;
    c=1;
$("#AddImage").click(function(e){
   d=d+1;
        if(c===1)
   {
       $("#l").show(); 
   }
        e.preventDefault();
                       // $("#mmd").append('<label class="control-label col-md-3 col-sm-3 col-xs-12">Image</label>');          
        $("#mydiv").append('<div class="form-group"><label class="control-label col-md-3 col-sm-3 col-xs-12"></label><div class="col-md-6 col-sm-6 col-xs-12" id="id'+d+'"><input id="id'+d+'" name="pic" type="text" class="form-control col-md-7 col-xs-12"></div><a id="id'+d+'"class="remove_this btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a></div>');  
                    
                    
jQuery(document).on('click', '.remove_this', function() {
        jQuery(this).parent().remove();
        return false;
    
               });
    });
    });
</script>
 <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_center">
               <center> <h3>GENERIC E-SYSTEM FOR TRAINING INSTITUTE</h3></center>
              </div>

            </div>
              
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title_center">
                 <h2>ADD INSTITUTE DETAILs</h2>
                           <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
 <%session.removeAttribute("msg");%>
                 
                 <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerFirstPage">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Institute Name
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="institutename" required name="institutename"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">LOGO
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="image" name="image" required class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                       
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">About US</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="aboutus" name="aboutus" required class="form-control" rows="6" ></textarea>
                        </div>
                      </div>
                        
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact Number
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="contactnumber" name="contactnumber" required class="date-picker form-control col-md-7 col-xs-12"  type="text" onkeypress=" return isNumber(event)">
                        </div>
                      </div>

                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">E-mail
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="email" name="email" required class="date-picker form-control col-md-7 col-xs-12"  type="email">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">ADDRESS</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                       <textarea id="address" name="address" required class="form-control" rows="3" ></textarea> 
                        </div>
                      </div>
                    
                        <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Quote</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                       <textarea id="quote" required name="quote" class="form-control" rows="3" ></textarea> 
                        </div>
                      </div>
                    
                       
                         <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Image
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="pic" required name="pic"  class="form-control col-md-7 col-xs-12">
                        </div>
                        </div>     
                        <div id="mydiv">

                        </div>
                        <center> <button type="submit"  name="AddImage" id="AddImage" class="btn btn-success">Add Image</button> </center>                                                 
                        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">             
                        <center><button type="submit" value="submit" name="submit" class="btn btn-success">Add Admin Details</button></center>
                        </div>
                      
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>

           
        <!-- /page content -->
  <!-- jQuery -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/moment/min/moment.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/switchery/dit/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<%=application.getContextPath()%>/uiadmin/build/js/custom.min.js"></script>
  
          </body>
</html>

      