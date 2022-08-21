<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Add_Stock.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Add_Stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        <style>
        *body {
        font-family:Arial Greek;
        padding:0px;
        margin:0px;
        }
        
        header{
            background-color:black;
            display: flex;
            justify-content: center;
            align-items: center;
           
        }
        header>h1{
            color: white;
            font-size: 40px;
            font-style: bold;
        }
        #Container
        {
            display:flex;
            flex-wrap: wrap;
            flex-direction: row;
            }
        .div1
        {
            height:300px;
            width:500px;
            padding:30px;
            margin:10px;
            }
        .div2
        {
            height:300px;
            width:600px;
            padding:20px;
            margin:13px;
            }
    </style>
    </style>
</head>
<body>
    <header><h1>Add Stock</h1></header>
    <form id="frm_Add_Stock" runat="server">
    <div id="Container">
    <div class="div1">
        <asp:Label ID="lbl_SID" runat="server" Text="Stock ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_Stock_ID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 47px" Width="208px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_PCategory" runat="server" Text="Product Category :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;
        <asp:DropDownList runat="server" ID="ddl_Category" Font-Names="Arial" Font-Size="25px" 
                 style="margin-left: 30px" Width="212px" ></asp:DropDownList>
        <br /><br />

        <asp:Button runat="server" ID="btnsearch" CssClass="Searchbtn" Text="Search" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="20px" 
                ForeColor="White" style="margin-left: 310px" 
            onclick="btnsearch_Click"/>
        <br /><br />

        <asp:Label ID="lbl_PName" runat="server" Text="Product Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;
        
        <asp:DropDownList runat="server" ID="ddl_PName" Font-Names="Arial" Font-Size="25px" 
                 style="margin-left: 50px" Width="212px" ></asp:DropDownList>
        <br /><br />

        <asp:Label ID="lbl_Date" runat="server" Text="Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_date" Font-Names="Arial" Font-Size="25px" 
             Width="215px" TextMode="date" style="margin-left: 137px"></asp:TextBox>
        <br /><br />

        
    </div>

    

    <div class="div2">
        <asp:Label ID="lbl_CStock" runat="server" Text="Current Stock :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                
        <asp:TextBox runat="server" ID="Txt_CStock" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 60px" Width="208px"></asp:TextBox>
        <br /><br /><br />

        <asp:Label ID="lbl_NStock" runat="server" Text="New Stock :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Nstock" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 75px" Width="208px"></asp:TextBox>
        <br /><br /><br />

        <asp:Label ID="lbl_MfgDate" runat="server" Text="Mfg Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_mfgdt" Font-Names="Arial" Font-Size="25px" 
             Width="215px" TextMode="date" style="margin-left: 73px"></asp:TextBox>
        <br /><br /><br />

        <asp:Label ID="lbl_ExpDate" runat="server" Text="Expiry Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_expdt" Font-Names="Arial" Font-Size="25px" 
             Width="215px" TextMode="date" style="margin-left: 43px"></asp:TextBox>
        <br /><br /><br />

        
    </div>
    
    <div id="div3">
    <asp:Button runat="server" ID="btn_Save" CssClass="Savebtn" Text="Save" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White" style="margin-left: 516px" onclick="btn_Save_Click"/>
    
    </div>
    </div>
    </form>
</body>
</html>
