echo -e "run 3 test with FUSE 48/128/plus3"

fuse -m 48 --tape ./C/main.tap &
fuse -m 128 --tape ./C/main.tap &
fuse -m plus3 --tape ./C/main.tap

echo -e "did it work?"

