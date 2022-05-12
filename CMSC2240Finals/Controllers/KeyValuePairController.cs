using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CMSC2240Finals.Controllers
{


    [Route("api/[controller]")]
    [ApiController]
    public class KeyValuePairController : ControllerBase
    {

        [HttpPost("List")]
        public List<Dictionary<string, string>> FindingValues(List<KeyValuePair<string, string>> someInput)
        {
            var dictionary = new Dictionary<string, string>();
            var dictionary2 = new Dictionary<string, string>();
            var list = new List<Dictionary<string, string>>();
            var group = someInput.GroupBy(x => x.Key);
            var keyCount = from g in @group
                       select new { g.Key, count = g.Count() };
            foreach (var x in someInput)
            {
                if (!dictionary.ContainsKey(x.Key))
                {
                    dictionary.Add(x.Key, x.Value);
                }
                else if (!dictionary2.ContainsKey(x.Key))
                {

                    foreach (var s in keyCount)
                    {
                        if (s.count > 1)
                        {
                            dictionary2.Add(s.Key, s.count.ToString());
                        }

                    }


                }

            }
            list.Add(dictionary);
            list.Add(dictionary2);
            return list;
        }
    }
}
