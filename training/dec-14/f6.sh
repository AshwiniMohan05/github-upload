
_mycompletion() {
    local command_name="$1";
    local current_word="$2";
    local previous_word="$3";
    COMPREPLY=( $(compgen -W 'hello' __ "$current_word") )
}
    complete -F _mycompletion mycommand

