<%-- 
    Document   : admin
    Created on : Feb 26, 2012, 10:57:18 AM
    Author     : Pancha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sigiri - Stock Management</title>
<link rel="stylesheet" href="css/div_styles.css" type="text/css" />
<link rel="stylesheet" href="verticaltabs/css/verticaltabs.css" />
<link rel="stylesheet" href="css/formstyle.css" type="text/css"/>

<script type="text/javascript" src="js/jquery.js"></script>
 <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="verticaltabs/js/verticaltabs.pack.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#textExample").verticaltabs({speed: 500,slideShow: false,activeIndex:0});

	});
</script>

</head>

<body>

<div class="container">
  <table width="100%" height="114">
    <tr>
      <td width="116" height="108"><center><img src="images/logo.png"/></center></td>
      <td width="612" style="padding-left:8px;color:#000079;font-size:20px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;">

        <p>Sigiri Textile Industries (Pvt) Ltd.        </p>
        <p>No:227/1,
          Galle Road,Katubedda,
          Mt.Lavinia,
      Sri Lanka. </p></td>
      <td width="458">&nbsp;</td>
    </tr>
  </table>
  <table width="100%" height="80" >
  <!-- Text Example -->
	<div class="verticalslider" id="textExample">
        <ul class="verticalslider_tabs">
            <li style="margin-top:25px;"><a href="#">Administration</a></li>
            <li><a href="#">Add User</a></li>
            <li><a href="#">Edit User</a></li>
            <li><a href="#">User Privileges</a></li>


        </ul>
        <ul class="verticalslider_contents">
       <li style="padding-left:50px;">

            <form action="#" method="post">

		<fieldset style="height:450px;width:600px;">
			<legend>User Management</legend>

           </fieldset>
           </form>
           </li>

            <li style="padding-left:50px;">

            <form action="#" method="post">

		<fieldset style="height:450px;width:600px;">
			<legend>Add User</legend>
         <div>
				<p><label for="input-one" class="float" ><strong>User Name:</strong></label>
				<input class="inp-text" name="input-name" id="name" type="text" size="30" /><br/></p>

                <p><label for="input-three" class="float"><strong>Password:</strong></label>
                <input class="inp-text" name="input-vat" id="vat" type="password" size="30"/></p>

        		<p><label for="input-three" class="float"><strong>Confirm Password:</strong></label>
                <input class="inp-text" name="input-vat" id="vat" type="password" size="30"/></p>

                <p><label for="input-five" class="float"><strong>Full Name:</strong></label>
                <input class="inp-text" name="input-tqb" id="tqb" type="text" size="30"/></p>

            	<P><label for="input-two" class="float"  style="padding-top:10px;"><strong>Discription:</strong></label><br />
				<textarea rows="1" cols="10"  class="inp-text" id="address"name="input-address"></textarea> <br/></P>



               <p style="padding-left:300px;">
               <input class="reset-button" type="reset" alt="RESET" name="reset" value="Reset" />
               <input class="submit-button" type="submit" alt="SUBMIT" name="Submit" value="Submit"/>
               </p>
               </div>
        </fieldset>


		</form>
     </li>


             <li style="padding-left:50px;">

            <form action="" >

		<fieldset style="height:500px;width:600px;margin-top:10px;">
			<legend>Edit User</legend>



				<p><label for="input-one" class="float" ><strong>Select:</strong></label>
				<form action="">
					<select name="menu" style="width:310px;"><br/>
					<option value="0" selected>Select User</option>
					<option value="1">one</option>
					<option value="2">two</option>
					<option value="3">three</option>
					</select>
				</form>
                </p>
                <p><label for="input-one" class="float" ><strong>New User Name:</strong></label><br/>
				<input class="inp-text" name="input-name" id="name" type="text" size="30" /><br/><br/></p>

                <p><label for="input-three" class="float"><strong>New Password:</strong></label>
                <input class="inp-text" name="input-vat" id="vat" type="password" size="30"/></p><br/>

        		<p><label for="input-three" class="float"><strong>New Confirm Password:</strong></label>
                <input class="inp-text" name="input-vat" id="vat" type="password" size="30"/></p><br/>

                <p><label for="input-five" class="float"><strong>Full Name:</strong></label>
                <input class="inp-text" name="input-tqb" id="tqb" type="text" size="30"/></p>

            	<P><label for="input-two" class="float"  style="padding-top:10px;"><strong>Discription:</strong></label><br />
				<textarea rows="1" cols="10"  class="inp-text" id="address"name="input-address"></textarea> <br/></P>


               <p style="padding-left:300px;">
               <input class="reset-button" type="reset" alt="RESET" name="reset" value="Reset" />
               <input class="submit-button" type="submit" alt="SUBMIT" name="Submit" value="Update"/>
               </p>

        </fieldset>


		</form>
           </li>
         <li style="padding-left:50px;">

            <form action="#" method="post">

		<fieldset style="height:500px;width:600px;">
			<legend>User Privileges</legend>

           </fieldset>
           </form>
           </li>

        </ul>

    </div>

  </table>



  </tr>
  </table>


   <table width="100%" height="100" border="1">
  <tr>
  <td></td>
  </tr>
  </table>


</div>

</body>
</html>

