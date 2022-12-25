<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en"> 
    <head>
        <title>Portal - Bootstrap 5 Admin Dashboard Template For Developers</title>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
        <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
        <link rel="shortcut icon" href="favicon.ico"> 

        <!-- FontAwesome JS-->
        <script defer src="assets/plugins/fontawesome/js/all.min.js"></script>

        <!-- App CSS -->  
        <link id="theme-style" rel="stylesheet" href="assets/css/portal.css">

    </head> 

    <body class="app">   	
        <header class="app-header fixed-top">	   	            
            <div class="app-header-inner">  
                <div class="container-fluid py-2">
                    <div class="app-header-content"> 
                        <div class="row justify-content-between align-items-center">

                            <div class="col-auto">
                                <a id="sidepanel-toggler" class="sidepanel-toggler d-inline-block d-xl-none" href="#">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" role="img"><title>Menu</title><path stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M4 7h22M4 15h22M4 23h22"></path></svg>
                                </a>
                            </div><!--//col-->
                            <div class="app-utilities col-auto">
                                <%
                                    String name = (String) session.getAttribute("name");
                                %>
                                <div class="app-utility-item">
                                    <h5>Manager: <%=name%></h5>
                                </div><!--//app-utility-item-->

                                <div class="app-utility-item app-user-dropdown dropdown">
                                    <a class="dropdown-toggle" id="user-dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><img src="assets/images/user.jpg" alt="user profile"></a>
                                    <ul class="dropdown-menu" aria-labelledby="user-dropdown-toggle">
                                        <li><a class="dropdown-item" href="#">Account</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="logout">Log Out</a></li>
                                    </ul>
                                </div><!--//app-user-dropdown--> 
                            </div><!--//app-utilities-->
                        </div><!--//row-->
                    </div><!--//app-header-content-->
                </div><!--//container-fluid-->
            </div><!--//app-header-inner-->
            <div id="app-sidepanel" class="app-sidepanel sidepanel-hidden"> 
                <div id="sidepanel-drop" class="sidepanel-drop"></div>
                <div class="sidepanel-inner d-flex flex-column">
                    <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
                    <div class="app-branding">
                        <a class="app-logo" href="home"><img class="logo-icon me-2" src="assets/images/app-logo.svg" alt="logo"><span class="logo-text">PORTAL</span></a>

                    </div><!--//app-branding-->  
                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                        <ul class="app-menu list-unstyled accordion" id="menu-accordion">
                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link" href="home">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
                                        <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Overview</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->
                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link" href="add">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-folder" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M9.828 4a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 6.173 2H2.5a1 1 0 0 0-1 .981L1.546 4h-1L.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3v1z"/>
                                        <path fill-rule="evenodd" d="M13.81 4H2.19a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zM2.19 3A2 2 0 0 0 .198 5.181l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3H2.19z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Insert</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->
                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link active" href="list">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-card-list" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
                                        <path fill-rule="evenodd" d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5z"/>
                                        <circle cx="3.5" cy="5.5" r=".5"/>
                                        <circle cx="3.5" cy="8" r=".5"/>
                                        <circle cx="3.5" cy="10.5" r=".5"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Table</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->
                            <li class="nav-item has-submenu">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link submenu-toggle" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-1" aria-expanded="false" aria-controls="submenu-1">
                                    <span class="nav-icon">
                                        <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-files" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M4 2h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4z"/>
                                        <path d="M6 0h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2v-1a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1H4a2 2 0 0 1 2-2z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Report</span>
                                    <span class="submenu-arrow">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
                                        </svg>
                                    </span><!--//submenu-arrow-->
                                </a><!--//nav-link-->
                                <div id="submenu-1" class="collapse submenu submenu-1" data-bs-parent="#menu-accordion">
                                    <ul class="submenu-list list-unstyled">
                                        <li class="submenu-item"><a class="submenu-link" href="report?action=reportyear">1.Report Total Amount Spent By Year</a></li>
                                        <li class="submenu-item"><a class="submenu-link" href="report?action=reportyearhavechoose">2.Report Total Amount Spent By Year(Select Category)</a></li>
                                    </ul>
                                </div>
                            </li><!--//nav-item-->
                            <li class="nav-item has-submenu">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link submenu-toggle" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-2" aria-expanded="false" aria-controls="submenu-2">
                                    <span class="nav-icon">
                                        <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-columns-gap" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M6 1H1v3h5V1zM1 0a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H1zm14 12h-5v3h5v-3zm-5-1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5zM6 8H1v7h5V8zM1 7a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H1zm14-6h-5v7h5V1zm-5-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1h-5z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Service</span>
                                    <span class="submenu-arrow">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
                                        </svg>
                                    </span><!--//submenu-arrow-->
                                </a><!--//nav-link-->
                                <div id="submenu-2" class="collapse submenu submenu-2" data-bs-parent="#menu-accordion">
                                    <ul class="submenu-list list-unstyled">
                                        <li class="submenu-item"><a class="submenu-link" href="#">Search</a></li>
                                        <li class="submenu-item"><a class="submenu-link" href="#">Calculate</a></li>
                                        <li class="submenu-item"><a class="submenu-link" href="#">.....</a></li>
                                    </ul>
                                </div>
                            </li><!--//nav-item-->
                        </ul><!--//app-menu-->
                    </nav><!--//app-nav-->
                </div><!--//sidepanel-inner-->
            </div><!--//app-sidepanel-->
        </header><!--//app-header-->

        <div class="app-wrapper">

            <div class="app-content pt-3 p-md-3 p-lg-4">
                <div class="container-xl">

                    <div class="row g-3 mb-4 align-items-center justify-content-between">
                        <div class="col-auto">
                            <h1 class="app-page-title mb-0">Note List Of Money Spent Each Year</h1>
                        </div>
                    </div><!--//row-->


                    <nav id="orders-table-tab" class="orders-table-tab app-nav-tabs nav shadow-sm flex-column flex-sm-row mb-4">
                        <a class="flex-sm-fill text-sm-center nav-link active" id="orders-all-tab" data-bs-toggle="tab" href="#orders-all" role="tab" aria-controls="orders-all" aria-selected="true" >All</a>
                        <a class="flex-sm-fill text-sm-center nav-link"  id="orders-paid-tab" data-bs-toggle="tab" href="#orders-paid" role="tab" aria-controls="orders-paid" aria-selected="false">2021</a>
                        <a class="flex-sm-fill text-sm-center nav-link" id="orders-pending-tab" data-bs-toggle="tab" href="#orders-pending" role="tab" aria-controls="orders-pending" aria-selected="false">2020</a>
                        <a class="flex-sm-fill text-sm-center nav-link" id="orders-cancelled-tab" data-bs-toggle="tab" href="#orders-cancelled" role="tab" aria-controls="orders-cancelled" aria-selected="false">2019</a>
                    </nav>
                    

                    <div class="tab-content" id="orders-table-tab-content">
                        <%
                        ResultSet rsAll = (ResultSet) session.getAttribute("rsAll");
                        %>
                        <div class="tab-pane fade show active" id="orders-all" role="tabpanel" aria-labelledby="orders-all-tab">
                            <div class="app-card app-card-orders-table shadow-sm mb-5">
                                <div class="app-card-body">
                                    <div class="table-responsive">
                                        <table class="table app-table-hover mb-0 text-left">
                                            <thead>
                                                <tr>
                                                    <th class="cell">Bill Id</th>
                                                    <th class="cell">Note</th>
                                                    <th class="cell">Date</th>
                                                    <th class="cell">Money Spent</th>
                                                    <th class="cell">Category</th>
                                                    <th class="cell">Manager</th>
                                                    <th class="cell"></th>
                                                    <th class="cell"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while(rsAll.next()){
                                                %>
                                                <tr>
                                                    <td class="cell"><%=rsAll.getString(1)%></td>
                                                    <td class="cell"><span class="truncate"><%=rsAll.getString(3)%></span></td>
                                                    <td class="cell"><%=rsAll.getString(2)%></td>
                                                    <td class="cell"><%=rsAll.getString(4)%></td>
                                                    <td class="cell"><%=rsAll.getString(5)%></td>
                                                    <td class="cell"><%=rsAll.getString(6)%></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="update?idbill=<%=rsAll.getString(1)%>">Update</a></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="remove?idbill=<%=rsAll.getString(1)%>">Delete</a></td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div><!--//table-responsive-->
                                </div><!--//app-card-body-->		
                            </div><!--//app-card-->
                        </div><!--//tab-pane-->

                        <%
                            ResultSet rs2021 = (ResultSet) session.getAttribute("rs2021");
                        %>
                        <div class="tab-pane fade" id="orders-paid" role="tabpanel" aria-labelledby="orders-paid-tab">
                            <div class="app-card app-card-orders-table mb-5">
                                <div class="app-card-body">
                                    <div class="table-responsive">
                                        <table class="table app-table-hover mb-0 text-left">
                                            <thead>
                                                <tr>
                                                    <th class="cell">Bill Id</th>
                                                    <th class="cell">Note</th>
                                                    <th class="cell">Date</th>
                                                    <th class="cell">Money Spent</th>
                                                    <th class="cell">Category</th>
                                                    <th class="cell">Manager</th>
                                                    <th class="cell"></th>
                                                    <th class="cell"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while(rs2021.next()){
                                                %>
                                                <tr>
                                                    <td class="cell"><%=rs2021.getString(1)%></td>
                                                    <td class="cell"><span class="truncate"><%=rs2021.getString(3)%></span></td>
                                                    <td class="cell"><%=rs2021.getString(2)%></td>
                                                    <td class="cell"><%=rs2021.getString(4)%></td>
                                                    <td class="cell"><%=rs2021.getString(5)%></td>
                                                    <td class="cell"><%=rs2021.getString(6)%></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="update?idbill=<%=rs2021.getString(1)%>">Update</a></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="remove?idbill=<%=rs2021.getString(1)%>">Delete</a></td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div><!--//table-responsive-->
                                </div><!--//app-card-body-->		
                            </div><!--//app-card-->
                        </div><!--//tab-pane-->

                        <%
                            ResultSet rs2020 = (ResultSet) session.getAttribute("rs2020");
                        %>
                        <div class="tab-pane fade" id="orders-pending" role="tabpanel" aria-labelledby="orders-pending-tab">
                            <div class="app-card app-card-orders-table mb-5">
                                <div class="app-card-body">
                                    <div class="table-responsive">
                                        <table class="table app-table-hover mb-0 text-left">
                                            <thead>
                                                <tr>
                                                    <th class="cell">Bill Id</th>
                                                    <th class="cell">Note</th>
                                                    <th class="cell">Date</th>
                                                    <th class="cell">Money Spent</th>
                                                    <th class="cell">Category</th>
                                                    <th class="cell">Manager</th>
                                                    <th class="cell"></th>
                                                    <th class="cell"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while(rs2020.next()){
                                                %>
                                                <tr>
                                                    <td class="cell"><%=rs2020.getString(1)%></td>
                                                    <td class="cell"><span class="truncate"><%=rs2020.getString(3)%></span></td>
                                                    <td class="cell"><%=rs2020.getString(2)%></td>
                                                    <td class="cell"><%=rs2020.getString(4)%></td>
                                                    <td class="cell"><%=rs2020.getString(5)%></td>
                                                    <td class="cell"><%=rs2020.getString(6)%></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="update?idbill=<%=rs2020.getString(1)%>">Update</a></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="remove?idbill=<%=rs2020.getString(1)%>">Delete</a></td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div><!--//table-responsive-->
                                </div><!--//app-card-body-->		
                            </div><!--//app-card-->
                        </div><!--//tab-pane-->
                        
                        <%
                            ResultSet rs2019 = (ResultSet) session.getAttribute("rs2019");
                        %>
                        <div class="tab-pane fade" id="orders-cancelled" role="tabpanel" aria-labelledby="orders-cancelled-tab">
                            <div class="app-card app-card-orders-table mb-5">
                                <div class="app-card-body">
                                    <div class="table-responsive">
                                        <table class="table app-table-hover mb-0 text-left">
                                            <thead>
                                                <tr>
                                                    <th class="cell">Bill Id</th>
                                                    <th class="cell">Note</th>
                                                    <th class="cell">Date</th>
                                                    <th class="cell">Money Spent</th>
                                                    <th class="cell">Category</th>
                                                    <th class="cell">Manager</th>
                                                    <th class="cell"></th>
                                                    <th class="cell"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    while(rs2019.next()){
                                                %>
                                                <tr>
                                                    <td class="cell"><%=rs2019.getString(1)%></td>
                                                    <td class="cell"><span class="truncate"><%=rs2019.getString(3)%></span></td>
                                                    <td class="cell"><%=rs2019.getString(2)%></td>
                                                    <td class="cell"><%=rs2019.getString(4)%></td>
                                                    <td class="cell"><%=rs2019.getString(5)%></td>
                                                    <td class="cell"><%=rs2019.getString(6)%></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="update?idbill=<%=rs2019.getString(1)%>">Update</a></td>
                                                    <td class="cell"><a class="btn-sm app-btn-secondary" href="remove?idbill=<%=rs2019.getString(1)%>">Delete</a></td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div><!--//table-responsive-->
                                </div><!--//app-card-body-->		
                            </div><!--//app-card-->
                        </div><!--//tab-pane-->
                    </div><!--//tab-content-->
                </div><!--//container-fluid-->
            </div><!--//app-content-->
        </div><!--//app-wrapper-->    					


        <!-- Javascript -->          
        <script src="assets/plugins/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>  


        <!-- Page Specific JS -->
        <script src="assets/js/app.js"></script> 

    </body>
</html> 

