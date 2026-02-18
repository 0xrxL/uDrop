using System.Text.RegularExpressions;

namespace uDrop.Code
{
    public partial class uRegex
    {
        public static string Replace(string input, string pattern, Func<Match, string> evaluator)
        {
            return new Regex(pattern).Replace(input, new MatchEvaluator(evaluator));
        }

        [GeneratedRegex(@"[\\/]+")]
        public static partial Regex GetOSSpecificFullPath();

        [GeneratedRegex(@"\d+")]
        public static partial Regex GetSmaliFoldersRegex();

        [GeneratedRegex(@"\d+\.\d+\.\d+")]
        public static partial Regex GetLastAPKRegex();

        [GeneratedRegex(@"[\\/]")]
        public static partial Regex PartialPathRegex();
    }
}