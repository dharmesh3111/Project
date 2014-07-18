<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="member_top.aspx.cs" Inherits="member_top" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="header">

        <div class="col-lg-12 top">
            <div class="col-lg-6 logo">
                <asp:Image id="imgBanner" ImageUrl="~/Images/top01-small.gif"  Runat="server"  visible="True" />
            </div>
            <div class="col-lg-6">
                <asp:label id="WelcomeMessage" CssClass="welcome" runat="server" Text="Welcome ACCOUNT TEST!" EnableViewState="false"></asp:label>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-lg-12 second_top">
            <div class="col-lg-6 menu">
                <asp:xml id="xml1" runat="server"></asp:xml>
                <a class="menu_link1" href="#">Home</a> <span class="seprate">|</span> <a class="menu_link" href="#">Tarbell Affiliates</a> <span class="seprate">|</span> <a class="menu_link" href="#">Design Gallery</a> <span class="seprate">|</span> <a class="menu_link1" href="#">Logout</a> <span class="seprate">|</span>
            </div>
            <div class="col-lg-6">
                <div class="search">
                    <div class="col-lg-12 search_inside">
                        <div class="col-lg-5 category_search">
                            <asp:dropdownlist id="cmbCategory" runat="server" CssClass="cat_select">

                                <asp:ListItem Text="All Categories"></asp:ListItem>
                                <asp:ListItem Text="Bi-Fold"></asp:ListItem>
                                <asp:ListItem Text="Bookmark"></asp:ListItem>
                                <asp:ListItem Text="Business Card"></asp:ListItem>
                                <asp:ListItem Text="Door Hanger"></asp:ListItem>
                                <asp:ListItem Text="Flyer"></asp:ListItem>
                                <asp:ListItem Text="Greeting Card"></asp:ListItem>
                                <asp:ListItem Text="Guide"></asp:ListItem>
                                 <asp:ListItem Text="Mini Marketing Card"></asp:ListItem>
                                <asp:ListItem Text="Tri-Fold Brochure"></asp:ListItem>
                            </asp:dropdownlist>
                            
                        </div>
                        <div class="col-lg-5 txt_search">
                            <asp:textbox id="txtSearch" CssClass="" Runat="server" AutoPostBack="False"></asp:textbox>
                        </div>
                        <div class="col-lg-2 btn_search">
                            <asp:label id="lblModoule" text="Name" runat="server" cssclass="PCTextTblBox" Visible="False"></asp:label>
                            <asp:button id="btnSearch" runat="server" Text="Search" CssClass="BNButton0"></asp:button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


