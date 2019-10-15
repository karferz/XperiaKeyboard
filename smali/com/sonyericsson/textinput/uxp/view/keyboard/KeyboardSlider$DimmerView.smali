.class final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;
.super Landroid/view/View;
.source "KeyboardSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DimmerView"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mSplit:Z

.field private mSplitHalfWidth:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 773
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .line 774
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 760
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mPaint:Landroid/graphics/Paint;

    .line 762
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplitHalfWidth:I

    .line 764
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mWidth:I

    .line 766
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplit:Z

    .line 775
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 776
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0032

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplitHalfWidth:I

    .line 778
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mWidth:I

    .line 780
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowPadding()Landroid/graphics/Rect;

    move-result-object v7

    .line 795
    .local v7, "shadowPadding":Landroid/graphics/Rect;
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v1

    .line 796
    .local v6, "height":I
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 798
    .local v9, "xOffset":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    if-ne v0, v1, :cond_0

    .line 799
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getCandidateViewHeight()I

    move-result v1

    add-int v10, v0, v1

    .line 804
    .local v10, "yOffset":I
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplit:Z

    if-eqz v0, :cond_1

    .line 805
    int-to-float v1, v9

    int-to-float v2, v10

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplitHalfWidth:I

    add-int/2addr v0, v9

    int-to-float v3, v0

    add-int v0, v10, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 807
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mWidth:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplitHalfWidth:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    int-to-float v2, v10

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mWidth:I

    int-to-float v3, v0

    add-int v0, v10, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 813
    :goto_1
    return-void

    .line 801
    .end local v10    # "yOffset":I
    :cond_0
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .restart local v10    # "yOffset":I
    goto :goto_0

    .line 810
    :cond_1
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v7, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v1

    .line 811
    .local v8, "width":I
    int-to-float v1, v9

    int-to-float v2, v10

    add-int v0, v9, v8

    int-to-float v3, v0

    add-int v0, v10, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected setSplit(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 788
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;->mSplit:Z

    .line 789
    return-void
.end method
