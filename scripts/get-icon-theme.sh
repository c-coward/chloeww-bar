#! /bin/bash
gtk-query-settings "gtk-icon-theme-name" | grep -Eo "\".*\"" | tr -d '"'
while inotifywait -qqe close_write ~/.config/gtk-3.0/settings.ini; do
    gtk-query-settings "gtk-icon-theme-name" | grep -Eo "\".*\"" | tr -d '"';
done
