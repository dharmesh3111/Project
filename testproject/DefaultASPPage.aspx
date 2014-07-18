<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="DefaultASPPage.aspx.cs" Inherits="DefaultASPPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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



     <div class="clearfix"></div>
    <div class="space"></div>
    <div class="content">
        <div class="col-lg-12 third_top">
            <div class="col-lg-6 load_agent">
                <div class="col-lg-12 inside_load_agent">
                    <div class="col-lg-6 agent">
                        <asp:button id="btnLogin" runat="server" Text="Load Agent" CssClass="BNButton100" Enabled="False"></asp:button>
                        <%--<input type="submit" name="M_rec1:btnLogin" value="Load Agent" class="BNButton100" id="M_rec1_btnLogin" disabled="">--%>
                    </div>
                    <div class="col-lg-6 agent_in">
                        <asp:textbox id="txtAgentLogin" Text="va13636" runat="server" cssclass="PCTextRedBox100"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAgentLogin" ValidationGroup="validcheck" ErrorMessage="Value Require" CssClass=""></asp:RequiredFieldValidator>
                        <%--<input name="M_rec1:txtAgentLogin" value="va13636" class="PCTextRedBox100" id="M_rec1_txtAgentLogin">--%>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 exit">
                <div class="col-lg-12 inside_exit">
                    <div class="col-lg-6 blank">
                    </div>
                    <div class="col-lg-6 in_exit">
                        <asp:button id="btnReturn" runat="server" Text="Exit" ValidationGroup="validcheck" CssClass="DNButton100" ></asp:button>
                        <%--<input type="submit" name="M_rec1:btnReturn" value="Exit" class="DNButton100" id="M_rec1_btnReturn">--%>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="space1"></div>
        <div class="line"></div>

        <div class="col-lg-12 content_row1">
            <div class="col-lg-6 content_row1_left">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id">
                        <font class="PCTextWhite">AgentID</font>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <asp:label id="lblLogin" runat="server" Text="va13636" cssclass="PCTextTblBox100"></asp:label>
                        <%--<span class="PCTextTblBox100" id="M_rec1_lblLogin">va13636</span>--%>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 content_row1_right">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id">
                        <font class="PCTextWhite">Office</font>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <asp:label id="lblDeptName" runat="server" Text="Corporate Office (18)" cssclass="PCTextTblBox100"></asp:label>
                        <%--<span class="PCTextTblBox100" id="M_rec1_lblDeptName">Corporate Office (18)</span>--%>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12 content_row1">
            <div class="col-lg-6 content_row1_left">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id">
                        <font class="PCTextWhite">Agent Name</font>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <asp:label id="lblUserName" runat="server" Text="ACCOUNT TEST" cssclass="PCTextTblBox100"></asp:label>
                        <%--<span class="PCTextTblBox100" id="M_rec1_lblUserName">ACCOUNT TEST</span>--%>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 content_row1_right">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id1">
                        <asp:label id="lblBalance" runat="server" Text="Bal = $0.00" cssclass="PCTextTblBox100"></asp:label>
                        <%--<span class="PCTextTblBox100" id="M_rec1_lblBalance">Bal = $0.00</span>--%>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <asp:label id="lblStatus" runat="server" Text="Hire Status = A" cssclass="PCTextTblBox100"></asp:label>
                        <%--<span class="PCTextTblBox100" id="M_rec1_lblStatus">Hire Status = A</span>--%>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="line"></div>

        <div class="col-lg-12 content_row1">
            <div class="col-lg-3 content_row1_col1">
                <font class="PCTextWhite">Coupon Code</font>
            </div>
            <div class="col-lg-3 content_row1_col2">
                <asp:textbox id="txtGCNum" runat="server" cssclass="PCTextRedBox100"></asp:textbox>
                <%--<input name="M_rec1:txtGCNum" class="PCTextRedBox100 txt_input" id="M_rec1_txtGCNum">--%>
            </div>
            <div class="col-lg-3 content_row1_col3">
                <asp:button id="btnApply" runat="server" Text=" Redeem Gift Coupon" CssClass="BNButton100" ></asp:button>
                <%--<input type="submit" name="M_rec1:btnApply" value=" Redeem Gift Coupon" class="BNButton100" id="M_rec1_btnApply">--%>
            </div>
            <div class="col-lg-3 content_row1_col4">
                <asp:button id="btnCancel" runat="server" Text=" Clear Input" CssClass="BNButton100" />
                <%--<input type="submit" name="M_rec1:btnCancel" value=" Clear Input" class="BNButton100" id="M_rec1_btnCancel">--%>
            </div>
        </div>

        <div class="col-lg-12 content_row1">
            <div class="PCTextRed">
                Any unused marketing credits on 
                  TarbellOnline are non-refundable (no cash value) and not 
                  transferable. 
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="line1"></div>
        <div class="space1"></div>

        <div class="col-lg-12 content_row1">
            <span class="redeem">Redeemed Gift Coupons:</span>
        </div>
        <div class="clearfix"></div>

        <div class="col-lg-12 content_row1">
            <div class="table-responsive">
                <asp:datagrid id="BookHistory" runat="server" width="100%" GridLines="Vertical" ShowFooter="False"
								AutoGenerateColumns="false" AllowPaging="True" AllowSorting="True" PageSize="10">
								<SelectedItemStyle CssClass="DataGrid_SelectedItemStyle"></SelectedItemStyle>
								<AlternatingItemStyle CssClass="DataGrid_AlternatingItemStyle_L"></AlternatingItemStyle>
								<ItemStyle CssClass="DataGrid_ItemStyle_L"></ItemStyle>
								<HeaderStyle CssClass="DataGrid_HeaderStyle"></HeaderStyle>
								<FooterStyle CssClass="DataGrid_FooterStyle"></FooterStyle>
								<Columns>
									<asp:BoundColumn  HeaderText="ReceiptID" DataField="receiptID" SortExpression="receiptID" />
									<asp:BoundColumn  HeaderText="OrderID" DataField="orderID" SortExpression="orderID" />
									<asp:BoundColumn  HeaderText="Recorded" DataField="created" SortExpression="recID" />
									<asp:BoundColumn visible="False" HeaderText="PmtID" DataField="pmtTY" />
									<asp:BoundColumn  HeaderText="PmtTY" DataField="pmtDesc" />
									<asp:BoundColumn  HeaderText="Action" DataField="actDesc" />
									<asp:BoundColumn HeaderText="Reference" DataField="ref" />
									<asp:BoundColumn HeaderText="Writer" DataField="writer"  />
									<asp:BoundColumn HeaderText="Amount" DataField="amount" DataFormatString="{0:c}" HeaderStyle-HorizontalAlign="Right"
										ItemStyle-HorizontalAlign="Right"  />
									<asp:BoundColumn HeaderText="Balance" DataField="balance" DataFormatString="{0:c}" HeaderStyle-HorizontalAlign="Right"
										ItemStyle-HorizontalAlign="Right"  />
								</Columns>
								<PagerStyle CssClass="DataGrid_PagerStyle" Mode="NumericPages"></PagerStyle>
							</asp:datagrid>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="line"></div>
    </div>
</asp:Content>

