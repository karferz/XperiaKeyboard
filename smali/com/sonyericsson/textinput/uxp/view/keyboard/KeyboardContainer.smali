.class public final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;
.super Landroid/widget/FrameLayout;
.source "KeyboardContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;
    }
.end annotation


# instance fields
.field private mBorderPadding:Landroid/graphics/Rect;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mCandidateBarDivider:Landroid/view/View;

.field private mDrawingRectangle:Landroid/graphics/Rect;

.field private mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

.field private mIsMoving:Z

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mLeftSplitBorderPadding:Landroid/graphics/Rect;

.field private mMoveShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightSplitBorderPadding:Landroid/graphics/Rect;

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mSplitHalfWidth:I

.field private mSplitShadowPadding:Landroid/graphics/Rect;

.field private mStaticShadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    .line 119
    return-void
.end method

.method private calculateBorderPadding()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v1, v2, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 274
    .local v0, "borderSize":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v1, v2, :cond_2

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mRightSplitBorderPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v0, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    :goto_1
    return-object v1

    .line 265
    .end local v0    # "borderSize":I
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mIsMoving:Z

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 267
    .restart local v0    # "borderSize":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v3, 0x7f0f0006

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 269
    .end local v0    # "borderSize":I
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 270
    .restart local v0    # "borderSize":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0054

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v1, v2, :cond_3

    .line 279
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 282
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1
.end method

.method private calculateShadowPadding()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 291
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 295
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;->access$100(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method private drawMiniShadowAndBorder(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, "shadow":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    return-void
.end method

.method private drawSplitBorder(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 199
    .local v0, "rightSplitRightEdge":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mRightSplitBorderPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sub-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method private drawSplitShadow(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    .local v1, "shadow":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 176
    .local v0, "rightSplitRightEdge":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mRightSplitBorderPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mRightSplitBorderPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 186
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    return-void
.end method

.method private initializeComponents()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0f0080

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mDrawingRectangle:Landroid/graphics/Rect;

    .line 142
    const v1, 0x7f02003e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mStaticShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    const v1, 0x7f02003d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mMoveShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    const v1, 0x7f0f00a8

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mCandidateBarDivider:Landroid/view/View;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitShadowPadding:Landroid/graphics/Rect;

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mRightSplitBorderPadding:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    .line 152
    return-void
.end method

.method private updateDimensions()V
    .locals 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->calculateBorderPadding()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;->access$000(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->calculateShadowPadding()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;->access$000(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mBorderPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 259
    return-void
.end method


# virtual methods
.method public getExtraHeight()I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getExtraWidth()I
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mIsMoving:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mMoveShadowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mStaticShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getShadowPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mShadowPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getSplitWidth()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSplitHalfWidth:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mLeftSplitBorderPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 130
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mIsMoving:Z

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->initializeComponents()V

    .line 135
    :cond_0
    return-void
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mIsMoving:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_2

    .line 162
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->drawSplitShadow(Landroid/graphics/Canvas;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->drawSplitBorder(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->drawMiniShadowAndBorder(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setIsMoving(Z)V
    .locals 0
    .param p1, "isMoving"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mIsMoving:Z

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->updateDimensions()V

    .line 244
    return-void
.end method

.method public setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->updateDimensions()V

    .line 315
    return-void
.end method

.method public updateCandidateBarDivider()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mFloatingKeyboardMode:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_SPLIT:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const/high16 v1, 0x7f0f0000

    .line 334
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v2, 0x7f0d004e

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mCandidateBarDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mCandidateBarDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v2, 0x7f0d0006

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mCandidateBarDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 0
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->updateCandidateBarDivider()V

    .line 325
    return-void
.end method
