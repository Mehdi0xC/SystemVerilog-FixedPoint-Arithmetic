% Developed by Mehdi0xC, Fall 2019 
FRACTION_SIZE = 17;
FIXED_POINT_SIZE = 32;

a = 3.14159;
b = 2.71828;

c = a + b;
d = a * b;

a = fi(a, 1, FIXED_POINT_SIZE, FRACTION_SIZE);
b = fi(b, 1, FIXED_POINT_SIZE, FRACTION_SIZE);

disp(a.hex);
disp(b.hex);

c = fi(c, 1, FIXED_POINT_SIZE, FRACTION_SIZE);
d = fi(c, 1, FIXED_POINT_SIZE, FRACTION_SIZE);

disp('Result of addition in hex:');
disp(c.hex);
disp('Result of multiplication in hex:');
disp(d.hex);
