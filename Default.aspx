<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Writting_to_database._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" runat="server">
        <div id="lbl_txt" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Gender"></asp:Label>
            <br />
            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        </div>
        <div id="btn">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
    <div id="divGrid" runat="server">
        <asp:UpdatePanel ID="upGrid" runat="server">
            <ContentTemplate>
                <asp:GridView runat="server" ID="grid1">
                    <Columns>
                        <asp:BoundField DataField="firstName" HeaderText="First Name" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="display" runat="server">
        <asp:Button ID="btnDisplay" runat="server" Text="Store data" OnClick="btnDisplay_Click" />
    </div>

</asp:Content>
