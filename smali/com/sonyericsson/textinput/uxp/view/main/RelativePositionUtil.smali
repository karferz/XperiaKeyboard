.class final Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;
.super Ljava/lang/Object;
.source "RelativePositionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static capRelativePosition(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 3
    .param p0, "relativePosition"    # Landroid/graphics/PointF;
    .param p1, "mode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 49
    iget v0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 50
    return-void

    .line 47
    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 48
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method static getRelativePositionFromScreenPosition(FFLandroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "keyboardPositioningRect"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 62
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p3, v2, :cond_0

    const/4 v0, 0x0

    .line 64
    .local v0, "relativeX":F
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 66
    .local v1, "relativeY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 62
    .end local v0    # "relativeX":F
    .end local v1    # "relativeY":F
    :cond_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p0, v2

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0
.end method

.method static getScreenPositionFromRelativePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "keyboardPositioningRect"    # Landroid/graphics/Rect;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 55
    .local v0, "screenX":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 56
    .local v1, "screenY":F
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method static isRelativePositionWithinBounds(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)Z
    .locals 5
    .param p0, "relativePosition"    # Landroid/graphics/PointF;
    .param p1, "mode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 30
    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 32
    .local v1, "cappedY":F
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne p1, v2, :cond_1

    .line 33
    iget v2, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 37
    :goto_0
    return v2

    .line 33
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 36
    :cond_1
    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 37
    .local v0, "cappedX":F
    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    goto :goto_0
.end method
