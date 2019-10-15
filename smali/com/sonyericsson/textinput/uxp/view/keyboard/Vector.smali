.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field public final mP:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    .line 17
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 18
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 19
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 5
    .param p1, "p0"    # [F
    .param p2, "p1"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    .line 22
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, p2, v3

    aget v2, p1, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 23
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, p2, v4

    aget v2, p1, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 24
    return-void
.end method

.method public static length(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 32
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public add(FF)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 48
    return-object p0
.end method

.method public add(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 5
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v0, v3

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v0, v4

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 42
    return-object p0
.end method

.method public avg(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 6
    .param p1, "a"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v3

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    aput v1, v0, v3

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v4

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    aput v1, v0, v4

    .line 148
    return-object p0
.end method

.method public crossProduct(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)F
    .locals 4
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v3

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dotProduct(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)F
    .locals 4
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public inv()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v3

    .line 159
    return-object p0
.end method

.method public isInverse(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Z
    .locals 4
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v1

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v0

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public length()F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 65
    return-object p0
.end method

.method public normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 128
    .local v0, "mag":F
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    .line 130
    return-object p0
.end method

.method public rotate45()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v2, v5

    .line 99
    .local v0, "x":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v2, v6

    .line 100
    .local v1, "y":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v5

    neg-float v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v6

    add-float/2addr v3, v0

    aput v3, v2, v6

    .line 102
    return-object p0
.end method

.method public rotate90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v1, v3

    .line 75
    .local v0, "tmp":F
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    neg-float v2, v2

    aput v2, v1, v3

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aput v0, v1, v4

    .line 77
    return-object p0
.end method

.method public rotateCounterClockwise45()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v2, v4

    .line 112
    .local v0, "x":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v2, v5

    .line 113
    .local v1, "y":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v4

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v3, v3, v5

    neg-float v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 115
    return-object p0
.end method

.method public rotateCounterClockwise90()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v0, v1, v3

    .line 87
    .local v0, "tmp":F
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    aput v2, v1, v3

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    neg-float v2, v0

    aput v2, v1, v4

    .line 89
    return-object p0
.end method

.method public set(FF)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 136
    return-object p0
.end method

.method public set([FI)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 4
    .param p1, "point"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    aget v3, p1, p2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 165
    return-object p0
.end method

.method public set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 5
    .param p1, "p0"    # [F
    .param p2, "p1"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, p2, v3

    aget v2, p1, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, p2, v4

    aget v2, p1, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 142
    return-object p0
.end method

.method public subtract(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    .locals 5
    .param p1, "b"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v0, v3

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v1, v0, v4

    iget-object v2, p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 59
    return-object p0
.end method

.method public subtract(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    sub-float/2addr v2, p1

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    sub-float/2addr v2, p2

    aput v2, v0, v1

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
