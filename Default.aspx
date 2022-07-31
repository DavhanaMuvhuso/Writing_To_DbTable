<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Writting_to_database._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div id="lbl_txt">
            <asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Gender"></asp:Label>
            <br />
            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        </div>
        <div id="btn">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick ="btnSubmit_Click" />

        </div>


    </div>

</asp:Content>
