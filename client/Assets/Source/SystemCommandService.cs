using System.Threading.Tasks;
using Tarkin.Data;

namespace Tarkin
{
  public class SystemCommandService
  {
    public async Task<TaskResult> RunCommand(SystemCommandRequest request)
    {
      return await Task.FromResult(TaskResult.Success());
    }
  }
}