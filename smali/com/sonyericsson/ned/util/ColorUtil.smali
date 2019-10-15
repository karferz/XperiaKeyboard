.class public final Lcom/sonyericsson/ned/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# static fields
.field private static final ALPHA_CHANNEL_BITS_POSITION:I = 0x18

.field public static final PRESS_COLOR_BRIGHTNESS_FACTOR:F = 0.9f

.field private static final RGB_CHANNEL_BITS:I = 0xffffff


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getColorDistance(II)I
    .locals 10
    .param p0, "firstColor"    # I
    .param p1, "secondColor"    # I

    .prologue
    .line 92
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v5, v6, 0xff

    .line 93
    .local v5, "sr":I
    shr-int/lit8 v6, p0, 0x8

    and-int/lit16 v4, v6, 0xff

    .line 94
    .local v4, "sg":I
    and-int/lit16 v3, p0, 0xff

    .line 96
    .local v3, "sb":I
    shr-int/lit8 v6, p1, 0x10

    and-int/lit16 v2, v6, 0xff

    .line 97
    .local v2, "cr":I
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v1, v6, 0xff

    .line 98
    .local v1, "cg":I
    and-int/lit16 v0, p1, 0xff

    .line 100
    .local v0, "cb":I
    sub-int v6, v5, v2

    sub-int v7, v5, v2

    mul-int/2addr v6, v7

    sub-int v7, v4, v1

    sub-int v8, v4, v1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    sub-int v7, v3, v0

    sub-int v8, v3, v0

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    return v6
.end method

.method public static getColorWithModifiedAlpha(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "newValueFactor"    # F

    .prologue
    .line 56
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 57
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method

.method public static getColorWithModifiedBrightness(IF)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "newValueFactor"    # F

    .prologue
    .line 42
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 43
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 44
    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method

.method public static getColorWithModifiedSaturation(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "newSaturationValue"    # F

    .prologue
    .line 28
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 29
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 30
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method

.method public static getSaturationFromColor(I)F
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 68
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 69
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 70
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public static setColorAlpha(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 81
    shl-int/lit8 v0, p1, 0x18

    const v1, 0xffffff

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method
