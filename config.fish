if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
end

if test -d $HOME/.cargo/bin
    fish_add_path $HOME/.cargo/bin
end
