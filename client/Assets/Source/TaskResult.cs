namespace Tarkin
{
  public sealed class TaskResult
  {
    public bool Failed { get; }
    public string Message { get; }

    TaskResult(bool failed, string message)
    {
      Failed = failed;
      Message = message;
    }

    public static TaskResult Success()
    {
      return new TaskResult(false, null);
    }

    public static TaskResult Failure(string message)
    {
      return new TaskResult(true, message);
    }
  }
}
