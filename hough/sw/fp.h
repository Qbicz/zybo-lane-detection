#ifndef FP_H_
#define FP_H_

#include <stdint.h>

class fp {
    int32_t     d;
    uint32_t    f; // precision

public:

    explicit fp(uint32_t f) :
        d(0), f(f) {}

    fp & operator=(double v) {
        d = v * (1 << f);
        return *this;
    }

    fp & operator<<=(int b) { // increase prec
        f += b;
        d <<= b;
        return *this;
    }

    fp & operator>>=(int b) {
        f -= b;
        d >>= b;
        return *this;
    }

    operator double() { // fp -> double
        double v = d;
        return v / (1 << f);
    }

    fp operator+(const fp & r) {
        if(r.f > f) {
            fp n(r.f);
            n.d = r.d;
            n.d += d << (r.f - f);
            return n;
        } else {
            fp n(f);
            n.d = d;
            n.d += r.d << (f - r.f);
            return n;
        }
    }

    fp operator-(const fp & r) {
        if(r.f > f) {
            fp n(r.f);
            n.d = r.d;
            n.d -= d << (r.f - f);
            return n;
        } else {
            fp n(f);
            n.d = d;
            n.d -= r.d << (f - r.f);
            return n;
        }
    }

    fp operator*(const fp & r) {
        fp n(f);
        n.d = d;
        n.d *= r.d;
        n.f = f + r.f;
        return n;
    }

    fp operator/(const fp & r) {
        fp n(f);
        n.d = d << (r.f << 1);
        n.d /= r.d;
        n.f = f + r.f;
        return n;
    }
};

#endif /* FP_H_ */
