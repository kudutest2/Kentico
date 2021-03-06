<%@ Page Title="" Language="C#" MasterPageFile="~/CMSAPIExamples/Pages/APIExamplesPage.Master"
    Theme="Default" AutoEventWireup="true" Inherits="CMSAPIExamples_Code_Administration_EventLog_Default"
    CodeFile="Default.aspx.cs" %>

<%@ Register Src="~/CMSAPIExamples/Controls/APIExample.ascx" TagName="APIExample"
    TagPrefix="cms" %>
<%@ Register Assembly="CMS.UIControls" Namespace="CMS.UIControls" TagPrefix="cms" %>
<asp:Content ID="contentLeft" ContentPlaceHolderID="plcLeftContainer" runat="server">
    <%-- Event log --%>
    <cms:apiexamplepanel id="pnlLogEvent" runat="server" groupingtext="Event log">
        <cms:APIExample ID="apiLogEvent" runat="server" ButtonText="Log event" InfoMessage="Event with event code 'APIEXAMPLE' logged successfully." />
        <cms:APIExample ID="apiGetAndUpdateEvent" runat="server" ButtonText="Get and update event" APIExampleType="ManageAdditional" InfoMessage="Event with event code 'APIEXAMPLE' updated successfully." ErrorMessage="Event with event code 'APIEXAMPLE' not found." />
        <cms:APIExample ID="apiGetAndBulkUpdateEvents" runat="server" ButtonText="Get and bulk update events" APIExampleType="ManageAdditional" InfoMessage="All events matching the condition updated successfully." ErrorMessage="No event with event code 'APIEXAMPLE' found." />
    </cms:apiexamplepanel>
</asp:Content>
<asp:Content ID="contentRight" ContentPlaceHolderID="plcRightContainer" runat="server">
    <%-- Event log --%>
    <cms:apiexamplepanel id="pnlClearLog" runat="server" groupingtext="Event log">
        <cms:APIExample ID="apiClearLog" runat="server" ButtonText="Clear event log" APIExampleType="CleanUpMain" InfoMessage="Event log for current site cleared successfully." />
    </cms:apiexamplepanel>
</asp:Content>
