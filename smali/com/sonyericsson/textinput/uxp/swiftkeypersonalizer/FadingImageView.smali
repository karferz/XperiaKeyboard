.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;
.super Landroid/widget/ImageView;
.source "FadingImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRANSPARENCY_FACTOR:F = 0.2f

.field private static final FADE_SIZE_NOT_USED:I = -0x1


# instance fields
.field private mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field private mFadePercentage:F

.field private mFadePx:I

.field private mOffScreen:Landroid/graphics/Bitmap;

.field private mOffScreenCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadeFullColor:I

.field private mShadeNoneColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePercentage:F

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    .line 45
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->BOTTOM:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePercentage:F

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    .line 45
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->BOTTOM:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->init()V

    .line 85
    return-void
.end method

.method private compose(Ljava/util/List;)Landroid/graphics/Shader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Shader;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .prologue
    .local p1, "shaderList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Shader;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 214
    .local v1, "result":Landroid/graphics/Shader;
    :cond_0
    :goto_0
    return-object v1

    .line 206
    .end local v1    # "result":Landroid/graphics/Shader;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 207
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Shader;

    .restart local v1    # "result":Landroid/graphics/Shader;
    goto :goto_0

    .line 209
    .end local v1    # "result":Landroid/graphics/Shader;
    :cond_2
    new-instance v1, Landroid/graphics/ComposeShader;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Shader;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Shader;

    move-object v5, v6

    check-cast v5, Landroid/graphics/Xfermode;

    invoke-direct {v1, v3, v4, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 210
    .restart local v1    # "result":Landroid/graphics/Shader;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 211
    new-instance v2, Landroid/graphics/ComposeShader;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Shader;

    move-object v4, v6

    check-cast v4, Landroid/graphics/Xfermode;

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 210
    .end local v1    # "result":Landroid/graphics/Shader;
    .local v2, "result":Landroid/graphics/Shader;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2    # "result":Landroid/graphics/Shader;
    .restart local v1    # "result":Landroid/graphics/Shader;
    goto :goto_1
.end method

.method private createTransparencyMask(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 150
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, "shaderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Shader;>;"
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 152
    .local v8, "tm":Landroid/graphics/Shader$TileMode;
    const/4 v11, 0x0

    .local v11, "x0":I
    const/4 v13, 0x0

    .local v13, "y0":I
    const/4 v12, 0x0

    .local v12, "x1":I
    const/4 v14, 0x0

    .line 154
    .local v14, "y1":I
    const/4 v9, 0x0

    .line 155
    .local v9, "fadeAtBeginning":Z
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$1;->$SwitchMap$com$sonyericsson$textinput$uxp$swiftkeypersonalizer$FadingImageView$FadeDirection:[I

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getRtlAdjustedLayoutDirection()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mFadeDirection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_0
    move/from16 v0, p2

    invoke-virtual {p0, v0, v9}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getFadeSize(IZ)I

    move-result v13

    .line 158
    move/from16 v14, p2

    .line 176
    :goto_0
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v2, v11

    int-to-float v3, v13

    int-to-float v4, v12

    int-to-float v5, v14

    if-eqz v9, :cond_0

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeFullColor:I

    :goto_1
    if-eqz v9, :cond_1

    iget v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeNoneColor:I

    :goto_2
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v10}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->compose(Ljava/util/List;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    return-void

    .line 161
    :pswitch_1
    const/4 v9, 0x1

    .line 162
    move/from16 v0, p2

    invoke-virtual {p0, v0, v9}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getFadeSize(IZ)I

    move-result v14

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    const/4 v9, 0x1

    .line 166
    move/from16 v0, p1

    invoke-virtual {p0, v0, v9}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getFadeSize(IZ)I

    move-result v12

    .line 167
    goto :goto_0

    .line 169
    :pswitch_3
    move/from16 v0, p1

    invoke-virtual {p0, v0, v9}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getFadeSize(IZ)I

    move-result v11

    .line 170
    move/from16 v12, p1

    .line 171
    goto :goto_0

    .line 176
    :cond_0
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeNoneColor:I

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeFullColor:I

    goto :goto_2

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 88
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->FadingImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->values()[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    move-result-object v1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    .line 92
    const/4 v1, 0x1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePercentage:F

    .line 94
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private getRtlAdjustedLayoutDirection()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->START:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    if-ne v0, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->RIGHT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    .line 190
    :goto_0
    return-object v0

    .line 184
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->LEFT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->END:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    if-ne v0, v1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->LEFT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->RIGHT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadeDirection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0d00dc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeNoneColor:I

    .line 103
    const v1, 0x7f0d00db

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mShadeFullColor:I

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    return-void
.end method

.method private releaseOffScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 126
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    .line 128
    :cond_1
    return-void
.end method

.method private setupOffScreen(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 132
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 133
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    .line 134
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->createTransparencyMask(II)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method getFadeSize(IZ)I
    .locals 3
    .param p1, "dimension"    # I
    .param p2, "fadeAtBeginning"    # Z

    .prologue
    const/4 v1, -0x1

    .line 194
    if-eqz p2, :cond_1

    .line 195
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    if-ne v0, v1, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePercentage:F

    mul-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 198
    :goto_1
    return v0

    .line 195
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    int-to-float v0, v0

    goto :goto_0

    .line 198
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    if-ne v0, v1, :cond_2

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePercentage:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    :goto_2
    float-to-int v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mFadePx:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->releaseOffScreen()V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->setupOffScreen(II)V

    .line 117
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->releaseOffScreen()V

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->mOffScreen:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;->setupOffScreen(II)V

    goto :goto_0
.end method
