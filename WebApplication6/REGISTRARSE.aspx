<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRARSE.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="gerere.js" type="text/javascript"></script>
    <link href="REGISTRARSE.css" rel="stylesheet" />
      <style>
            body {
                font-family: Planet Comic;
                 background-image:url('img/Fondo2.png');
                 background-repeat: no-repeat;
                 background-size: cover;
            }

            form {
            display: block;
            text-align: center;
            margin-bottom: 7px;

            width: 800px;
            height: 800px;

            padding: 50px;
            background-color: #fff;
            border: 1px solid #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            
            position: absolute;
            left: 30%;
            
    
            top: 50%;
            transform: translateY(-50%);

            background-image:url('img/Fondoc4.png');
            background-repeat: no-repeat;
            background-size: cover;

        }

            label {
                
                
                font-family: Planet Comic;
                font-size: 20px;
                
                margin-bottom: 5px;
                color: black;
            }

            #REGISTRO_DE_USUARIOL {
                margin-left: 2cm;
            }

            input, textarea {
                font-family: Planet Comic;
                padding: 5px;
                border-radius: 25px;
                
                background-color: #efe9cb;
                border: 2px solid #cfc79d;
                outline: none;
            }

            input[type="text"], textarea {
                font-family: Planet Comic;
                font-size: 11px;
            }

            select {
                font-family: Planet Comic;
                font-size: 20px;
                padding: 5px;
                border-radius: 25px;
                margin-bottom: 10px;
                background-color: #efe9cb;
                border: 2px solid #cfc79d;
                outline: none;
            }

            .btn-success {
                display: inline-block;
                padding: 10px 20px;
                background-color: #28a745; /* Color de fondo verde (ejemplo) */
                color: white; /* Color del texto */
                text-decoration: none;
                border: none; /* Eliminamos el borde del botón */
                border-radius: 5px; /* Radio de las esquinas del botón */
                cursor: pointer; /* Cambiamos el cursor al pasar sobre el botón */
            }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="REGISTRO_DE_USUARIO">
            <h1>REGISTRO</h1>
            <asp:Label runat="server" AssociatedControlID="nombre">NOMBRE:</asp:Label>
            <asp:TextBox ID="nombre" runat="server"></asp:TextBox><br />
            <asp:Label runat="server" AssociatedControlID="apellido">APELLIDOS:</asp:Label>
            <asp:TextBox ID="apellido" runat="server"></asp:TextBox><br />
            <asp:Label runat="server" Text="SEXO:" />
            <asp:RadioButton ID="MASCULINO" runat="server" Text="MASCULINO" GroupName="sexo" />
            <asp:RadioButton ID="FEMENINO" runat="server" Text="FEMENINO" GroupName="sexo" /><br />
            <asp:Label runat="server" AssociatedControlID="email">EMAIL:</asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox><br />
            <asp:Label runat="server" AssociatedControlID="contraseña">CONTRASEÑA:</asp:Label>
            <asp:TextBox ID="contraseña" runat="server" TextMode="Password" placeholder="contraseña"></asp:TextBox><br />
            <asp:Label runat="server" AssociatedControlID="confirmar_contraseña">CONFIRMAR CONTRASEÑA:</asp:Label>
            <asp:TextBox ID="confirmar_contraseña" runat="server" TextMode="Password" placeholder="confirmar contraseña"></asp:TextBox><br />
            <asp:Button ID="enviar" runat="server" Text="REGISTRAR" CssClass="btn btn-success btn-lg" OnClick="botton_2click" OnClientClick="return verificarPassword();"  />
            <asp:Label ID="resultadoLabel" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>

</body>
</html>
