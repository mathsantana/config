# Adding custom keyboard layout

The US layout doesn't provide some accents to be used. But, using a custom [EurKEY layout](https://eurkey.steffen.bruentjen.eu/), we can have some the majority of the needed symbols.

These are the steps to do so:

1. Add the layout, located inside `symbols`, to `/usr/share/X11/xkb/symbols`:
```bash
cp symbols/cstm /usr/share/X11/xkb/symbols
```
* You can create a symlink too:
```bash
ln -s $HOME/config/keyboard/symbols/cstm /usr/share/X11/xkb/symbols/cstm
```


2. Add a entry in `evdev.xml`:
  * Inside `<layoutlist>` tag, insert this code:

```xml
  <layout>
    <configItem>
      <name>cstm</name>
      <shortDescription>Custom EUR</shortDescription>
      <description>Custom EurKEY</description>
      <languageList>
              <iso639Id>cat</iso639Id>
              <iso639Id>dan</iso639Id>
              <iso639Id>eng</iso639Id>
              <iso639Id>est</iso639Id>
              <iso639Id>fao</iso639Id>
              <iso639Id>fin</iso639Id>
              <iso639Id>ger</iso639Id>
              <iso639Id>gre</iso639Id>
              <iso639Id>gsw</iso639Id>
              <iso639Id>ita</iso639Id>
              <iso639Id>lav</iso639Id>
              <iso639Id>lit</iso639Id>
              <iso639Id>nld</iso639Id>
              <iso639Id>nor</iso639Id>
              <iso639Id>por</iso639Id>
              <iso639Id>spa</iso639Id>
              <iso639Id>swe</iso639Id>
      </languageList>
    </configItem>
  </layout>
```

3. Restart to apply changes:
  * Using below command, it's not necessary to restart your PC: 
```bash
sudo udevadm trigger --subsystem-match=input --action=change
```
