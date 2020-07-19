<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/52f1d88f70.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
</head>
<body>
    <form id="form1" runat="server">
      <div class="stcontainer">
    <nav class="navbar navbar-dark bg-primary stmenu">
 <a class="navbar-brand" href="index.aspx">Pomodoro</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span><i style="color: #fff;" class="fas fa-bars"></i></span>
  </button>
  <div style="text-align: right" class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.aspx">Eren Karaman <span class="sr-only">(current)</span></a>
      </li>
         <span style="color:#fff">This application was made by Eren Karaman. Available for free</span>
    </ul>
  </div>
</nav>
    
              <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" Enabled="false" runat="server" OnTick="Timer1_Tick" Interval="1000">
        <%--1000ms 1s--%>
                            </asp:Timer>
                            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
 <div id="stcontent1" runat="server" class="stcontent">
                    <audio id ="audioTag" runat="server" style="display:none" controls autoplay>
  <source type="audio/mpeg">
</audio> 
            <asp:Label ID="lbldk" runat="server" Text="--"></asp:Label>
     :
     <asp:Label ID="lblsn" runat="server" Text="--"></asp:Label>
     <p><asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>
     </p>
   
        </div>
                                      </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                            </asp:UpdatePanel>

 <div class="stend">
        <button type="button" id="btnstart" runat="server" OnServerClick="btnstart_Click" class="btn1 btn btn-primary btn-lg btn-block">Start</button>
        <button type="button" id="btnpause" runat="server" OnServerClick="btnpause_Click" class="btn1 btn btn-primary btn-lg btn-block">Pause</button>
        <button type="button" id="btnrestart" runat="server" OnServerClick="btnrestart_Click" class="btn1 btn btn-primary btn-lg btn-block">Restart</button>
        </div>
    </div>
    </form>
</body>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>
