# dotfiles

Конфиги моего окружения на Arch Linux + Hyprland. Разложены под [GNU Stow](https://www.gnu.org/software/stow/):
каждая папка — это отдельный «пакет», внутри повторяется структура относительно `$HOME`.

## Установка

```bash
sudo pacman -S --needed stow
git clone https://github.com/PavelBespakhotnyy/dotfiles.git ~/dotfiles
cd ~/dotfiles

# разложить всё сразу
stow */

# или выборочно
stow hypr kitty waybar nvim
```

## Пакеты

```bash
# официальные репозитории
sudo pacman -S --needed - < pkglist.txt

# AUR (через yay)
yay -S --needed - < pkglist-aur.txt
```

Списки обновляются командами:

```bash
pacman -Qqen > pkglist.txt        # из репозиториев
pacman -Qqem > pkglist-aur.txt    # из AUR / собранные локально
```

## Тема и иконки (тёмные)

Активная GTK-тема — **adw-gtk3-dark**, иконки — **Papirus-Dark**.

```bash
# установка
sudo pacman -S --needed adw-gtk-theme papirus-icon-theme

# применить (для GTK4 и приложений, читающих gsettings)
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

Настройки GTK3/GTK4 (`gtk-theme-name`, `prefer-dark`) уже лежат в пакете `gtk`
(`~/.config/gtk-3.0/settings.ini`, `~/.config/gtk-4.0/settings.ini`) и подхватываются после `stow gtk`.
