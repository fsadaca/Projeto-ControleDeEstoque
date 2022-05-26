<%
    
    try{
        String user = (String) session.getAttribute("user");
        if( user.equals("")){
            response.sendRedirect("sair.jsp");
        }
        
    }catch(NullPointerException e){
        response.sendRedirect("sair.jsp");
    }

%>

<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Inventory</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Bem vindo, <b><% out.print(session.getAttribute("user")); %></b></span>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="index.jsp">Página principal</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-edit"></i> Controle <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="cursos.jsp">Adicionar</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> Visão <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="professor.jsp">Visualizar base</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-table"></i> Banco de dados <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="disciplina.jsp">Ativos</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-bar-chart-o"></i> Analises <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="aluno.jsp">Analise do estoque</a></li>
                        </ul>
                    </li>

                </ul>
            </div>


        </div>
        <!-- /sidebar menu -->

    </div>
</div>
