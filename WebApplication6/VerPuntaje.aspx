<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerPuntaje.aspx.cs" Inherits="WebApplication6.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <style>
        body{
            font-family: Planet Comic;
            
            color: #333;
            margin: 0;
            padding: 0;
            background-image:url('img/Fondo3.png');
            background-repeat: no-repeat;
            background-size: cover;
        }
        #contenedor {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
       
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1); /* Sombra ligera */
        }

        h1{
            font-size: 70px;
        }
        p{
            font-size: 50px;
        }
        
       #txtPuntaje {
            width: 200px; /* Ajustar el ancho según sea necesario */
            height: 40px; /* Ajustar la altura según sea necesario */
            font-size: 18px; /* Ajustar el tamaño de la fuente */
            padding: 10px;
            border: none;
            border-radius: 10px;
            text-align: center;
            outline: none;
            background-color: #f6f6f6;
            color: #333;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        #txtPuntaje::placeholder {
            color: #aaa;
        }

        #txtPuntaje[readonly] {
            background-color: #580078;
            color: #777;
            cursor: not-allowed;
        }


         .custom-button {
        font-family: Planet Comic;
        margin-top: 20px;
        margin-bottom: 20px;
        border: 2px solid #580078;
        background: transparent; 
        color: #580078;
        padding: 10px 20px;
        border-radius: 10px;
        cursor: pointer;
        transition: .5s;
    }

    .custom-button:hover {
        background: #580078;
        color: #fff;
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="contenedor">
        <asp:GridView ID="gridPuntajes" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="Puntaje" DataField="puntajes" />
                <asp:BoundField HeaderText="Usuario" DataField="usuario" />
            </Columns>
        </asp:GridView>
    </div>
</form>
</body>
</html>
