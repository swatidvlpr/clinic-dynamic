<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Admin Login</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      body {
  font-family: "Open Sans", sans-serif;
  height:auto;
}

@keyframes spinner {
  0% {
    transform: rotateZ(0deg);
  }
  100% {
    transform: rotateZ(359deg);
  }
}
* {
  box-sizing: border-box;
}
#welcome_admin_panel {
	color:#FFF;
	margin: 0 auto;
	padding:0px;
	text-align:center;
	width:90%;
}
#welcome_admin_panel h2 {
	font:bold 2em/1em Alegreya Sans, Helvetica, Arial, sans-serif;
	display:block;
	color:#CC3361;
	padding-bottom:10px;
}
#welcome_admin_panel span {
	font:bold 1em/1.6em Alegreya Sans, Helvetica, Arial, sans-serif;
	color:#009D5D;
}


.wrapper {
  display:flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  min-height:50%;
  margin:0 auto;
  padding:0px;
  margin-top:20px;
}

.login {
  border-radius: 2px 2px 5px 5px;
  padding: 10px 20px 20px 20px;
  width: 90%;
  max-width: 320px;
  background: #fbb002;
  position: relative;
  padding-bottom:20px;
  box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);
}
.login.loading button {
  max-height: 100%;
  padding-top: 50px;
}
.login.loading button .spinner {
  opacity: 1;
  top: 40%;
}
.login.ok button {
  background-color: #098860;
}
.login.ok button .spinner {
  border-radius: 0;
  border-top-color: transparent;
  border-right-color: transparent;
  height: 20px;
  animation: none;
  transform: rotateZ(-45deg);
}
.login input {
  display: block;
  padding: 15px 10px;
  margin-bottom: 10px;
  width: 100%;
  border: 1px solid #bd0371;
  transition: border-width 0.2s ease;
  border-radius: 2px;
  color: #ccc;
}
.login input + i.fa {
  color:#0c7733;
  font-size: 1em;
  position: absolute;
  margin-top: -47px;
  opacity: 0;
  left: 0;
  transition: all 0.1s ease-in;
}
.login input:focus {
  outline: none;
  color: #098860;
  border-color: #2196F3;
  border-left-width: 35px;
}
.login input:focus + i.fa {
  opacity: 1;
  left: 30px;
  transition: all 0.25s ease-out;
}
.login a {
  font-size: 0.8em;
  color: #2196F3;
  text-decoration: none;
}
.login .title {
  color:#bd0371;
  font-size: 2.2em;
  font-weight: bold;
  margin: 10px 0 30px 0;
  border-bottom: 1px solid #eee;
  padding-bottom: 20px;
}
.login button {
  width: 100%;
  height:auto;
  padding:0px 10px;
  background: #2196F3;
  color: #fff;
  display: block;
  border: none;
  margin-top: 0px;
  position: absolute;
  left: 0;
  bottom: 0;
  max-height: 60px;
  border: 0px solid rgba(0, 0, 0, 0.1);
  border-radius: 0 0 2px 2px;
  transform: rotateZ(0deg);
  transition: all 0.1s ease-out;
  border-bottom-width: 7px;
  font-weight:bold;
}
.login button .spinner {
  display:block;
  width:40px;
  height:40px;
  position:absolute;
  border:4px solid #ffffff;
  border-top-color: rgba(255, 255, 255, 0.3);
  border-radius: 100%;
  left: 50%;
  top:0;
  opacity:0;
  margin-left:-20px;
  margin-top:-20px;
  animation:spinner 0.6s infinite linear;
  transition:top 0.3s 0.3s ease, opacity 0.3s 0.3s ease, border-radius 0.3s ease;
  box-shadow:0px 1px 0px rgba(0, 0, 0, 0.2);
}
.login:not(.loading) button:hover {
  box-shadow:0px 1px 3px #2196F3;
}
.login:not(.loading) button:focus {
  border-bottom-width:4px;
}
.user_icon {
	background:url(images/User.png) no-repeat center 50%
}
#logo_house {
	
	background:none;
	color:#808080;
	margin: 0 auto;
	text-align:center;
	padding:0px;
	display:inline-block;
	padding-top:5px;
	width:20%;
	margin-bottom:50px;
}
#logo_house img {
	padding:0px;
	margin:0 auto;
	width:100%;
}

.clearfix {
	clear:both;
}

/*------------line-height Ajaya Kumar RoutRay, Mob:+91 9777010194, ajayakumar0689@gmail.com.-----------------*/
/* ipad portrait */
        @media only screen and ( min-width:200px) and ( max-width:768px ) {
            #logo_house {
                background: none;
                color: #808080;
                margin: 0 auto;
                text-align: center;
                display: inline-block;
                padding: 0;
                padding-top: 5px;
                margin: 0 auto;
                padding: 0px;
                width: 50%;
                margin-bottom: 40px;
            }

                #logo_house img {
                    padding: 0px;
                    margin: 0 auto;
                    width: 100%;
                    text-align: center;
                }
        }

    </style>
    


<script src="js/index.js"></script>
<script src="js/prefixfree.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" >
    <div align="center" >
    <div class="wrapper">
	<div id="logo_house" >
    <a title="The Partha's Dental Clinic"><!--href="http://www.theparthasdentalclinic.org/"-->
    <img src="Image/dental-logo.jpg" border="0" align="absmiddle" /> <!--The Partha's Dental Clinic--></a></div>
    <!--<div id="welcome_admin_panel"><h2>Welcome <span>Admin Panel</span></h2></div>-->
    <div class="clearfix"></div>
  <div class="login">
    <p class="title">LOGIN</p>
   <%-- <input type="text" placeholder="Username" autofocus/>--%>
      <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" autofocus></asp:TextBox>

    <i class="fa fa-user"></i>
      <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Password" ></asp:TextBox>

  <%--  <input type="password" placeholder="Password" />--%>
    <i class="fa fa-key"></i>
    <!--<a href="javasript:void(0)">Forgot your password?</a>-->
 
    
        <asp:Button ID="Button1" style="background:#0c7733; border:none; color:#fff; margin-top:40px;"
            CssClass="state" runat="server" Text="Login" BackColor="White" OnClick="Button1_Click" />
   
 </div>
</div>   
    </div>
    </form>
</body>
</html>
