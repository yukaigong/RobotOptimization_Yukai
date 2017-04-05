function [y] = ComputeBezier(halpha, s)
	M = length(halpha) - 1;
    y = 0;
	for k = 0:M
		y = y + nchoosek(M, k)*power(1 - s, M - k)*power(s, k)*halpha(k + 1);
	end
end
