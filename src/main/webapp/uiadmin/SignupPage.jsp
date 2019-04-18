<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Sign UP</title>
        <%@include file="adminHeaders.jsp" %>

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
            $(document).ready(function () {
                alert("1");
                d = 0;
                c = 1;
                $('#re-email').focusout(function () {
                    matchpass();

                });

                $("#AddImage").click(function (e) {
                    d = d + 1;
                    e.preventDefault();
                    $("#mydiv").append('<div class="form-group" id="id' + d + '"><label class="control-label col-md-3 col-sm-3 col-xs-12"></label><div class="col-md-5 col-sm-6 col-xs-12" id="id' + d + '"><input id="id' + d + '" name="qualification" type="text" class="form-control"></div><a id="id' + d + '"class="remove_this btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a></div>');

                    jQuery(document).on('click', '.remove_this', function () {
                        jQuery(this).parent().remove();
                        return false;

                    });
                });
            });

        </script>
        <!--<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">-->

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#myDatepicker2").datepicker();
            });
        </script>
    </head>

    <body class="nav-md">

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>GETS(INSTITUTE NAME)</h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">

                            <div class="x_title">
                                <h2>Sign Up<small>Enter Your Detail Here</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>

                            <div class="x_content">
                                <br />
                                <% String id = request.getParameter("id");
                                    System.out.println(id);
                                    if (id != null) {
                                        session.setAttribute("id", id);

                                    } else {
                                        session.setAttribute("id", "b");

                                    }

                                %>

                                <form id="demo-form2"  action="<%=application.getContextPath()%>/SerPerson" name="frmSample" data-parsley-validate class="form-horizontal form-label-left" method="post"  enctype="multipart/form-data">

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="f_name">First Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text" id="firstname" required name="f_name" class="form-control col-md-7 col-xs-12" onkeypress="return isAlfa(event)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="m_name">Middle Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text" id="middlename" required name="m_name"  class="form-control col-md-7 col-xs-12" onkeypress="return isAlfa(event)">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="l_name">Last Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text" id="lastname" required name="l_name"  class="form-control col-md-7 col-xs-12" onkeypress="return isAlfa(event)">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <div id="gender" class="btn-group" data-toggle="buttons">
                                                <p>
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                                    </label>
                                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="gender" value="female"> Female
                                                    </label>
                                                </p> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                        </label>
                                        <div class='col-sm-4'>                 
                                            <div class="form-group">
                                                <div  >
                                                    <input type='text' id='myDatepicker2' name='dob'class="form-control" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="contact_no">Contact Number <span class="required">*</span>
                                        </la bel>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="number" id="contactnumber" name="contact_no"  class="form-control col-md-7 col-xs-12" onkeypress="return isNumber(event)">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="email" id="email" required name="email"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="reenteremail">Re-Enter Email <span class="required">*</span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="email" id="re-email" required name="reenteremail" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">Address <span class="required">*</span>
                                        </label>
                                        <div class="col-md-2">
                                            <input placeholder="Home NO" type="text" id="middle-name" name="home_no"  class="form-control col-md-7 col-xs-12" >
                                        </div>
                                        <div class="col-md-2">
                                            <input placeholder="Street No" type="text" id="middle-name" name="street_no"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="street_name"><span class="required"></span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input placeholder="Street Name"type="text" id="middle-name" name="street_name"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Area"><span class="required"></span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text" placeholder="Area" id="middle-name" name="area"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="City"><span class="required"></span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text" id="middle-name" placeholder="City" name="city"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pincode"><span class="required"></span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="number" placeholder="pincode" id="middle-name" name="pincode"  class="form-control col-md-7 col-xs-12" onkeypress="return isNumber(event)">
                                        </div>
                                    </div> 


                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="profileimage"><span class="required">Image</span>
                                        </label>

                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="file"  id="middle-name" name="Image"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div> 


                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="qualification">Qualification<span class="required"></span>
                                        </label>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <input type="text"  id="qualification" name="qualification"  class="form-control col-md-7 col-xs-12">
                                        </div>
                                        <button type="button"  name="AddImage" id="AddImage" class="btn btn-success">Add Qualification</button>                                                  
                                    </div> 

                                    <div  id="mydiv">

                                    </div>


                                    <div class="ln_solid"></div>

                                    <div class="form-group">
                                        <div class="col-md-5 col-sm-6 col-xs-12 col-md-offset-3">
                                            <button class="btn btn-primary" type="button">Cancel</button>
                                            <button class="btn btn-primary" type="reset">Reset</button>
                                            <button type="submit" value="submit" name="submit" class="btn btn-success" >Submit</button>
                                        </div>
                                    </div>
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
