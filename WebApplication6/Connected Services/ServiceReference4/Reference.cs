﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication6.ServiceReference4 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference4.Iverificar")]
    public interface Iverificar {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Iverificar/verificar_datos", ReplyAction="http://tempuri.org/Iverificar/verificar_datosResponse")]
        bool verificar_datos(string email, string contraseña);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Iverificar/verificar_datos", ReplyAction="http://tempuri.org/Iverificar/verificar_datosResponse")]
        System.Threading.Tasks.Task<bool> verificar_datosAsync(string email, string contraseña);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IverificarChannel : WebApplication6.ServiceReference4.Iverificar, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class IverificarClient : System.ServiceModel.ClientBase<WebApplication6.ServiceReference4.Iverificar>, WebApplication6.ServiceReference4.Iverificar {
        
        public IverificarClient() {
        }
        
        public IverificarClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public IverificarClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public IverificarClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public IverificarClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool verificar_datos(string email, string contraseña) {
            return base.Channel.verificar_datos(email, contraseña);
        }
        
        public System.Threading.Tasks.Task<bool> verificar_datosAsync(string email, string contraseña) {
            return base.Channel.verificar_datosAsync(email, contraseña);
        }
    }
}
