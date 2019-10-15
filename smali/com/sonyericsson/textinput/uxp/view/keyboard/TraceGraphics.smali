.class public abstract Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;
.super Ljava/lang/Object;
.source "TraceGraphics.java"


# instance fields
.field protected mAnimateAlpha:Z

.field protected mAnimateForward:Z

.field protected mAnimateShape:Z

.field protected final mC:[F

.field protected mDebugPath:Landroid/graphics/Path;

.field protected mDrawPoints:Z

.field protected mInvalid:Z

.field protected mIsAnimating:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field protected final mMaxLength:F

.field protected final mP0:[F

.field protected final mP1:[F

.field protected final mP2:[F

.field protected mPath:Landroid/graphics/Path;

.field protected final mPc:[F

.field protected mPoint:[F

.field protected mPoints:I

.field protected mSmooth:Z

.field protected mSmoothPoints:[F

.field protected mSmooths:I

.field protected mT:F

.field protected mT0:J

.field protected final mTouchPrecision:F

.field protected final mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

.field protected final mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

.field protected mVelocity:F

.field protected final mWeight0:F

.field protected final mWeight1:F


# direct methods
.method protected constructor <init>(FFFFF)V
    .locals 5
    .param p1, "touchPrecision"    # F
    .param p2, "maxLength"    # F
    .param p3, "velocity"    # F
    .param p4, "weight0"    # F
    .param p5, "weight1"    # F

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    .line 24
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    .line 26
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmoothPoints:[F

    .line 28
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateForward:Z

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateShape:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateAlpha:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    .line 35
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP0:[F

    .line 36
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP1:[F

    .line 37
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP2:[F

    .line 40
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPc:[F

    .line 43
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mC:[F

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPath:Landroid/graphics/Path;

    .line 48
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mInvalid:Z

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDrawPoints:Z

    .line 49
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 50
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMatrix:Landroid/graphics/Matrix;

    .line 61
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mTouchPrecision:F

    .line 62
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMaxLength:F

    .line 63
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    .line 64
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mWeight0:F

    .line 65
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mWeight1:F

    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDrawPoints:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDebugPath:Landroid/graphics/Path;

    .line 70
    :cond_0
    return-void
.end method

.method protected static createAlphaCache(I[F[FI)[I
    .locals 9
    .param p0, "size"    # I
    .param p1, "alphaValues"    # [F
    .param p2, "localAlphaValues"    # [F
    .param p3, "bitShift"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 161
    mul-int/lit8 v4, p0, 0x3

    new-array v2, v4, [I

    .line 162
    .local v2, "map":[I
    new-array v3, v8, [F

    .line 164
    .local v3, "weights":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 165
    int-to-float v4, v1

    array-length v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v7

    .line 166
    const/high16 v4, 0x3f800000    # 1.0f

    aget v5, v3, v7

    sub-float/2addr v4, v5

    aput v4, v3, v6

    .line 172
    invoke-static {v3, v6, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->interpolate([FI[F)F

    move-result v0

    .line 178
    .local v0, "alpha":F
    aget v4, p2, v6

    mul-float/2addr v4, v0

    float-to-int v4, v4

    shr-int/lit8 v4, v4, 0x8

    shl-int/2addr v4, p3

    aput v4, v2, v1

    .line 179
    add-int/lit8 v4, v1, 0x1

    aget v5, p2, v7

    mul-float/2addr v5, v0

    float-to-int v5, v5

    shr-int/lit8 v5, v5, 0x8

    shl-int/2addr v5, p3

    aput v5, v2, v4

    .line 180
    add-int/lit8 v4, v1, 0x2

    aget v5, p2, v8

    mul-float/2addr v5, v0

    float-to-int v5, v5

    shr-int/lit8 v5, v5, 0x8

    shl-int/2addr v5, p3

    aput v5, v2, v4

    .line 164
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 182
    .end local v0    # "alpha":F
    :cond_0
    return-object v2
.end method

.method protected static createCache(I[FI)[I
    .locals 7
    .param p0, "size"    # I
    .param p1, "values"    # [F
    .param p2, "bitShift"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    new-array v1, p0, [I

    .line 137
    .local v1, "map":[I
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 139
    .local v2, "weights":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 140
    int-to-float v3, v0

    array-length v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v6

    .line 141
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v2, v6

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 142
    invoke-static {v2, v5, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->interpolate([FI[F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/2addr v3, p2

    aput v3, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v1
.end method

.method protected static createCacheFloat(I[F)[F
    .locals 7
    .param p0, "size"    # I
    .param p1, "values"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    new-array v1, p0, [F

    .line 149
    .local v1, "map":[F
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 151
    .local v2, "weights":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 152
    int-to-float v3, v0

    array-length v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v6

    .line 153
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v2, v6

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 154
    invoke-static {v2, v5, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->interpolate([FI[F)F

    move-result v3

    aput v3, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v1
.end method

.method protected static fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V
    .locals 4
    .param p0, "a"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .param p2, "verts"    # [F
    .param p3, "sizeMap"    # [F
    .param p4, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotateCounterClockwise90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotateCounterClockwise90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 90
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->avg(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    aget v1, p3, p4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v2

    aput v0, p2, v2

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v3

    aput v0, p2, v3

    .line 94
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, p2, v0

    .line 95
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, p2, v0

    .line 96
    return-void
.end method

.method protected static fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V
    .locals 4
    .param p0, "a"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .param p1, "verts"    # [F
    .param p2, "sizeMap"    # [F
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    aget v1, p2, p3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotateCounterClockwise90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 79
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, p1, v0

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, p1, v0

    .line 81
    return-void
.end method

.method protected static get([FI[F)V
    .locals 2
    .param p0, "point"    # [F
    .param p1, "i"    # I
    .param p2, "p"    # [F

    .prologue
    .line 107
    shl-int/lit8 p1, p1, 0x1

    .line 108
    const/4 v0, 0x0

    aget v1, p0, p1

    aput v1, p2, v0

    .line 109
    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 110
    return-void
.end method

.method protected static getIntToFloatArray([I[F)[F
    .locals 2
    .param p0, "intArray"    # [I
    .param p1, "defaultArray"    # [F

    .prologue
    .line 116
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 117
    array-length v1, p0

    new-array p1, v1, [F

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 120
    aget v1, p0, v0

    int-to-float v1, v1

    aput v1, p1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.method protected static getSmoothControlPoints([F[F[FFF[FLcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)V
    .locals 8
    .param p0, "p0"    # [F
    .param p1, "p1"    # [F
    .param p2, "p2"    # [F
    .param p3, "t0"    # F
    .param p4, "t1"    # F
    .param p5, "p"    # [F
    .param p6, "a"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .param p7, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-virtual {p6, p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotate90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 216
    invoke-virtual {p7, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotate90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 218
    invoke-virtual {p6, p7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->isInverse(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    aget v2, p1, v4

    aput v2, p5, v4

    .line 249
    aget v2, p1, v5

    aput v2, p5, v5

    .line 251
    aget v2, p2, v4

    aput v2, p5, v6

    .line 252
    aget v2, p2, v5

    aput v2, p5, v7

    .line 268
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length()F

    move-result v0

    .line 257
    .local v0, "alen":F
    invoke-virtual {p7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length()F

    move-result v1

    .line 259
    .local v1, "blen":F
    invoke-virtual {p7, p6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->avg(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->rotate90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 260
    invoke-virtual {p7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    mul-float v3, v0, p3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 262
    aget v2, p1, v4

    iget-object v3, p7, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v4

    add-float/2addr v2, v3

    aput v2, p5, v4

    .line 263
    aget v2, p1, v5

    iget-object v3, p7, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    aput v2, p5, v5

    .line 265
    invoke-virtual {p7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->inv()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v2

    mul-float v3, v1, p4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 266
    aget v2, p1, v4

    iget-object v3, p7, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v4

    add-float/2addr v2, v3

    aput v2, p5, v6

    .line 267
    aget v2, p1, v5

    iget-object v3, p7, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v5

    add-float/2addr v2, v3

    aput v2, p5, v7

    goto :goto_0
.end method

.method private getVector(Z)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 3
    .param p1, "forwards"    # Z

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([FI)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v2, v2, -0x2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([FI)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v0

    goto :goto_0
.end method

.method protected static interpolate([FI[F)F
    .locals 4
    .param p0, "weights"    # [F
    .param p1, "weightOffset"    # I
    .param p2, "values"    # [F

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "r":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 101
    add-int v2, p1, v0

    aget v2, p0, v2

    aget v3, p2, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return v1
.end method


# virtual methods
.method protected add(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 477
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    shl-int/lit8 v0, v2, 0x1

    .line 479
    .local v0, "len":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [F

    .line 481
    .local v1, "newPoint":[F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    .line 485
    .end local v1    # "newPoint":[F
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aput p1, v2, v0

    .line 486
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    .line 487
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    .line 488
    return-void
.end method

.method public addPoint(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 310
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    .line 311
    .local v5, "point":[F
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    .line 313
    .local v6, "points":I
    iput-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mInvalid:Z

    .line 319
    if-nez v6, :cond_1

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->add(FF)V

    .line 321
    iput v12, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP0:[F

    .local v3, "p0":[F
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP1:[F

    .line 325
    .local v4, "p1":[F
    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v2, v7, 0x1

    .line 327
    .local v2, "offset":I
    if-le v6, v10, :cond_5

    .line 330
    add-int/lit8 v7, v6, -0x2

    invoke-static {v5, v7, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 331
    add-int/lit8 v7, v6, -0x1

    invoke-static {v5, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 333
    aget v7, v4, v11

    aget v8, v3, v11

    sub-float/2addr v7, v8

    aget v8, v4, v10

    aget v9, v3, v10

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length(FF)F

    move-result v0

    .line 334
    .local v0, "l":F
    aget v7, v3, v11

    sub-float/2addr v7, p1

    aget v8, v3, v10

    sub-float/2addr v8, p2

    invoke-static {v7, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length(FF)F

    move-result v1

    .line 335
    .local v1, "newl":F
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mTouchPrecision:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    cmpl-float v7, v1, v12

    if-lez v7, :cond_3

    .line 339
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    sub-float v8, v1, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    .line 340
    aput p1, v5, v2

    .line 341
    add-int/lit8 v7, v2, 0x1

    aput p2, v5, v7

    .line 351
    .end local v0    # "l":F
    .end local v1    # "newl":F
    :cond_2
    :goto_1
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMaxLength:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 352
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMaxLength:F

    sub-float/2addr v7, v8

    invoke-virtual {p0, v7, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->chop(FZ)V

    goto :goto_0

    .line 342
    .restart local v0    # "l":F
    .restart local v1    # "newl":F
    :cond_3
    aget v7, v5, v2

    cmpl-float v7, v7, p1

    if-nez v7, :cond_4

    add-int/lit8 v7, v2, 0x1

    aget v7, v5, v7

    cmpl-float v7, v7, p2

    if-eqz v7, :cond_2

    .line 343
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->add(FF)V

    .line 344
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    aget v8, v5, v2

    sub-float/2addr v8, p1

    add-int/lit8 v9, v2, 0x1

    aget v9, v5, v9

    sub-float/2addr v9, p2

    invoke-static {v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length(FF)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    goto :goto_1

    .line 346
    .end local v0    # "l":F
    .end local v1    # "newl":F
    :cond_5
    aget v7, v5, v2

    cmpl-float v7, v7, p1

    if-nez v7, :cond_6

    add-int/lit8 v7, v2, 0x1

    aget v7, v5, v7

    cmpl-float v7, v7, p2

    if-eqz v7, :cond_2

    .line 347
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->add(FF)V

    .line 348
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    aget v8, v5, v2

    sub-float/2addr v8, p1

    add-int/lit8 v9, v2, 0x1

    aget v9, v5, v9

    sub-float/2addr v9, p2

    invoke-static {v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length(FF)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    goto :goto_1
.end method

.method public addPoints([F)V
    .locals 3
    .param p1, "points"    # [F

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 293
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->addPoint(FF)V

    .line 292
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public addPoints([II)V
    .locals 3
    .param p1, "points"    # [I
    .param p2, "count"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 302
    aget v1, p1, v0

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->addPoint(FF)V

    .line 301
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public animate()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 445
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    if-nez v5, :cond_0

    .line 465
    :goto_0
    return v4

    .line 449
    :cond_0
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    .line 450
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    .line 465
    :goto_1
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    goto :goto_0

    .line 451
    :cond_1
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateShape:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    if-le v5, v3, :cond_4

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 453
    .local v0, "cTime":J
    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT0:J

    sub-long v6, v0, v6

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v2, v5, v6

    .line 455
    .local v2, "time":F
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMaxLength:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 456
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMaxLength:F

    sub-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateForward:Z

    invoke-virtual {p0, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->chop(FZ)V

    .line 460
    :goto_2
    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT0:J

    .line 461
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    :goto_3
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    goto :goto_1

    .line 458
    :cond_2
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    mul-float/2addr v5, v2

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateForward:Z

    invoke-virtual {p0, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->chop(FZ)V

    goto :goto_2

    :cond_3
    move v3, v4

    .line 461
    goto :goto_3

    .line 463
    .end local v0    # "cTime":J
    .end local v2    # "time":F
    :cond_4
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    goto :goto_1
.end method

.method protected chop(FZ)V
    .locals 12
    .param p1, "amount"    # F
    .param p2, "forwards"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 365
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    .line 366
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    .line 367
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    .line 368
    iput-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mInvalid:Z

    .line 431
    :cond_0
    return-void

    .line 377
    :cond_1
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    if-le v6, v10, :cond_0

    cmpl-float v6, p1, v7

    if-lez v6, :cond_0

    .line 378
    const/4 v5, 0x0

    .line 379
    .local v5, "t":F
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 384
    .local v0, "T":F
    iput-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mInvalid:Z

    .line 386
    :goto_0
    cmpg-float v6, v5, v0

    if-gez v6, :cond_2

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    if-le v6, v10, :cond_2

    .line 387
    sub-float v3, v0, v5

    .line 388
    .local v3, "left":F
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->getVector(Z)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v1

    .line 389
    .local v1, "a":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length()F

    move-result v2

    .line 391
    .local v2, "l":F
    cmpg-float v6, v3, v2

    if-gez v6, :cond_4

    .line 392
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 393
    if-eqz p2, :cond_3

    .line 394
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v7, v6, v11

    iget-object v8, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 395
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v7, v6, v10

    iget-object v8, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v8, v8, v10

    add-float/2addr v7, v8

    aput v7, v6, v10

    .line 403
    :goto_1
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    sub-float/2addr v6, v3

    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    .line 417
    .end local v1    # "a":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .end local v2    # "l":F
    .end local v3    # "left":F
    :cond_2
    if-eqz p2, :cond_5

    .line 418
    :goto_2
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    if-le v6, v10, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 419
    invoke-virtual {p0, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->remove(Z)V

    goto :goto_2

    .line 397
    .restart local v1    # "a":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .restart local v2    # "l":F
    .restart local v3    # "left":F
    :cond_3
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v4, v6, 0x1

    .line 398
    .local v4, "offset":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v7, v6, v4

    iget-object v8, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v8, v8, v11

    sub-float/2addr v7, v8

    aput v7, v6, v4

    .line 399
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    add-int/lit8 v7, v4, 0x1

    aget v8, v6, v7

    iget-object v9, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v9, v9, v10

    sub-float/2addr v8, v9

    aput v8, v6, v7

    goto :goto_1

    .line 406
    .end local v4    # "offset":I
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->remove(Z)V

    .line 407
    add-float/2addr v5, v2

    .line 409
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    goto/16 :goto_0

    .line 422
    .end local v1    # "a":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .end local v2    # "l":F
    .end local v3    # "left":F
    :cond_5
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v6, v6, -0x2

    shl-int/lit8 v4, v6, 0x1

    .line 423
    .restart local v4    # "offset":I
    :goto_3
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    if-le v6, v10, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    aget v6, v6, v4

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    add-int/lit8 v8, v4, 0x3

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 425
    invoke-virtual {p0, v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->remove(Z)V

    .line 426
    add-int/lit8 v4, v4, -0x2

    goto :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mInvalid:Z

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDebugPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDebugPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    :cond_0
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAnimationDirection()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateForward:Z

    return v0
.end method

.method public abstract getBoundingBox(Landroid/graphics/Rect;)Z
.end method

.method public abstract getPaint()Landroid/graphics/Paint;
.end method

.method public getPointCount()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    return v0
.end method

.method public getPoints()[F
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    return v0
.end method

.method public length()F
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT:F

    return v0
.end method

.method protected remove(Z)V
    .locals 5
    .param p1, "forwards"    # Z

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoint:[F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPoints:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->clear()V

    .line 695
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setDefaultPaint()V

    .line 696
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->setAnimationDirection(Z)V

    .line 697
    return-void
.end method

.method public setAnimateFadeout(Z)V
    .locals 0
    .param p1, "fade"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateAlpha:Z

    .line 548
    return-void
.end method

.method public setAnimateShape(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateShape:Z

    .line 556
    return-void
.end method

.method public setAnimationDirection(Z)V
    .locals 0
    .param p1, "forward"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mAnimateForward:Z

    .line 536
    return-void
.end method

.method public setAnimationVelocity(I)V
    .locals 1
    .param p1, "velocity"    # I

    .prologue
    .line 539
    int-to-float v0, p1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    .line 540
    return-void
.end method

.method public abstract setDefaultPaint()V
.end method

.method public setDrawPoints(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDrawPoints:Z

    .line 500
    if-eqz p1, :cond_0

    .line 501
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDebugPath:Landroid/graphics/Path;

    .line 503
    :cond_0
    return-void
.end method

.method protected smooth(FFF[FILandroid/graphics/Path;)F
    .locals 27
    .param p1, "step"    # F
    .param p2, "t0"    # F
    .param p3, "t1"    # F
    .param p4, "point"    # [F
    .param p5, "points"    # I
    .param p6, "debugPath"    # Landroid/graphics/Path;

    .prologue
    .line 576
    const/4 v6, 0x1

    move/from16 v0, p5

    if-gt v0, v6, :cond_0

    .line 577
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    .line 578
    const/4 v6, 0x0

    .line 678
    :goto_0
    return v6

    .line 581
    :cond_0
    const/16 v16, 0x0

    .line 582
    .local v16, "T":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP0:[F

    .local v3, "p0":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP1:[F

    .local v4, "p1":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mP2:[F

    .line 583
    .local v5, "p2":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPc:[F

    move-object/from16 v24, v0

    .line 584
    .local v24, "pc":[F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mC:[F

    .line 585
    .local v8, "c":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    .line 586
    .local v23, "path":Landroid/graphics/Path;
    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v6, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 587
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 588
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 590
    const/4 v6, 0x3

    move/from16 v0, p5

    if-ge v0, v6, :cond_3

    .line 595
    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v6, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 596
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    :cond_1
    new-instance v25, Landroid/graphics/PathMeasure;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 638
    .local v25, "pm":Landroid/graphics/PathMeasure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    .line 639
    .local v19, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v16

    .line 643
    div-float v6, v16, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    .line 645
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    shl-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmoothPoints:[F

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    shl-int/lit8 v6, v6, 0x1

    new-array v6, v6, [F

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmoothPoints:[F

    .line 649
    :cond_2
    move-object/from16 v22, v3

    .line 650
    .local v22, "p":[F
    const/16 v20, 0x0

    .line 651
    .local v20, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmoothPoints:[F

    move-object/from16 v17, v0

    .line 652
    .local v17, "dst":[F
    const/16 v26, 0x0

    .line 659
    .local v26, "t":F
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v18

    if-ge v0, v6, :cond_6

    .line 660
    const/4 v6, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 661
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v22, v6

    .line 662
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v22, v6

    .line 663
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 665
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .local v21, "offset":I
    const/4 v6, 0x0

    aget v6, v22, v6

    aput v6, v17, v20

    .line 666
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    const/4 v6, 0x1

    aget v6, v22, v6

    aput v6, v17, v21

    .line 667
    add-float v26, v26, p1

    .line 659
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 598
    .end local v17    # "dst":[F
    .end local v18    # "i":I
    .end local v19    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "offset":I
    .end local v22    # "p":[F
    .end local v25    # "pm":Landroid/graphics/PathMeasure;
    .end local v26    # "t":F
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v6, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 599
    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v6, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 601
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v24, v6

    .line 602
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v3, v7

    aput v7, v24, v6

    .line 604
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 605
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 607
    const/16 v18, 0x2

    .restart local v18    # "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    .line 608
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->get([FI[F)V

    .line 610
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->getSmoothControlPoints([F[F[FFF[FLcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)V

    .line 612
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mDrawPoints:Z

    if-eqz v6, :cond_4

    .line 613
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 614
    const/4 v6, 0x0

    aget v6, v8, v6

    const/4 v7, 0x1

    aget v7, v8, v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 617
    const/4 v6, 0x2

    aget v6, v8, v6

    const/4 v7, 0x3

    aget v7, v8, v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    :cond_4
    const/4 v6, 0x0

    aget v10, v24, v6

    const/4 v6, 0x1

    aget v11, v24, v6

    const/4 v6, 0x0

    aget v12, v8, v6

    const/4 v6, 0x1

    aget v13, v8, v6

    const/4 v6, 0x0

    aget v14, v4, v6

    const/4 v6, 0x1

    aget v15, v4, v6

    move-object/from16 v9, v23

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 622
    add-int/lit8 v6, p5, -0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_5

    .line 623
    const/4 v6, 0x2

    aget v10, v8, v6

    const/4 v6, 0x3

    aget v11, v8, v6

    const/4 v6, 0x0

    aget v12, v5, v6

    const/4 v6, 0x1

    aget v13, v5, v6

    const/4 v6, 0x0

    aget v14, v5, v6

    const/4 v6, 0x1

    aget v15, v5, v6

    move-object/from16 v9, v23

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 607
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 625
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v4, v7

    aput v7, v3, v6

    .line 626
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v4, v7

    aput v7, v3, v6

    .line 628
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v5, v7

    aput v7, v4, v6

    .line 629
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v5, v7

    aput v7, v4, v6

    .line 631
    const/4 v6, 0x0

    const/4 v7, 0x2

    aget v7, v8, v7

    aput v7, v24, v6

    .line 632
    const/4 v6, 0x1

    const/4 v7, 0x3

    aget v7, v8, v7

    aput v7, v24, v6

    goto :goto_3

    .line 670
    .restart local v17    # "dst":[F
    .restart local v19    # "matrix":Landroid/graphics/Matrix;
    .restart local v20    # "offset":I
    .restart local v22    # "p":[F
    .restart local v25    # "pm":Landroid/graphics/PathMeasure;
    .restart local v26    # "t":F
    :cond_6
    const/4 v6, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 671
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v22, v6

    .line 672
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v22, v6

    .line 673
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 675
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    const/4 v6, 0x0

    aget v6, v22, v6

    aput v6, v17, v20

    .line 676
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    const/4 v6, 0x1

    aget v6, v22, v6

    aput v6, v17, v21

    .line 678
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mSmooths:I

    int-to-float v6, v6

    mul-float v6, v6, p1

    goto/16 :goto_0
.end method

.method public startAnimation(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 525
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mT0:J

    .line 527
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mVelocity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->mIsAnimating:Z

    .line 528
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
