.class public Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;
.super Landroid/view/View;
.source "SpeechBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;
    }
.end annotation


# instance fields
.field private mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

.field private mCandidateTextColorNormal:I

.field private mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mCurrentDirection:I

.field private mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mHighlightImg:Landroid/graphics/drawable/Drawable;

.field private final mHighlightImgPadding:Landroid/graphics/Rect;

.field private mHighlightedCandidateTextColor:I

.field private mMultitapHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionIndex:I

.field private mTextGap:I

.field private final mWorkRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCurrentDirection:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mWorkRect:Landroid/graphics/Rect;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCurrentDirection:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mWorkRect:Landroid/graphics/Rect;

    .line 76
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->init(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private static bidiMirror(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p0, "string"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 83
    .local v0, "chars":[C
    :goto_0
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object p0

    .line 87
    .end local p0    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-object p0

    .line 81
    .end local v0    # "chars":[C
    .restart local p0    # "string":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    goto :goto_0
.end method

.method private static getWidthBetween([Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;II)I
    .locals 2
    .param p0, "candidates"    # [Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;
    .param p1, "first"    # I
    .param p2, "last"    # I

    .prologue
    .line 91
    aget-object v0, p0, p2

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getRight()I

    move-result v0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/R$styleable;->SpeechBubble:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 115
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 118
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 123
    :pswitch_2
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mTextGap:I

    goto :goto_1

    .line 126
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 133
    .end local v1    # "attr":I
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 139
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    .line 227
    .local v5, "candidates":[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;
    if-eqz v5, :cond_7

    array-length v0, v5

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    .line 229
    .local v10, "hiPadding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getWidth()I

    move-result v19

    .line 230
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getHeight()I

    move-result v9

    .line 233
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingTop()I

    move-result v18

    .line 235
    .local v18, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingBottom()I

    move-result v20

    sub-int v4, v9, v20

    .line 237
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingLeft()I

    move-result v12

    .line 239
    .local v12, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .line 241
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mWorkRect:Landroid/graphics/Rect;

    .line 242
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    .line 243
    .local v13, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 244
    .local v17, "start":I
    array-length v8, v5

    .line 245
    .local v8, "end":I
    const/16 v20, 0x0

    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getWidthBetween([Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;II)I

    move-result v6

    .line 246
    .local v6, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mSelectionIndex:I

    move/from16 v16, v0

    .line 247
    .local v16, "selectionIndex":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCurrentDirection:I

    .line 252
    .local v7, "dir":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v15, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 258
    if-lez v7, :cond_0

    int-to-float v0, v12

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    sub-int v20, v15, v12

    move/from16 v0, v20

    if-le v6, v0, :cond_2

    .line 268
    add-int/lit8 v20, v16, -0x1

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 274
    :goto_1
    if-lez v17, :cond_1

    add-int/lit8 v20, v8, -0x1

    .line 275
    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v5, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getWidthBetween([Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;II)I

    move-result v20

    add-int/lit8 v21, v17, -0x1

    aget-object v21, v5, v21

    .line 276
    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getWidth()I

    move-result v21

    add-int v20, v20, v21

    sub-int v21, v15, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 277
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 258
    :cond_0
    int-to-float v0, v15

    move/from16 v20, v0

    goto :goto_0

    .line 281
    :cond_1
    aget-object v20, v5, v17

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getLeft()I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    mul-int v20, v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    :cond_2
    move/from16 v11, v17

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_6

    .line 285
    move/from16 v0, v16

    if-ne v11, v0, :cond_5

    .line 286
    if-lez v7, :cond_4

    .line 287
    aget-object v20, v5, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getLeft()I

    move-result v20

    const/16 v21, 0x0

    aget-object v22, v5, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getRight()I

    move-result v22

    sub-int v23, v4, v18

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightedCandidateTextColor:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    :goto_4
    aget-object v20, v5, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mText:Lcom/sonyericsson/ned/model/CodePointString;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v20

    aget-object v21, v5, v11

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getTextPos(I)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v22, v0

    rsub-int/lit8 v22, v22, 0x0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 290
    :cond_4
    aget-object v20, v5, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getRight()I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v5, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getLeft()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    sub-int v23, v4, v18

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 300
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateTextColorNormal:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 313
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    .end local v4    # "bottom":I
    .end local v6    # "contentWidth":I
    .end local v7    # "dir":I
    .end local v8    # "end":I
    .end local v9    # "height":I
    .end local v10    # "hiPadding":Landroid/graphics/Rect;
    .end local v11    # "i":I
    .end local v12    # "left":I
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "rect":Landroid/graphics/Rect;
    .end local v15    # "right":I
    .end local v16    # "selectionIndex":I
    .end local v17    # "start":I
    .end local v18    # "top":I
    .end local v19    # "width":I
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    const/16 v16, 0x0

    .line 148
    .local v16, "max":I
    const/16 v17, 0x0

    .line 149
    .local v17, "secondMax":I
    const/16 v19, 0x0

    .line 150
    .local v19, "width":I
    const/4 v12, 0x0

    .line 151
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mTextGap:I

    move/from16 v18, v0

    .line 152
    .local v18, "textGap":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 154
    .local v9, "candidates":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v9, :cond_5

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImgPadding:Landroid/graphics/Rect;

    .line 156
    .local v13, "hiPadding":Landroid/graphics/Rect;
    array-length v15, v9

    .line 157
    .local v15, "length":I
    new-array v8, v15, [I

    .line 159
    .local v8, "candidateWidths":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mPaint:Landroid/graphics/Paint;

    aget-object v21, v9, v14

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v8, v14

    .line 162
    aget v2, v8, v14

    move/from16 v0, v16

    if-le v2, v0, :cond_1

    .line 163
    move/from16 v17, v16

    .line 164
    aget v16, v8, v14

    .line 159
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 165
    :cond_1
    aget v2, v8, v14

    move/from16 v0, v17

    if-le v2, v0, :cond_0

    .line 166
    aget v17, v8, v14

    goto :goto_1

    .line 170
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCurrentDirection:I

    .line 171
    .local v11, "dir":I
    const/16 v20, 0x0

    .line 175
    .local v20, "xOffset":I
    new-array v2, v15, [Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    .line 178
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_4

    .line 179
    aget v2, v8, v14

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 181
    .local v10, "currentWidth":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    aget v21, v8, v14

    sub-int v21, v10, v21

    div-int/lit8 v21, v21, 0x2

    add-int v6, v2, v21

    .line 182
    .local v6, "leftPadding":I
    iget v2, v13, Landroid/graphics/Rect;->right:I

    aget v21, v8, v14

    sub-int v21, v10, v21

    div-int/lit8 v21, v21, 0x2

    add-int v7, v2, v21

    .line 183
    .local v7, "rightPadding":I
    move/from16 v4, v20

    .line 184
    .local v4, "left":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v5, v2, v21

    .line 186
    .local v5, "right":I
    if-lez v11, :cond_3

    aget-object v3, v9, v14

    .line 188
    .local v3, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    move-object/from16 v21, v0

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;-><init>(Lcom/sonyericsson/ned/model/CodePointString;IIII)V

    aput-object v2, v21, v14

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->getWidth()I

    move-result v2

    add-int v2, v2, v18

    add-int v20, v20, v2

    .line 178
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 186
    .end local v3    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    aget-object v2, v9, v14

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->bidiMirror(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    goto :goto_3

    .line 194
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "leftPadding":I
    .end local v7    # "rightPadding":I
    .end local v10    # "currentWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateData:[Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;

    const/16 v21, 0x0

    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getWidthBetween([Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingLeft()I

    move-result v21

    add-int v2, v2, v21

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingRight()I

    move-result v21

    add-int v19, v2, v21

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v21, v0

    sub-int v2, v2, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingTop()I

    move-result v21

    add-int v2, v2, v21

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->getPaddingBottom()I

    move-result v21

    add-int v2, v2, v21

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v2, v2, v21

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v12, v2, v21

    .line 200
    .end local v8    # "candidateWidths":[I
    .end local v11    # "dir":I
    .end local v13    # "hiPadding":Landroid/graphics/Rect;
    .end local v14    # "i":I
    .end local v15    # "length":I
    .end local v20    # "xOffset":I
    :cond_5
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->resolveSize(II)I

    move-result v2

    .line 201
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->resolveSize(II)I

    move-result v21

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method public selectCandidate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mSelectionIndex:I

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->postInvalidate()V

    .line 212
    return-void
.end method

.method public setCandidateTextColorNormal(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidateTextColorNormal:I

    .line 96
    return-void
.end method

.method public setCandidates([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 205
    invoke-virtual {p1}, [Lcom/sonyericsson/ned/model/CodePointString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->requestLayout()V

    .line 207
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 318
    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mCurrentDirection:I

    .line 319
    return-void
.end method

.method public setHighlightedCandidateTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightedCandidateTextColor:I

    .line 109
    return-void
.end method

.method public setMultitapHighlightColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mMultitapHighlightColor:I

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mHighlightImg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->mMultitapHighlightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    return-void
.end method
