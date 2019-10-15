.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CenterCropDrawable.java"


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mOldBounds:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mClipRect:Landroid/graphics/Rect;

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v11, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 39
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 41
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v1, v5

    .line 46
    .local v1, "intrinsicWidth":F
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v0, v5

    .line 48
    .local v0, "intrinsicHeight":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v4, v5

    .line 49
    .local v4, "wantedWidth":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v3, v5

    .line 52
    .local v3, "wantedHeight":F
    mul-float v5, v1, v3

    mul-float v6, v4, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 53
    div-float v2, v3, v0

    .line 54
    .local v2, "scale":F
    mul-float v5, v1, v2

    sub-float v5, v4, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateX:I

    .line 55
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateY:I

    .line 63
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mClipRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateX:I

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateY:I

    sub-int/2addr v7, v8

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateX:I

    sub-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateY:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    .line 67
    invoke-virtual {v5, v11, v11, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    .end local v0    # "intrinsicHeight":F
    .end local v1    # "intrinsicWidth":F
    .end local v2    # "scale":F
    .end local v3    # "wantedHeight":F
    .end local v4    # "wantedWidth":F
    :cond_0
    return-void

    .line 57
    .restart local v0    # "intrinsicHeight":F
    .restart local v1    # "intrinsicWidth":F
    .restart local v3    # "wantedHeight":F
    .restart local v4    # "wantedWidth":F
    :cond_1
    div-float v2, v4, v1

    .line 58
    .restart local v2    # "scale":F
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateX:I

    .line 59
    mul-float v5, v0, v2

    sub-float v5, v3, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mTranslateY:I

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 95
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    return-void
.end method
