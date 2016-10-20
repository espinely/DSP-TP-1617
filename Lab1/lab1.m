%Step 1:
signal=Dirac(10,20)
stem(signal)
title('Dirac function')

%Step 2>
signal=Step(10,20)
figure;
stem(signal)
title('Step function')

%Step 3>
signal=Ramp(2,10,20)
figure;
stem(signal)
title('Ramp function')

%Step 4>
signal=Geo(2,10,20)
figure;
stem(signal)
title('Geo function')
