.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DecoreDrawable.java"


# static fields
.field private static final PRIMARY_TEXT_PLACEMENT_PERCENT:F = 0.1f

.field private static final SECONDARY_TEXT_PLACEMENT_PERCENT:F = 0.4f


# instance fields
.field private mHeight:I

.field private mPrimaryOffsetY:I

.field private mPrimaryPaint:Landroid/graphics/Paint;

.field private mPrimaryPlacement:I

.field private mPrimaryText:Ljava/lang/CharSequence;

.field private final mPrimaryTextAlpha:I

.field private final mPrimaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mSecondaryOffsetY:I

.field private mSecondaryPaint:Landroid/graphics/Paint;

.field private mSecondaryPlacement:I

.field private mSecondaryText:Ljava/lang/CharSequence;

.field private final mSecondaryTextAlpha:I

.field private final mSecondaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;I)V
    .locals 1
    .param p1, "primaryText"    # Ljava/lang/CharSequence;
    .param p2, "secondaryText"    # Ljava/lang/CharSequence;
    .param p3, "primaryTextStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .param p4, "secondaryTextStyle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .param p5, "keyWidth"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryText:Ljava/lang/CharSequence;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryText:Ljava/lang/CharSequence;

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryText:Ljava/lang/CharSequence;

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryText:Ljava/lang/CharSequence;

    .line 57
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 58
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p4, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryTextAlpha:I

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryTextAlpha:I

    .line 63
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mWidth:I

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->updateIntrinsicHeight()V

    .line 65
    return-void
.end method

.method private updateIntrinsicHeight()V
    .locals 6

    .prologue
    .line 85
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 86
    .local v0, "primaryFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->includeFontPadding()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v4, v5

    .line 89
    .local v1, "primaryHeight":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 90
    .local v2, "secondaryFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryTextStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->includeFontPadding()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v3, v4, v5

    .line 94
    .local v3, "secondaryHeight":I
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mHeight:I

    .line 95
    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryOffsetY:I

    .line 96
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryOffsetY:I

    .line 97
    return-void

    .line 86
    .end local v1    # "primaryHeight":I
    .end local v2    # "secondaryFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "secondaryHeight":I
    :cond_0
    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v4, v5

    goto :goto_0

    .line 90
    .restart local v1    # "primaryHeight":I
    .restart local v2    # "secondaryFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    :cond_1
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v4, v5

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 102
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPlacement:I

    int-to-float v4, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryOffsetY:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryText:Ljava/lang/CharSequence;

    .line 106
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPlacement:I

    int-to-float v4, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryOffsetY:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryTextAlpha:I

    mul-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryTextAlpha:I

    mul-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 79
    const v0, 0x3dcccccd    # 0.1f

    sub-int v1, p3, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPlacement:I

    .line 80
    const v0, 0x3ecccccd    # 0.4f

    sub-int v1, p3, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPlacement:I

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mPrimaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/DecoreDrawable;->mSecondaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 121
    return-void
.end method
