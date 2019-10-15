.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;
.source "KeyTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;
    }
.end annotation


# static fields
.field protected static final EDGE_FLAG_NOT_FOUND:I = -0x1


# instance fields
.field protected final mEdgeFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;",
            ">;"
        }
    .end annotation
.end field

.field private mKeySplitFlag:I

.field private final mVisualGapLeftPx:I

.field private final mVisualGapRightPx:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V
    .locals 1
    .param p1, "keyTemplate"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;)V

    .line 68
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    .line 69
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    .line 70
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    .line 71
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapRightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapRightPx:I

    .line 72
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeySplitFlag:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeySplitFlag:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;ILandroid/content/res/TypedArray;Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Z)V
    .locals 16
    .param p1, "parent"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    .param p2, "x"    # I
    .param p3, "keyAttributes"    # Landroid/content/res/TypedArray;
    .param p4, "scaler"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;
    .param p5, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p6, "isReserved"    # Z

    .prologue
    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;-><init>(Landroid/content/res/TypedArray;)V

    .line 92
    invoke-interface/range {p5 .. p5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v11

    .line 94
    .local v11, "widthMargin":I
    const/16 v13, 0x13

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 94
    invoke-static {v13}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    .line 97
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mIsReserved:Z

    .line 99
    const/16 v13, 0x11

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeft:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 101
    .local v9, "visualGapLeft":I
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->allocate(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    .line 103
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    if-nez v13, :cond_5

    .line 104
    const/16 v13, 0xe

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyWidth:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    .line 109
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->allocate(I)I

    move-result v12

    .line 110
    .local v12, "widthPx":I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    sub-int v13, v12, v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRightPx:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualWidthPx:I

    .line 112
    const/16 v13, 0x14

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRight:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 114
    .local v10, "visualGapRight":I
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->allocate(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRightPx:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapRightPx:I

    .line 115
    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 117
    .local v5, "leftTouchAdjustment":I
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->scale(I)I

    move-result v6

    .line 118
    .local v6, "leftTouchAdjustmentPx":I
    const/16 v13, 0x12

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 120
    .local v7, "rightTouchAdjustment":I
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->scale(I)I

    move-result v8

    .line 122
    .local v8, "rightTouchAdjustmentPx":I
    add-int v13, v12, v6

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchWidthPx:I

    .line 123
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelWidthPx:I

    .line 124
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualXPx:I

    .line 125
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    add-int v13, v13, p2

    sub-int/2addr v13, v6

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchXPx:I

    .line 126
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    add-int v13, v13, p2

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelXPx:I

    .line 127
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualXPx:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchXPx:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchGapPx:I

    .line 128
    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mMetaKey:I

    .line 130
    const/16 v13, 0xb

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextSizePx:I

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v13, v14, v15, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyTextSize:I

    .line 133
    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mSecondaryKeyTextSizePx:I

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v13, v14, v15, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyTextSizeSecondary:I

    .line 136
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextYOffsetPx:I

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v13, v14, v15, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyTextYOffsetPx:I

    .line 139
    const/16 v14, 0x15

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mMetaKey:I

    if-gez v13, :cond_6

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mShowPreview:I

    .line 141
    const/4 v13, 0x6

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mRepeatable:Z

    .line 143
    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModifier:Z

    .line 145
    const/4 v13, 0x7

    const/4 v14, 0x0

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mSticky:Z

    .line 148
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowEdgeFlags:Ljava/util/Set;

    invoke-static {v13}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    .line 149
    const/16 v13, 0x8

    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 151
    .local v3, "edgeFlagIndex":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    move-result-object v14

    aget-object v14, v14, v3

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->KEY_EDGE_FLAG_LEFT:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchWidthPx:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchXPx:I

    sub-int/2addr v14, v11

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchWidthPx:I

    .line 157
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchXPx:I

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->KEY_EDGE_FLAG_RIGHT:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 160
    invoke-interface/range {p5 .. p5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchXPx:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchWidthPx:I

    .line 164
    :cond_2
    const/16 v13, 0x9

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 165
    invoke-virtual {v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v14

    .line 164
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 166
    .local v4, "keyStyleOrdinal":I
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v13

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->KEY_EDGE_FLAG_BOTTOM:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-ne v13, v14, :cond_7

    :cond_3
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mIsFixedPositionLabel:Z

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mLabelStyle:I

    .line 171
    .local v2, "defaultLabelStyleValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-ne v13, v14, :cond_4

    .line 172
    const/4 v2, 0x1

    .line 175
    :cond_4
    const/16 v13, 0xf

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mLabelStyle:I

    .line 178
    const/16 v13, 0x16

    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mLongPressTimeout:I

    .line 181
    const/16 v13, 0xa

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeySplitFlag:I

    .line 184
    return-void

    .line 107
    .end local v2    # "defaultLabelStyleValue":I
    .end local v3    # "edgeFlagIndex":I
    .end local v4    # "keyStyleOrdinal":I
    .end local v5    # "leftTouchAdjustment":I
    .end local v6    # "leftTouchAdjustmentPx":I
    .end local v7    # "rightTouchAdjustment":I
    .end local v8    # "rightTouchAdjustmentPx":I
    .end local v10    # "visualGapRight":I
    .end local v12    # "widthPx":I
    :cond_5
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    goto/16 :goto_0

    .line 139
    .restart local v5    # "leftTouchAdjustment":I
    .restart local v6    # "leftTouchAdjustmentPx":I
    .restart local v7    # "rightTouchAdjustment":I
    .restart local v8    # "rightTouchAdjustmentPx":I
    .restart local v10    # "visualGapRight":I
    .restart local v12    # "widthPx":I
    :cond_6
    const/4 v13, 0x2

    goto/16 :goto_1

    .line 167
    .restart local v3    # "edgeFlagIndex":I
    .restart local v4    # "keyStyleOrdinal":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getKeySplitFlag()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeySplitFlag:I

    return v0
.end method

.method public getLongpressTimeout()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mLongPressTimeout:I

    return v0
.end method

.method public getMetaKey()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mMetaKey:I

    return v0
.end method

.method public getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getTouchGapPx()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchGapPx:I

    return v0
.end method

.method public getVisualGapLeftPx()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapLeftPx:I

    return v0
.end method

.method public getVisualGapRightPx()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualGapRightPx:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mWidth:I

    return v0
.end method

.method public isReserved()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mIsReserved:Z

    return v0
.end method

.method public setKeySplitFlag(I)V
    .locals 0
    .param p1, "keySplitFlag"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mKeySplitFlag:I

    .line 264
    return-void
.end method

.method public setTouchGapPx(I)V
    .locals 0
    .param p1, "touchGap"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchGapPx:I

    .line 229
    return-void
.end method

.method public setTouchYPx(IIZ)V
    .locals 3
    .param p1, "touchY"    # I
    .param p2, "keyboardHeight"    # I
    .param p3, "isTopOrBottomRow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 193
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchYPx:I

    .line 194
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelYPx:I

    .line 201
    if-eqz p3, :cond_2

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->KEY_EDGE_FLAG_BOTTOM:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchYPx:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mEdgeFlags:Ljava/util/Set;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->KEY_EDGE_FLAG_TOP:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchYPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    .line 207
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchYPx:I

    .line 208
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelYPx:I

    .line 210
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelHeightPx:I

    .line 212
    :cond_2
    return-void
.end method

.method public updateRowHeight(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .prologue
    .line 187
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mVisualHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualHeightPx:I

    .line 188
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mVisualHeightPx:I

    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    .line 189
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mTouchHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->mModelHeightPx:I

    .line 190
    return-void
.end method
