using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CMSC2240Finals.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserAuthenticationController : ControllerBase
    {
        private readonly JwtAuthenticationManager jwtAuthenticationManager;
        public UserAuthenticationController(JwtAuthenticationManager jwtAuthentication)
        {
            jwtAuthenticationManager = jwtAuthentication;
        }

        [AllowAnonymous]
        [HttpPost("Authorize")]
        public IActionResult AuthenticateUSer([FromBody] User user)
        {
            var token = jwtAuthenticationManager.Authenticate(user.username, user.password);
            if (token == null)
            {
                return Unauthorized();
            }

            return Ok(token);
        }
    }
}
