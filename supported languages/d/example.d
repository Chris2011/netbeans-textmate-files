void main()
{
    import std.stdio, std.string, std.algorithm, std.conv;

    // Reduce the RPN expression using a stack
    readln.split.fold!((stack, op)
    {
        switch (op)
        {
            // Generate operator switch cases statically
            static foreach (c; "+-*/")
                case [c]:
                    return stack[0 .. $ - 2] ~
                        mixin("stack[$ - 2] " ~ c ~
                            " stack[$ - 1]");
            default: return stack ~ op.to!real;
        }
    })((real[]).init).writeln;
}
