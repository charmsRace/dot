# Tree notes

`npx @structure-codes/cli`

- Regex substitutions
- `(?:│  )` → `│ `
- `[(?:└─)(?:─ )(?:├─)(?:│ )]` → `  `
- ` {4}` → `  `
- `^ {4}` → ``
- `sed -E` commands
  - `s/│  /│ /g`
  - `s/[(└─)(─ )(├─)(│ )]/  /g`
  - `s/ {4}/  /g`
  - `s/^ {4}//g`

Single command:
`s/│  /│ /g; s/[(└─)(─ )(├─)(│ )]/  /g; s/ {4}/  /g; s/^ {4}//g`

With tree:
`tree | sed -E 's/│  /│ /g; s/[(└─)(─ )(├─)(│ )]/  /g; s/ {4}/  /g; s/^ {4}//g' -`

Just normalize:
`tree | sed -E 's/│  /│ /g' -`
