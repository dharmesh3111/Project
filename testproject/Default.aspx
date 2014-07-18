<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <div class="header">

        <div class="col-lg-12 top">
            <div class="col-lg-6 logo">
                <img border="0" src="Images/top01-small.gif" alt="" id="m_top_imgBanner">
            </div>
            <div class="col-lg-6">
                <span class="welcome" id="m_top_WelcomeMessage">Welcome ACCOUNT TEST!</span>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-lg-12 second_top">
            <div class="col-lg-6 menu">
                <a class="menu_link1" href="#">Home</a> <span class="seprate">|</span> <a class="menu_link" href="#">Tarbell Affiliates</a> <span class="seprate">|</span> <a class="menu_link" href="#">Design Gallery</a> <span class="seprate">|</span> <a class="menu_link1" href="#">Logout</a> <span class="seprate">|</span>
            </div>
            <div class="col-lg-6">
                <div class="search">
                    <div class="col-lg-12 search_inside">
                        <div class="col-lg-5 category_search">
                            <select name="m_top:cmbCategory" id="m_top_cmbCategory" class="cat_select">
                                <option value="0" selected="">All Categories</option>
                                <option value="18">Bi-Fold</option>
                                <option value="4">Bookmark</option>
                                <option value="2">Business Card</option>
                                <option value="10">Door Hanger</option>
                                <option value="6">Flyer</option>
                                <option value="8">Greeting Card</option>
                                <option value="13">Guide</option>
                                <option value="17">Label</option>
                                <option value="3">Mini Marketing Card</option>
                                <option value="1">Postcard</option>
                                <option value="12">Tri-Fold Brochure</option>
                            </select>
                        </div>
                        <div class="col-lg-5 txt_search">
                            <input name="m_top:txtSearch" class="" id="m_top_txtSearch">
                        </div>
                        <div class="col-lg-2 btn_search">
                            <input type="submit" name="m_top:btnSearch" value="Search" class="BNButton0" id="m_top_btnSearch">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    



    <div class="clearfix"></div>
    <div class="space"></div>
    <div class="content">
        <div class="col-lg-12 third_top">
            <div class="col-lg-6 load_agent">
                <div class="col-lg-12 inside_load_agent">
                    <div class="col-lg-6 agent">
                        <input type="submit" name="M_rec1:btnLogin" value="Load Agent" class="BNButton100" id="M_rec1_btnLogin" disabled="">
                    </div>
                    <div class="col-lg-6 agent_in">
                        <input name="M_rec1:txtAgentLogin" value="va13636" class="PCTextRedBox100" id="M_rec1_txtAgentLogin">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 exit">
                <div class="col-lg-12 inside_exit">
                    <div class="col-lg-6 blank">
                    </div>
                    <div class="col-lg-6 in_exit">
                        <input type="submit" name="M_rec1:btnReturn" value="Exit" class="DNButton100" id="M_rec1_btnReturn">
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
                        <span class="PCTextTblBox100" id="M_rec1_lblLogin">va13636</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 content_row1_right">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id">
                        <font class="PCTextWhite">Office</font>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <span class="PCTextTblBox100" id="M_rec1_lblDeptName">Corporate Office (18)</span>
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
                        <span class="PCTextTblBox100" id="M_rec1_lblUserName">ACCOUNT TEST</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 content_row1_right">
                <div class="col-lg-12 inside_content_row1_left">
                    <div class="col-lg-6 agent_id1">
                        <span class="PCTextTblBox100" id="M_rec1_lblBalance">Bal = $0.00</span>
                    </div>
                    <div class="col-lg-6 agent_value">
                        <span class="PCTextTblBox100" id="M_rec1_lblStatus">Hire Status = A</span>
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
                <input name="M_rec1:txtGCNum" class="PCTextRedBox100 txt_input" id="M_rec1_txtGCNum">
            </div>
            <div class="col-lg-3 content_row1_col3">
                <input type="submit" name="M_rec1:btnApply" value=" Redeem Gift Coupon" class="BNButton100" id="M_rec1_btnApply">
            </div>
            <div class="col-lg-3 content_row1_col4">
                <input type="submit" name="M_rec1:btnCancel" value=" Clear Input" class="BNButton100" id="M_rec1_btnCancel">
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
                <table class="" id="M_rec1_myList" cellspacing="0" rules="cols" width="100%" border="1">
                    <tbody>
                        <tr class="DataGrid_HeaderStyle">
                            <td><a href="javascript:__doPostBack('M_rec1$myList$_ctl2$_ctl1','')">Coupon Code</a></td>
                            <td><a class="tbl_data" href="javascript:__doPostBack('M_rec1$myList$_ctl2$_ctl2','')">Type</a></td>
                            <td>Created Date</td>
                            <td>Redeemed Date</td>
                            <td>AgentID</td>
                            <td align="right">Amount</td>
                        </tr>
                        <tr class="DataGrid_ItemStyle_L">
                            <td>5739YFWD</td>
                            <td>Coupon Exchg</td>
                            <td>10/3/2011</td>
                            <td>10/3/2011 11:38:00 AM</td>
                            <td>va13636</td>
                            <td align="right">$11.00</td>
                        </tr>
                        <tr class="DataGrid_AlternatingItemStyle_L">
                            <td>3231NXAH</td>
                            <td>Generic</td>
                            <td>10/7/2011</td>
                            <td>10/7/2011 11:32:00 AM</td>
                            <td>va13636</td>
                            <td align="right">$100.00</td>
                        </tr>
                        <tr class="DataGrid_ItemStyle_L">
                            <td>3931TPDK</td>
                            <td>Generic</td>
                            <td>10/7/2011</td>
                            <td>10/7/2011 11:26:00 AM</td>
                            <td>VA13636</td>
                            <td align="right">$100.00</td>
                        </tr>
                        <tr class="DataGrid_PagerStyle">
                            <td colspan="8"><span>1</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="line"></div>
    </div>
</asp:Content>

