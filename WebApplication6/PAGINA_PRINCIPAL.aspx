<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PAGINA_PRINCIPAL.aspx.cs" Inherits="WebApplication6.PAGINA_PRINCIPAL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>juego de inglés</title>
    <link href="pagina_principal.css" rel="stylesheet" />
      <style>
       body {
            font-family: Planet Comic;
            
            color: #333;
            margin: 0;
            padding: 0;
            background-image:url('img/Fondo2.png');
            background-repeat: no-repeat;
            background-size: cover;
        }

        form {
            width: 800px;
            max-height: 800px;

            padding: 50px;
            background-color: #fff;
            border: 1px solid #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            
            position: absolute;
            left: 25%;
            
    
            top: 50%;
            transform: translateY(-50%);

            background-image:url('img/FondoC.png');
            background-repeat: no-repeat;
            background-size: cover;

        }

        ul {
            list-style: none;
            padding: 0;
            margin: 20px 0;
            text-align: center;
        }

        li {
            display: inline-block;
            margin: 10px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #9cec56;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #9cec56;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .miClaseLabel {
            
            color: black;
            font-weight: bold;
            font-size: 20px;
            margin-left:240px;
        }

        .box {
            color: black;
            font-weight: bold;
            margin-left:50px;
            margin-top:20px;
        }

        .titulo {
            font-family: Planet Comic;
            display: block;
            text-align: center;
            color: #fea72f;
            font-weight: bold;
            font-size: 40px;
            
            
        }

        .subtitulo {
            font-family: Planet Comic;
            display: block;
            text-align: center;
            margin-top:0px;
            margin-bottom: 20px;
            color: #da3232;
            font-weight: bold;
            font-size: 20px;
            
        }

    </style>

</head>
<body>
    <form id="form2" runat="server">
        <asp:Label runat="server" Text="WELCOME TO THE GAME"  CssClass="titulo"></asp:Label><br />
        <asp:Label runat="server" Text="BIENVENIDO AL JUEGO"  CssClass="subtitulo"></asp:Label><br />

        <asp:Label runat="server" Text="READY TO PLAY?" CssClass="titulo"></asp:Label><br />
        <asp:Label runat="server" Text="¿LISTO PARA JUGAR?" CssClass="subtitulo"></asp:Label><br />

        

        <asp:Label runat="server" Text="Usuario" AssociatedControlID="usuario_text" CssClass="miClaseLabel"></asp:Label>
        <asp:TextBox ID="usuario_text" runat="server" CssClass="box" Style="margin-left: 100px"></asp:TextBox><br />

        <asp:Label runat="server" Text="Contrasena" AssociatedControlID="contraseña_text" CssClass="miClaseLabel"></asp:Label>
        <asp:TextBox ID="contraseña_text" runat="server" CssClass="box" style="margin-bottom:50px" TextMode="Password" ></asp:TextBox>
     
        <ul>
            <li><asp:LinkButton ID="btnIniciarSesion" runat="server" OnClick="btnIniciarSesion_Click" CssClass="btn-iniciar-sesion">INICIAR SESIÓN</asp:LinkButton></li>
            <li><a href="REGISTRARSE.aspx">REGISTRARSE</a></li>
        </ul>
    </form>
</body>
</html>

