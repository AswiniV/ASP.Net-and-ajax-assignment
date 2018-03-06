<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimerAssignment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Panels</h2>

        <asp:Timer ID="globalTimer" runat="server" Interval="1000" OnTick="globalTimer_Tick"></asp:Timer>
        <div class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">1 second</div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                           <%-- <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>--%>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="globalTimer" EventName="Tick"/>
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">2 second</div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                           <%-- <asp:Timer ID="Timer2" runat="server" OnTick="Timer2_Tick" Interval="2000"></asp:Timer>--%>
                        </ContentTemplate>
                         <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="globalTimer" EventName="Tick"/>
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="panel panel-success">
                <div class="panel-heading">3 seconds</div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <asp:Timer ID="Timer3" runat="server" OnTick="Timer3_Tick" Interval="3000"></asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">4 seconds</div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            <asp:Timer ID="Timer4" runat="server" OnTick="Timer4_Tick" Interval="4000"></asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="panel panel-warning">
                <div class="panel-heading">5 seconds</div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            <asp:Timer ID="Timer5" runat="server" OnTick="Timer5_Tick" Interval="5000"></asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div class="panel panel-danger">
                <div class="panel-heading">Never</div>
                <div class="panel-body">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
