import Unbox

struct GithubUserFormatter: UnboxFormatter {
    func format(unboxedValue: String) -> String? {
        let values = unboxedValue.components(separatedBy: "/").filter { $0 != "" }
        if values.count > 0, let value = values.last {
            return value
        }

        return nil
    }
}