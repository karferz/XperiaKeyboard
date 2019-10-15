.class public Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;
.super Landroid/widget/ImageView;
.source "SplittableImageView.java"


# instance fields
.field private mSplitHalfWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 51
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->mSplitHalfWidth:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getWidth()I

    move-result v1

    .line 52
    .local v1, "leftBackgroundWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->mSplitHalfWidth:I

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->mSplitHalfWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .end local v1    # "leftBackgroundWidth":I
    :cond_0
    return-void

    .line 51
    :cond_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->mSplitHalfWidth:I

    goto :goto_0
.end method

.method public setSplitHalfWidth(I)V
    .locals 0
    .param p1, "splitHalfWidth"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableImageView;->mSplitHalfWidth:I

    .line 45
    return-void
.end method
