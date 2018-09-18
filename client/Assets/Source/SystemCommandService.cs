using System.Threading.Tasks;
using Tarkin.Data;

namespace Tarkin
{
  public class SystemCommandService
  {
    public async Task<Result> RunCommand(SystemCommandRequest request)
    {
      return Result.Success;
    }
  }
}
