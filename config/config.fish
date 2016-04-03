function fish_prompt
    echo ""
    set_color 0075cd
    echo (pwd)
    set_color ffffff
    printf '%s@%s: ' (whoami) (hostname)
end
