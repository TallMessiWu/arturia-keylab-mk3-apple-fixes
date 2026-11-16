"""Compare a read-only mounted installer against tracked source; never install it."""
import argparse
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('host', choices=('logic', 'mainstage'))
parser.add_argument('mount', type=Path)
args = parser.parse_args()
root = Path(__file__).resolve().parents[1]
assert list(args.mount.glob('*.app')), 'Installer app missing'
for model in (49, 61, 88):
    relative = Path(f'KeyLab {model} mk3.device/config.lua')
    assert (args.mount / relative).read_bytes() == (root / 'profiles' / args.host / relative).read_bytes(), relative
print(f'PASS: {args.host} installer contains all three matching profiles and an app')
