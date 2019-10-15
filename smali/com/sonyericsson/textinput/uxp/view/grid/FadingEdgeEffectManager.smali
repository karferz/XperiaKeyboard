.class final Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;
.super Ljava/lang/Object;
.source "FadingEdgeEffectManager.java"


# instance fields
.field private mColor:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadingEdgeHeight:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "splitHalfWidth"    # I

    .prologue
    .line 106
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 107
    if-nez p2, :cond_1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawWidth:I

    .line 108
    .local v1, "leftFadeWidth":I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawHeight:I

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeHeight:I

    sub-int v2, v3, v4

    .line 110
    .local v2, "topBounds":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawHeight:I

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    if-eqz p2, :cond_0

    .line 116
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawWidth:I

    sub-int v0, v3, p2

    .line 117
    .local v0, "leftBounds":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawWidth:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawHeight:I

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    .end local v0    # "leftBounds":I
    .end local v1    # "leftFadeWidth":I
    .end local v2    # "topBounds":I
    :cond_0
    return-void

    :cond_1
    move v1, p2

    .line 107
    goto :goto_0
.end method

.method public getFadingEdgeHeight()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeHeight:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mColor:I

    .line 64
    return-void
.end method

.method public setDrawArea(II)V
    .locals 0
    .param p1, "drawWidth"    # I
    .param p2, "drawHeight"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawWidth:I

    .line 92
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mDrawHeight:I

    .line 93
    return-void
.end method

.method public setFadingEdgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "fadingEdgeDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    return-void
.end method

.method public setFadingEdgeHeight(I)V
    .locals 0
    .param p1, "fadingEdgeHeight"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/FadingEdgeEffectManager;->mFadingEdgeHeight:I

    .line 82
    return-void
.end method
