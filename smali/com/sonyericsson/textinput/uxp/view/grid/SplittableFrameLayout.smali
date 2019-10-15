.class public Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SplittableFrameLayout.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitHalfWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setWillNotDraw(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setWillNotDraw(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->setWillNotDraw(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 72
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mSplitHalfWidth:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->getWidth()I

    move-result v0

    .line 73
    .local v0, "leftBackgroundWidth":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mSplitHalfWidth:I

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mSplitHalfWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    .end local v0    # "leftBackgroundWidth":I
    :cond_0
    return-void

    .line 72
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mSplitHalfWidth:I

    goto :goto_0
.end method

.method public setSplitHalfWidth(I)V
    .locals 0
    .param p1, "splitHalfWidth"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mSplitHalfWidth:I

    .line 55
    return-void
.end method

.method public setSplitableBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SplittableFrameLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method
