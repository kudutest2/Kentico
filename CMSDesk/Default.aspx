<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSDesk_Default" CodeFile="Default.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" enableviewstate="false">
    <title>CMS Desk</title>

    <script type="text/javascript">
        //<![CDATA[
        document.titlePart = 'CMS Desk';
        //]]>
    </script>

</head>
<frameset border="0" rows="<%=trialHeight%>,<%=techPreviewHeight%>,49,*" id="rowsFrameset">
    <frame name="trial" src="<%= trialPageURL %><%=trialExpires%>" scrolling="no" noresize="noresize" frameborder="0" />
    <frame name="techPreview" src="<%= techPreviewPageURL %>" scrolling="no" noresize="noresize" frameborder="0" />
    <frame name="cmsheader" src="<%= headerPageURL %><%=Request.Url.Query%>" scrolling="no" noresize="noresize" frameborder="0" />
    <frame name="cmsdesktop" scrolling="no" noresize="noresize" frameborder="0" />
    <cms:NoFramesLiteral ID="ltlNoFrames" runat="server" />
</frameset>
</html>
