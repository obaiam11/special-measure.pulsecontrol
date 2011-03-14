function awggroups(ind)

% (c) 2010 Hendrik Bluhm.  Please see LICENSE and COPYRIGHT information in plssetup.m.


global awgdata;

if nargin < 1
    ind = 1:length(awgdata.pulsegroups);
end

for i = ind
    zl=plsinfo('zl',awgdata.pulsegroups(i).name);
    fprintf('%2i:  %-15s  (%3i pulses, %5.2f us)\n', i, awgdata.pulsegroups(i).name, awgdata.pulsegroups(i).npulse(1), abs(zl(1)*1e-3));
end
