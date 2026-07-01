local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cppbase", {
    t({
      "#include <iostream>",
      "#include <vector>",
      "#include <string>",
      "#include <algorithm>",
      "#include <climits>",
      "#include <cstdint>",
      "#include <map>",
      "#include <unordered_map>",
      "#include <set>",
      "#include <unordered_set>",
      "#include <queue>",
      "#include <stack>",
      "",
      "using namespace std;",
      "",
      "int main() {",
      "    ",
    }),
    i(1, "// Your code here"),
    t({
      "",
      "    return 0;",
      "}",
    }),
  }),
}
