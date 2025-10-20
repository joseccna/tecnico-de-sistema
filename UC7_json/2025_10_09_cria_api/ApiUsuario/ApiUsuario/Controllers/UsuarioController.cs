using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ApiUsuario.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        [HttpGet]
        public  IActionResult jose()
        {
            return Ok("Jose");
        }

        [HttpPost]
        public IActionResult josePost([FromBody] String? login)
        {
            if (login == null)
            {
                return BadRequest("Voce não enviou os dados de login");
            }

            return Ok($"O login foi envidado foi {login}");

            //return Ok(new { 
            //    nome = "Jose",
            //    sobrenome = "Carvalho",
            //    email = "jose@nascimento.com.br"
            //});
        }

    }
}
