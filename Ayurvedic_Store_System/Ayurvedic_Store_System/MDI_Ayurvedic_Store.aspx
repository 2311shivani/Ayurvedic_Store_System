<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MDI_Ayurvedic_Store.aspx.cs" Inherits="Ayurvedic_Store_System.MDI_Ayurvedic_Store" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MDI PAGE</title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        
        *
        {
            margin: 0px;
            padding: 0px;
            }
          
          #Menu
          {
              height:100%;
              width:100%;
              }  
        #Menu ul
        {
            list-style: none;
            height:100vh;
            width:100vw;
            }
        
        h1
        {
            text-align:center;
            color:Blue;
            font-size:50px;
            font-style:bold;
        }
        #Menu ul li 
        {
            background-color:black;
            color:White;
            border: 1px solid white;
            width: 210px;
            height: 35px;
            line-height: 35px;
            text-align: center;
            float: left;
            position: relative;
            
            }
            
        #Menu ul li a 
        {
            text-decoration: none;
            color: Black;
            display: block;
            }
            
         #Menu ul li a:hover
         {
             background-color:orange;
             }
             
         #Menu ul ul 
         {
             position: absolute;
             display:none;
             }
             
         #Menu ul li:hover > ul
         {
             display: block;
             }
             
           #Menu ul li a
         {
             background-color:black;
             color:White;
             }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">
     <table class="style1">
        <tr>
            <td><h1>Ayurvedic Store System</h1>
                &nbsp;</td>
            
        </tr>
      
    </table>
    </div>

    <div id="Menu">
        <ul>
            <li>
                <a href="#"> Customer </a>
                <ul>
                    <li>
                        <a href="#"> Add Customer </a>
                        <a href="#"> View All Customer </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Products </a>
                <ul>
                    <li>
                        <a href="#"> Add Category </a>
                        <a href="#"> Add Product </a>
                        <a href="#"> Update Product </a>
                        <a href="#"> View Product Details </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Stock </a>
                <ul>
                    <li>
                        <a href="#"> Add Stock </a>
                    </li>
                </ul>
            </li>

            <li> 
                <a href="#"> Distributor </a>
                <ul>
                    <li>
                        <a href="#"> Add Distributor </a>
                        <a href="#"> Update Distributor </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Supplier </a>
                <ul>
                    <li>
                        <a href="#"> Add Supplier </a>
                        <a href="#"> Update Supplier </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Complaints </a>
            </li>
        </ul>
        
    </div>
    </form>
   
</body>
</html>
