<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShowHidePageClientSide._Default" %>

<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.3.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.3.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.3.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" ClientInstanceName="pageControl">
            <TabPages>
                <dxtc:TabPage Text="Tab 1">
                    <ContentCollection>
                        <dxw:ContentControl runat="server">
                            <dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Show Tab 2">
                                <ClientSideEvents CheckedChanged="function(s, e) {
  var tab = pageControl.GetTab(1);
  var isVisible = s.GetChecked();
  tab.SetVisible(isVisible);
}" />
                            </dxe:ASPxCheckBox>
                        </dxw:ContentControl>
                    </ContentCollection>
                </dxtc:TabPage>
                <dxtc:TabPage ClientVisible="False" Text="Tab 2">
                    <ContentCollection>
                        <dxw:ContentControl runat="server">
                            <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="Label on Tab 2">
                            </dxe:ASPxLabel>
                        </dxw:ContentControl>
                    </ContentCollection>
                </dxtc:TabPage>
            </TabPages>
        </dxtc:ASPxPageControl>
    </div>
    </form>
</body>
</html>
