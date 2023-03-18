Add the following to the zshrc file with the path replaced for your needs

```bash
if [ -f ~/Projects/zsh/helpers.zsh ]; then
    source ~/Projects/zsh/helpers.zsh
else
    print "404: $HOME/Projects/zsh/helpers.zsh not found."
fi
```
