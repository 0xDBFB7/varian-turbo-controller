This is unfinished! It hasn't been fully tested - it might blow up your pump, kill your cat, spin the earth around your impeller, etc.

This seriously isn't an acceptable level of quality - not that I'm a paragon of best practice in any case - this is
specifically quite horrendous. It's been designed for home etching, as my normal board house was closed for the holidays.

Things that should be added:

If the Bemf sensing is commutated improperly, -5v or so will be put into the sense ADC pins. The integral protection diodes might be okay with that, but probably not. This is disabled at the moment.

More filtering and decoupling should be added. This pump draws nearly 700 watts on startup - there are going to be some massive transients on the power supply rail.

It may behoove you to re-spin the board.

files/controller/ is the latest version. It's just a three-phase half bridge with some charge pump drivers.
