"""Compile-only Lua syntax check for DB files (migration helper, not committed)."""
import sys
from lupa import LuaRuntime, LuaSyntaxError

lua = LuaRuntime(unpack_returned_tuples=True)

failures = 0
for path in sys.argv[1:]:
    with open(path, 'rb') as f:
        src = f.read().decode('utf-8')
    try:
        lua.compile(src)
    except LuaSyntaxError as e:
        failures += 1
        print("SYNTAX ERROR  %s\n    %s" % (path, e))
    except Exception as e:
        failures += 1
        print("ERROR         %s\n    %r" % (path, e))

print("checked %d file(s), %d failure(s)" % (len(sys.argv) - 1, failures))
sys.exit(1 if failures else 0)
