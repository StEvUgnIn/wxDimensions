
// Outputs the current DMD version

extern (C) int printf(char *, ...);

void main(char[][] args)
{
    if (args.length > 1 && args[1] == "-v") 
        printf(cast(char *) "D_VERSION = ");
    printf(cast(char *) "%d\n", __VERSION__);
}
