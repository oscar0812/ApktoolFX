.class public Lorg/telegram/ui/Components/Paint/GLMatrix;
.super Ljava/lang/Object;
.source "GLMatrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F
    .locals 8
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 41
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 42
    .local v0, "m":[F
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 43
    .local v1, "v":[F
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 45
    aget v2, v1, v3

    aput v2, v0, v3

    .line 46
    aget v2, v1, v6

    aput v2, v0, v6

    .line 47
    aput v4, v0, v7

    .line 48
    const/4 v2, 0x3

    aput v4, v0, v2

    .line 50
    const/4 v2, 0x4

    const/4 v3, 0x3

    aget v3, v1, v3

    aput v3, v0, v2

    .line 51
    const/4 v2, 0x5

    const/4 v3, 0x4

    aget v3, v1, v3

    aput v3, v0, v2

    .line 52
    const/4 v2, 0x6

    aput v4, v0, v2

    .line 53
    const/4 v2, 0x7

    aput v4, v0, v2

    .line 55
    const/16 v2, 0x8

    aput v4, v0, v2

    .line 56
    const/16 v2, 0x9

    aput v4, v0, v2

    .line 57
    const/16 v2, 0xa

    aput v5, v0, v2

    .line 58
    const/16 v2, 0xb

    aput v4, v0, v2

    .line 60
    const/16 v2, 0xc

    aget v3, v1, v7

    aput v3, v0, v2

    .line 61
    const/16 v2, 0xd

    const/4 v3, 0x5

    aget v3, v1, v3

    aput v3, v0, v2

    .line 62
    const/16 v2, 0xe

    aput v4, v0, v2

    .line 63
    const/16 v2, 0xf

    aput v5, v0, v2

    .line 65
    return-object v0
.end method

.method public static LoadOrtho(FFFFFF)[F
    .locals 9
    .param p0, "left"    # F
    .param p1, "right"    # F
    .param p2, "bottom"    # F
    .param p3, "top"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    .line 8
    sub-float v2, p1, p0

    .line 9
    .local v2, "r_l":F
    sub-float v3, p3, p2

    .line 10
    .local v3, "t_b":F
    sub-float v0, p5, p4

    .line 11
    .local v0, "f_n":F
    add-float v7, p1, p0

    neg-float v7, v7

    sub-float v8, p1, p0

    div-float v4, v7, v8

    .line 12
    .local v4, "tx":F
    add-float v7, p3, p2

    neg-float v7, v7

    sub-float v8, p3, p2

    div-float v5, v7, v8

    .line 13
    .local v5, "ty":F
    add-float v7, p5, p4

    neg-float v7, v7

    sub-float v8, p5, p4

    div-float v6, v7, v8

    .line 15
    .local v6, "tz":F
    const/16 v7, 0x10

    new-array v1, v7, [F

    .line 17
    .local v1, "out":[F
    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v8, v2

    aput v8, v1, v7

    .line 18
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 19
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 20
    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 22
    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 23
    const/4 v7, 0x5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v8, v3

    aput v8, v1, v7

    .line 24
    const/4 v7, 0x6

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 25
    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 27
    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 28
    const/16 v7, 0x9

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 29
    const/16 v7, 0xa

    const/high16 v8, -0x40000000    # -2.0f

    div-float/2addr v8, v0

    aput v8, v1, v7

    .line 30
    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 32
    const/16 v7, 0xc

    aput v4, v1, v7

    .line 33
    const/16 v7, 0xd

    aput v5, v1, v7

    .line 34
    const/16 v7, 0xe

    aput v6, v1, v7

    .line 35
    const/16 v7, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v7

    .line 37
    return-object v1
.end method

.method public static MultiplyMat4f([F[F)[F
    .locals 10
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 71
    .local v0, "out":[F
    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 72
    aget v1, p0, v6

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 73
    aget v1, p0, v7

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 74
    aget v1, p0, v8

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 76
    aget v1, p0, v5

    aget v2, p1, v9

    mul-float/2addr v1, v2

    aget v2, p0, v9

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    .line 77
    const/4 v1, 0x5

    aget v2, p0, v6

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 78
    const/4 v1, 0x6

    aget v2, p0, v7

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 79
    const/4 v1, 0x7

    aget v2, p0, v8

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 81
    const/16 v1, 0x8

    aget v2, p0, v5

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 82
    const/16 v1, 0x9

    aget v2, p0, v6

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 83
    const/16 v1, 0xa

    aget v2, p0, v7

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 84
    const/16 v1, 0xb

    aget v2, p0, v8

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 86
    const/16 v1, 0xc

    aget v2, p0, v5

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 87
    const/16 v1, 0xd

    aget v2, p0, v6

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 88
    const/16 v1, 0xe

    aget v2, p0, v7

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 89
    const/16 v1, 0xf

    aget v2, p0, v8

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 91
    return-object v0
.end method
