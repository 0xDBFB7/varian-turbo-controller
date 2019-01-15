Project: Varian Turbo
===
Status: In-Progress
-------

#### Date started: 2017-Sep-??
#### Date finished:
#### Date written: 2017-Oct-27


Background:
---

Needed a better vacuum pump for the many experiments I'm running. Tried building my own, but it's just too time intensive. Got a Varian Turbo-V200 from ebay for $220.

Description:
---

This thing says it takes 54v at 850 hz, 3-phase, but I'm not sure if that's "brushless-type" electronically-commutated, or if it's just regular, "3-phase" power. The manual for the controller says it can automatically sync up if the thing's still spinning, which leads me to believe it's doing some commutation. On the other hand, a "rotary" alternator converter can be bought for high-rad environments. IDK.

Because of its unusual power requirements, I wasn't able to find a COTS BLDC controller online that would fit the bill. One board that got close was ST's STEVAL-SPIN3201, which has a nice interface and firmware pre-written et al. However, it only does 45v, and it was $100. Little much.

So, yak shaving recursively, I designed my own board using an attiny84.

I then tried milling it on the Denford. I used a junk-bin engraving bit. I wasn't able to make it route on one layer, so I put four holes in the corners, then cut down a section of precision shaft and pinned the board to a piece of wood mounted on the mill.

Didn't work - kerf on the bit was too high for 20 mil.

Amazon sells a BLDC driver board that I think I can adapt to run at 50v - happens to use the exact same gate driver IC I was going to use. They specify 36v max, looks like an LM317 (37v rated), and 50v caps that I'll swap out. Probably want to hook up an arduino to the sense pin.

Haha, I looked at the seller's pictures and guessed the first four letters of the main IC (interesting blindsight effect!), turns out it uses a JYO1 BLDC controller. Board seems to be exactly the same as a reference one - and it includes schematics.

Got the pump in. $20 BLDC controller didn't work out of the box (didn't kick the blades around enough to catch the EMF for sync), so I hacked in an arduino to the six half-bridge phase pins. Spins up very nicely - makes the most beautiful whine. Little bit of bearing noise. Lathed out a little KF25 to 1/2" npt to 3/8 SAE adapter for the foreline flange, to go to some flared copper.

Some jerk, for reasons unknown, appears to have replaced the standard 1/4" hose barbs with some strange ferruled pipe flange - and then glued them in place with adhesives unknown. Probably going to run with air cooling for now.

Didn't come with oil, spent Sunday looking for oil, seems to be a very light 10 centiStokes@40c grade. Also, can someone please tell the oilluminati to get their measurement standards shit together? There's like 10 different scales. Come on guys, it's oil. Viscocity. Drippiness. Interestingly, the little bit of oil remaining in the pan was quite thick. Impurities? Original oil was just thicker? Degradation? Unsure. The original oil's around $200 for a little bottle, which is pretty steep. Ordered some Boca "HS oil" "Lightning Oil", which has the right weight. IDK.

New pumps seem to use grease / a small amount of oil in a wick.

Now to mate it to my chamber.

Oil came in, needed a second bottle - one just barely enough to charge the oil pan. Looks like the right stuff.

48v power supply came in - I replaced the caps with 80v equivalents and swapped out the LM317 for a high-voltage model.

Contemplated making my own driver again, but OSHpark's shipping fees are insane.

Screw it, I'll run it at 36v.

Nope.



















High-side PWM has the advantage of keeping the boost capacitor charged.

Low-side PWM will probably have a lower



Changed phase divider value to 10k to reach TTL levels for fast polling.
