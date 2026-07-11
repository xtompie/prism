# Demo shim for the Prism README GIF (rendered via VHS).
# Defines two fake commands so the recording shows a clean contrast:
#   ask   <prompt>  -> the generic "direct" answer (AI slop)
#   prism <prompt>  -> what Prism surfaces instead
c_reset=$'\033[0m'; c_dim=$'\033[2m'; c_grn=$'\033[32m'; c_mag=$'\033[35m'
c_cyn=$'\033[36m'; c_yel=$'\033[33m'; c_bold=$'\033[1m'

ask() {
  printf '\n'
  printf '%b\n' "${c_dim}<section class=\"hero\">${c_reset}"
  printf '%b\n' "${c_dim}  <h1>Elevate Your Workflow</h1>${c_reset}"
  printf '%b\n' "${c_dim}  <a class=\"btn\">Get Started</a>  <a class=\"btn-ghost\">Learn More</a>${c_reset}"
  printf '%b\n' "${c_dim}</section>${c_reset}"
  printf '%b\n' "${c_dim}# purple gradient · Inter · 3 feature cards · 2 CTAs${c_reset}"
  printf '\n'
  printf '%b\n' "${c_yel}renders fine — and it's the exact page 10,000 products already shipped.${c_reset}"
  printf '\n'
}

prism() {
  printf '\n'
  printf '%b' "${c_mag}lenses:${c_reset} "
  for l in jobs-to-be-done commit-to-an-extreme name-the-failure-mode; do
    printf '%b  ' "${c_cyn}${l}${c_reset}"
    sleep 0.20
  done
  printf '\n        '
  for l in commanders-intent define-the-edge reverse-prompting; do
    printf '%b  ' "${c_cyn}${l}${c_reset}"
    sleep 0.20
  done
  printf '\n\n'
  printf '%b\n' "${c_bold}before one line of HTML, decide:${c_reset}"
  printf '%b\n' "  ${c_grn}•${c_reset} who is this for?     ${c_dim}developer / CFO / your mom${c_reset}"
  printf '%b\n' "  ${c_grn}•${c_reset} the ONE action       ${c_dim}(not 4 competing CTAs)${c_reset}"
  printf '%b\n' "  ${c_grn}•${c_reset} commit to ONE lane    ${c_dim}brutalist / editorial / loud — not the safe average${c_reset}"
  printf '%b\n' "  ${c_grn}•${c_reset} what it must NOT be   ${c_dim}\"generic AI-slop\": no purple gradient, no emoji triptych${c_reset}"
  printf '\n'
  printf '%b\n' "${c_bold}→ answer \"who for + one action\" and the copy, look & CTA stop being guesses.${c_reset}"
  printf '\n'
}
