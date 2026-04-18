
# declare CLAIRMD

alias roost="openclaw"
alias qwk="openclaw gateway"

declare ROOST=${D_HOME}/.ROOST
alias .cd-roost="cd ${ROOST}"
alias .code-roost="code ${ROOST}/.vscode/.ROOST.code-workspace"

alias .cc-tweak="tweakcc"
alias .cc-line="ccline"
alias .cc-log="claude-code-log"

alias .thought-cabinet="pnpm --dir ${D_GIT}/thought-cabinet cli"
alias .tc-roost=".thought-cabinet ~/.ROOST/.claude/CLAUDE.md"

# alias qwk="claude"
# alias qwk-new="qwk \"INIT SESSION\""
# alias qwk-resume="qwk --resume"

alias .qwk-new=".cd-roost && happy -- \"INIT SESSION\""
alias .qwk-resume=".cd-roost && happy --resume"

# alias qwk-opus="qwk --model opus"

# alias qwk="claude" # can I create one variant passing prompt "INIT SESSION YYYY-MM-DD-a" to start a new session?
# alias qwk="claude --resume" # one variant to resume last session?

alias .roost=".cd-roost && .code-roost"
alias .roost-log=".cc-log ${D_HOME}/.claude/projects/C--Users-clarity--ROOST"
# alias .roost-log=".cc-log ${D_HOME}/.claude/projects/C--Users-clarity--ROOST --output ${ROOST}/logs/"

# Full doodle dump
alias .meep="cat ${ROOST}/ascii/works/doodles.md"
# Recent additions (tail mode)
alias .chirp="tail -50 ${ROOST}/ascii/works/doodles.md"

# ASCII Animation Tools
# Source the animation scripts to load functions
alias .anim-load="source ${ROOST}/ascii/tooling/compile-anim.sh && source ${ROOST}/ascii/tooling/play-ascii.sh && echo '🎬 Animation tools loaded!'"

# Quick test animation
alias .anim-test="cd ${ROOST}/ascii/tooling && source play-ascii.sh && play-ascii bird-hop-test.ascii-anim 3"

# Helper to go to tooling directory
alias .cd-anim="cd ${ROOST}/ascii/tooling"

# Example usage after loading functions:
#   .anim-load
#   compile-anim 20 5 my-animation.ascii-anim frame-*.txt
#   play-ascii my-animation.ascii-anim       # loop forever
#   play-ascii my-animation.ascii-anim 5     # loop 5 times

#!/usr/bin/env bash
# QWK Daemon - Bash Aliases
# Add to your ~/.bashrc or source directly: source ~/.ROOST/@outbox/qwk-aliases.sh

# # ---

# # QWK Daemon aliases
# alias qwk-daemon="$HOME/.ROOST/projects/qwk-daemon/src/qwk-daemon"
# alias qwk-ctl="$HOME/.ROOST/projects/qwk-daemon/src/qwk-ctl"
# alias qwk-attach="$HOME/.ROOST/projects/qwk-daemon/src/qwk-attach"

# # Convenience shortcuts
# alias qwk-start="qwk-daemon start"
# alias qwk-status="qwk-ctl status"
# alias qwk-logs="qwk-ctl logs"
# alias qwk-stop="qwk-ctl stop"

# # Quick log viewing
# alias qwk-tail="tail -f ~/.qwk/sessions/current/output.log"
# alias qwk-errors="tail -f ~/.qwk/sessions/current/error.log"

# # Session management
# alias qwk-list="qwk-ctl list"
# alias qwk-cleanup="qwk-ctl cleanup"

# echo "QWK Daemon aliases loaded! ⚡"
# echo "Commands available:"
# echo "  qwk-daemon, qwk-ctl, qwk-attach"
# echo "  qwk-start, qwk-status, qwk-logs, qwk-stop"
# echo "  qwk-tail, qwk-errors, qwk-list, qwk-cleanup"
