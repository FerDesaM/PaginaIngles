<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina_de_juego.aspx.cs" Inherits="Serviciodeingles.pagina_de_juego" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>

     body {
            font-family: Planet Comic;
            
            color: #333;
            margin: 0;
            padding: 0;
            background-image:url('img/Fondo22.png');
            background-repeat: no-repeat;
            background-size: cover;
     }

     form {
            width: 400px;
            height: 800px;

            padding: 50px;
            background-color: #fff;
            border: 1px solid #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            
            position: absolute;
            left: 65%;
            
    
            top: 55%;
            transform: translateY(-50%);

            background-image:url('img/Fondoc3.png');
            background-repeat: no-repeat;
            background-size: cover;

        }

     .titulo {
            font-family: Planet Comic;
            display: block;
            margin-left: 65px;
            margin-top:150px;
            color: #c70039;
            font-weight: bold;
            font-size: 70px;
            
            
        }

        .subtitulo {
            font-family: Planet Comic;
            display: block;
            margin-left: 67px;
            margin-top:0px;
            margin-bottom: 20px;
            color: #900c3f;
            font-weight: bold;
            font-size: 50px;
            
        }

        .titulo1 {
            font-family: Planet Comic;
            display: block;
            text-align: center;
            color: #fea72f;
            font-weight: bold;
            font-size: 50px;
            
            
        }

        .subtitulo1 {
            font-family: Planet Comic;
            display: block;
            text-align: center;
            margin-top:0px;
            margin-bottom: 20px;
            color: #da3232;
            font-weight: bold;
            font-size: 30px;
            
        }

        ul {
            list-style-type: none;
            padding: 0;
            font-family: Planet Comic;
        }

        li {
            display: inline-block;
            margin-right: 10px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-family: Planet Comic;
        }
        
        .custom-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
            font-family: Planet Comic;
        }

        p {
            color: #900c3f;
            font-size: 25px;
            margin-left: 55px;
            font-family: Planet Comic;
        }

        </style>
    <script src="Pagina_de_juego.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div>
        <asp:Label runat="server" Text="HOW ARE YOU?"  CssClass="titulo"></asp:Label><br />
        <asp:Label runat="server" Text="¿COMO ESTAS?"  CssClass="subtitulo"></asp:Label><br />
    </div>
    

   <form id="form2" runat="server">

       <asp:Label runat="server" Text="WHAT ARE YOU DO?" CssClass="titulo1" ></asp:Label><br />
       <asp:Label runat="server" Text="¿QUE QUIERES HACER?" CssClass="subtitulo1" ></asp:Label><br />
     
        <asp:Button ID="Escoger_nivel" runat="server" Text="ESCOGER NIVEL" CssClass="custom-button"   OnClientClick="return esconderBoton();"/>
        <div  id="botones" style="display : none">
            <asp:Button ID="Button1" runat="server" Text="BASICO" CssClass="custom-button" OnClientClick="return basico()" />
            <asp:Button ID="Button2" runat="server" Text="INTERMEDIO" CssClass="custom-button" OnClientClick="return intermedio()" />
            <asp:Button ID="Button3" runat="server" Text="AVANZADO" CssClass="custom-button" OnClientClick="return avanzado()" />
            <asp:Button ID="Button4" runat="server" Text="VOLVER" CssClass="custom-button" OnClientClick="return volver();"/>
        </div>

        <ul>
            <li><a href="VerPuntaje.aspx">Ver puntaje</a></li>

        </ul>

       </form>

            <asp:Label runat="server" Text="GAME RULES"  CssClass="titulo"></asp:Label><br />
            <div id="contenido-adicional">
                <p>   Responde las preguntas en <br />
                      el menor tiempo posible.<br />
                      Obten la mayor cantidad <br />
                      de respuestas<br />
                      correctas para ganar.<br />
                      <br />
                      ¡Diviertete mientras aprendes ingles!</p>
            </div>
    
</body>
</html>
