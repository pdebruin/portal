<%@ Page language="c#" CodeBehind="DesktopDefault.aspx.cs" AutoEventWireup="false" Inherits="ASPNET.StarterKit.Portal.DesktopDefault" %>
<%@ Register TagPrefix="ASPNETPortal" TagName="Banner" Src="DesktopPortalBanner.ascx" %>
<%--

   The DesktopDefault.aspx page is used to load and populate each Portal View.  It accomplishes
   this by reading the layout configuration of the portal from the Portal Configuration
   system, and then using this information to dynamically instantiate portal modules
   (each implemented as an ASP.NET User Control), and then inject them into the page.

--%>
<html>
    <head>
        <title>ASP.NET Portal Starter Kit</title>
        <link href="ASPNETPortal.css" type="text/css" rel="stylesheet">
    </head>
    <body leftmargin="0" bottommargin="0" rightmargin="0" topmargin="0" marginheight="0" marginwidth="0">
        <form runat="server">
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr valign="top">
                    <td colspan="2">
                        <ASPNETPortal:Banner id="Banner" SelectedTabIndex="0" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <table width="100%" cellspacing="0" cellpadding="4" border="0">
                            <tr height="*" valign="top">
                                <td width="5">
                                    &nbsp;
                                </td>
                                <td id="LeftPane" Visible="false" Width="170" runat="server">
                                </td>
                                <td width="1">
                                </td>
                                <td id="ContentPane" Visible="false" Width="*" runat="server">
                                </td>
                                <td id="RightPane" Visible="false" Width="230" runat="server">
                                </td>
                                <td width="10">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
