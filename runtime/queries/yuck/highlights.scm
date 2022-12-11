; Yuck is the configuration language for EWW widgets
(comment) @comment
(string) @string
(number) @constant.numeric.integer
(reserved_widget) @function.method

(vars
  var: (identifier) @variable.other.member)

(defwidget
  name: (identifier) @type)

(literal
  (identifier) @type)

[ "(" ")" "{" "}" "[" "]" ] @punctuation.bracket

[
  (reserved_widget)
  (reserved_defs)
] @keyword.control

[
  (boolean)
] @constant.builtin

(template_subsitution
  "${" @punctuation.special
  (identifier) @variable.other.member
  "}" @punctuation.special) @embedded

(conditional
  (identifier) @type
  "?:" @operator)

