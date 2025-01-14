<%@page import="action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Manager</title>
        <meta charset="utf-8">

        <meta name="description" content="Your description">
        <meta name="keywords" content="Your keywords">
        <meta name="author" content="Your name">
        <meta name = "format-detection" content = "telephone=no" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <!--CSS-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/touchTouch.css">
        <!--JS-->   
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/touchTouch.jquery.js"></script>
        <script>
            $(window).load(function() {
                // Initialize the gallery
                $('.thumb-pad5 figure a').touchTouch();
            });
        </script>

    </head>
    <body>
        <div class="global">
            <header class="margBot1 margBrand">
                <div class="bg">
                    <div class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="navbar navbar_ clearfix marg">
                                    <div class="navbar-inner">      
                                        <div class="clearfix">
                                            <div class="nav-collapse nav-collapse_">
                                                <ul class="nav sf-menu clearfix">
                                                    <li><a href="ahome.jsp">Home</a></li>
                                                    <li><a href="approve.jsp">Recruit Developer</a></li>
                                                    <li class="active"><a href="trace.jsp">Trace History</a></li>
                                                    <li><a href="index.jsp">Logout</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center><h1 class="brand" style="margin-left: -30px;color: white;font-size: 30px">Online Bug Tracking System</h1></center> </article>
                        </div>
                    </div>
                </div>
            </header>
            <!--content-->
            <div class="container padBot" style="height: 800px;background-image: url('img/bgall2.jpg')"><br><br>

                <div class="row">
                    <article class="span4" style="color: white;margin-left: 50px">
                        <ol class="list1">
                            <li class="active"><a href="ahome.jsp">Home</a></li>
                            <li><a href="approve.jsp">Recruit Developer</a></li>
                            <li><a href="trace.jsp">Trace History</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ol>
                    </article>
                    <article class="span8 about-box" style="">
                        <h5 style="color: white;margin-top: -150px;margin-left: 475px">Trace History of Bug</h5>

                        <table style="margin-left: 260px;width: 800px">
                            <tr style="border: solid 1px;font-size: 20px;color: white;font-family: monospace;font-weight: bold;">
                                <td style="text-align: center;height: 40px">Id</td>
                                <td style="text-align: center;">Date</td>
                                <td style="text-align: center;">Triager</td>
                                <td style="text-align: center;">Action</td>
                                <td style="text-align: center;">Summary</td>
                            </tr>
                            <%
                                String id, dat, dev, sts, su = null;
                                String sql = "select * from hist";
                                Connection con = Dbcon.getCon();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    id = rs.getString("id");
                                    dat = rs.getString("dat");
                                    dev = rs.getString("dev");
                                    sts = rs.getString("status");
                                    su = rs.getString("summary");
                            %>
                            <tr style="border: solid 1px;font-size: 15px;color: white;font-family: monospace;font-weight: bold;">
                                <td style="height: 20px;text-align: center" width='10%'><%=id%></td>
                                <td style="text-align: center" width='10%'><%=dat%></td>
                                <td style="text-align: center;" width='22%'><%=dev%></td>
                                <td style="text-align: center;" width='12%'><%=sts%></td>
                                <td style="text-align: center;" width='12%'><%=su%></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </article>
                </div>
            </div>
            <div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com">Free html5 Templates</a></div>
        </div>
        <!--footer-->
        <footer>
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
                                <ul>
                                    <li><a href="index.html">home</a></li>
                                 
                                    <li><a href="contact.html">contacts</a></li>
                                </ul>
                            </nav>
                            <div class="span3 offset3">
                                <p>Made by group no 80 </p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script>
            $('.thumbnail figure a').hover(function() {
                $(this).stop().animate({opacity: 0.7}, 350, "easeOutSine");
            }, function() {
                $(this).stop().animate({opacity: 1}, 350, "easeOutSine");
            })
            $('.list1 li a').hover(function() {
                $(this).parent('li').stop().css({'color': '#6b9157'});
                $(this).stop().css({'color': '#6b9157'});
            }, function() {
                $(this).parent('li').stop().css({'color': '#de592f'});
                $(this).stop().css({'color': '#de592f'});
            })
        </script>
    </body>

</html>