.class public final Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;
    }
.end annotation


# static fields
.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAntialias:Z

.field private final mColor:I

.field private final mIncludeFontPadding:Z

.field private final mScaleX:F

.field private mScaledTextSize:I

.field private final mShadowColor:I

.field private final mShadowDx:F

.field private final mShadowDy:F

.field private final mShadowRadius:F

.field private final mTypeface:Landroid/graphics/Typeface;

.field private final mUnscaledTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IZZLandroid/graphics/Typeface;FIIFFF)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "includeFontPadding"    # Z
    .param p3, "antialias"    # Z
    .param p4, "typeface"    # Landroid/graphics/Typeface;
    .param p5, "scaleX"    # F
    .param p6, "color"    # I
    .param p7, "shadowColor"    # I
    .param p8, "shadowRadius"    # F
    .param p9, "shadowDx"    # F
    .param p10, "shadowDy"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mUnscaledTextSize:I

    .line 34
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mScaleX:F

    .line 35
    iput p6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mColor:I

    .line 36
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mIncludeFontPadding:Z

    .line 37
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mAntialias:Z

    .line 38
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mTypeface:Landroid/graphics/Typeface;

    .line 40
    iput p7, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowColor:I

    .line 41
    iput p9, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowDx:F

    .line 42
    iput p10, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowDy:F

    .line 43
    iput p8, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowRadius:F

    .line 46
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mScaledTextSize:I

    .line 47
    return-void
.end method

.method public static fromStyle(Landroid/content/Context;II)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleId"    # I
    .param p2, "colorStyleId"    # I

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 136
    :goto_0
    return-object v2

    .line 73
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/R$styleable;->TextStyle:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 75
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .local v9, "shadowColor":I
    const/high16 v8, -0x1000000

    .local v8, "textColor":I
    const/16 v19, 0x0

    .local v19, "textStyle":I
    const/16 v3, 0xf

    .line 76
    .local v3, "textSize":I
    const/4 v11, 0x0

    .local v11, "dx":F
    const/4 v12, 0x0

    .local v12, "dy":F
    const/4 v10, 0x0

    .local v10, "shadowRadius":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 77
    .local v7, "textScaleX":F
    const/4 v4, 0x0

    .local v4, "includeFontPadding":Z
    const/4 v5, 0x1

    .line 79
    .local v5, "antialias":Z
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v18

    .line 80
    .local v18, "n":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 81
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 83
    .local v14, "attr":I
    packed-switch v14, :pswitch_data_0

    .line 80
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 85
    :pswitch_0
    invoke-virtual {v13, v14, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 86
    goto :goto_2

    .line 88
    :pswitch_1
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 89
    goto :goto_2

    .line 91
    :pswitch_2
    invoke-virtual {v13, v14, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 92
    goto :goto_2

    .line 94
    :pswitch_3
    invoke-virtual {v13, v14, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 95
    goto :goto_2

    .line 97
    :pswitch_4
    invoke-virtual {v13, v14, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 98
    goto :goto_2

    .line 100
    :pswitch_5
    invoke-virtual {v13, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 101
    goto :goto_2

    .line 103
    :pswitch_6
    move/from16 v0, v19

    invoke-virtual {v13, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 104
    goto :goto_2

    .line 106
    :pswitch_7
    invoke-virtual {v13, v14, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 107
    goto :goto_2

    .line 113
    .end local v14    # "attr":I
    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/R$styleable;->KeyColorStyle:[I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 116
    .local v16, "colors":Landroid/content/res/TypedArray;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    .line 117
    .local v15, "colorIndex":I
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v15, :cond_2

    .line 118
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 120
    .restart local v14    # "attr":I
    packed-switch v14, :pswitch_data_1

    .line 117
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 122
    :pswitch_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 123
    goto :goto_4

    .line 125
    :pswitch_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 126
    goto :goto_4

    .line 132
    .end local v14    # "attr":I
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v2 .. v12}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;-><init>(IZZLandroid/graphics/Typeface;FIIFFF)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static getTextStyle(Landroid/content/Context;IILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleId"    # I
    .param p2, "colorStyleId"    # I
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 53
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->sCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 54
    :try_start_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;-><init>(II)V

    .line 55
    .local v1, "textStyleId":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 57
    .local v0, "textStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    if-nez v0, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->fromStyle(Landroid/content/Context;II)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v0

    .line 59
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    .line 62
    invoke-direct {v0, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->scaleTextSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 64
    :cond_1
    monitor-exit v3

    .line 65
    return-object v0

    .line 64
    .end local v0    # "textStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .end local v1    # "textStyleId":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle$TextStyleId;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private scaleTextSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 2
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 174
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mUnscaledTextSize:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mScaledTextSize:I

    .line 175
    return-void
.end method

.method public static typefaceFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 148
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 152
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mScaledTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mScaleX:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 154
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mAntialias:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowRadius:F

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowDx:F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowDy:F

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    return-object p1
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mColor:I

    return v0
.end method

.method public includeFontPadding()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->mIncludeFontPadding:Z

    return v0
.end method
