.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# instance fields
.field private mChrSeq:Ljava/lang/CharSequence;

.field private mHeight:I

.field private final mIncludeFontPadding:Z

.field private mOffsetY:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTextAlpha:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V
    .locals 2
    .param p1, "chrSeq"    # Ljava/lang/CharSequence;
    .param p2, "textAppearance"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->includeFontPadding()Z

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;ZLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "chrSeq"    # Ljava/lang/CharSequence;
    .param p2, "includeFontPadding"    # Z
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    .line 41
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mIncludeFontPadding:Z

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mTextAlpha:I

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->updateIntrinsicHeight()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method private updateIntrinsicHeight()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 65
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mIncludeFontPadding:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mHeight:I

    .line 67
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mOffsetY:I

    .line 68
    return-void

    .line 65
    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private updateIntrinsicWidth()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mWidth:I

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 77
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mOffsetY:I

    sub-int/2addr v0, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mTextAlpha:I

    mul-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "chrSeq"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    if-eqz p1, :cond_1

    .end local p1    # "chrSeq":Ljava/lang/CharSequence;
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mChrSeq:Ljava/lang/CharSequence;

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->updateIntrinsicWidth()V

    .line 95
    :cond_0
    return-void

    .line 92
    .restart local p1    # "chrSeq":Ljava/lang/CharSequence;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public setTextAlpha(I)V
    .locals 0
    .param p1, "textAlpha"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->mTextAlpha:I

    .line 99
    return-void
.end method
