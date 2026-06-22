# Kinesis Advantage360 SmartSet Thumb Remap

Minimal notes for an LLM/operator to repeat this on a new Kinesis Advantage360 Non-Pro / SmartSet keyboard.

## Goal

Remap the visible top thumb-cluster modifier row, left to right, for macOS:

```text
Cmd, Opt, Ctrl, Cmd
```

Confirmed working on this keyboard with the exact remaps below.

## Device

- Model: Kinesis Advantage360 Non-Pro, SmartSet USB firmware
- V-Drive mount name observed on macOS: `/Volumes/ADV360`
- Active profile setting: `/Volumes/ADV360/settings/settings.txt`
- Layout files: `/Volumes/ADV360/layouts/layout1.txt` through `layout9.txt`

## Important Behavior

- `profile=0` is non-programmable.
- Use one of profiles `1` through `9` for remaps.
- `profile=1` corresponds to `layouts/layout1.txt`.
- Always back up files before editing.
- Always `sync` and eject the V-Drive before closing V-Drive mode on the keyboard.

## SmartSet Syntax

Remap syntax is:

```text
[physical-position-token]>[action-token]
```

Put remaps under the `<base>` header for the normal/base layer.

Relevant action tokens:

```text
lwin = left GUI / Windows / macOS Command
rwin = right GUI / Windows / macOS Command
lalt = left Alt / macOS Option
rctr = right Control
```

The relevant physical position tokens for the top thumb-cluster modifiers are based on the default Windows layout:

```text
lctr = left thumb top-left physical key
lalt = left thumb top-right physical key
rwin = right thumb top-left physical key
rctr = right thumb top-right physical key
```

Do not use `ralt` or `kh77` for the right thumb top-left physical key. On this keyboard that key may appear to output `Sel`/Select when misconfigured, but the correct physical position token from the Kinesis position-token map is `rwin`.

## Exact Edits

Set active profile to profile 1:

```text
/Volumes/ADV360/settings/settings.txt
profile=1
```

Set `/Volumes/ADV360/layouts/layout1.txt` to include these lines under `<base>`:

```text
<base>
[lctr]>[lwin]
[lalt]>[lalt]
[rwin]>[rctr]
[rctr]>[rwin]

<keypad>

<function1>

<function2>

<function3>
```

## Safe Procedure

1. Put keyboard in V-Drive mode.
2. Confirm mount with `mount` and find `/Volumes/ADV360`.
3. Back up files:

```sh
cp "/Volumes/ADV360/settings/settings.txt" "/Volumes/ADV360/settings/settings.txt.bak-opencode"
cp "/Volumes/ADV360/layouts/layout1.txt" "/Volumes/ADV360/layouts/layout1.txt.bak-opencode"
```

4. Edit `settings.txt` and `layout1.txt` as above.
5. Verify contents.
6. Flush and eject:

```sh
sync && diskutil eject "/Volumes/ADV360"
```

7. Close V-Drive mode on the keyboard. If needed, unplug/replug or press `SmartSet + 1` to load profile 1.
