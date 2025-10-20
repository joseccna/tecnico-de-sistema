using ClienteApi.Data;
using ClienteApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ClienteApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientesController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ClientesController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<Cliente>>> GetClientes()
        {
          List<Cliente> listaClientes = await _context.Clientes.ToListAsync(); //Agarda a lista de clientes do banco de dados
          return Ok(listaClientes); //Retorna a lista de clientes com o status 200 OK
          
        }

        [HttpPost]
        public async Task<IActionResult> CreateCliente([FromBody]Cliente cliente)
        {
            _context.Clientes.Add(cliente); //Adiciona o cliente ao contexto do banco de dados
            int result = await _context.SaveChangesAsync(); //Salva as alterações no banco de dados

            if (result == 1) 
            {

                return Ok("Usuário criado com sucesso!");
            }

            return BadRequest("Cliente não cadastrado");



        }




    }
}
