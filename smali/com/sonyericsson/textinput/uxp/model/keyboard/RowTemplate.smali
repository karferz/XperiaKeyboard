.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
.super Ljava/lang/Object;
.source "RowTemplate.java"


# static fields
.field private static final INDEX_NOT_FOUND:I = -0x1

.field private static final NONE:I = -0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field protected final mKeyGapBottomPx:I

.field protected final mKeyGapLeft:I

.field protected final mKeyGapLeftPx:I

.field protected final mKeyGapRight:I

.field protected final mKeyGapRightPx:I

.field protected final mKeyGapTopPx:I

.field protected final mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field private final mKeyTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected final mKeyTextSizePx:I

.field protected mKeyTextYOffsetPx:I

.field protected final mKeyWidth:I

.field protected final mLabelStyle:I

.field protected final mPopupKeySizePx:I

.field protected final mRowEdgeFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowGapPx:I

.field protected final mRowHeightId:Ljava/lang/String;

.field protected mRowHeightPx:I

.field protected mRowWidthPx:I

.field protected final mSecondaryKeyTextSizePx:I

.field protected mVisualHeightPx:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 7
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "keyboardAttributes"    # Landroid/content/res/TypedArray;
    .param p5, "rowAttributes"    # Landroid/content/res/TypedArray;
    .param p6, "keyAttributes"    # Landroid/content/res/TypedArray;
    .param p7, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    .line 120
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    .line 121
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mId:Ljava/lang/String;

    .line 123
    const/16 v2, 0xe

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyWidth:I

    invoke-virtual {p6, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyWidth:I

    .line 125
    const/16 v2, 0x11

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLeftVisualGap:I

    invoke-virtual {p6, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeft:I

    .line 127
    const/16 v2, 0x14

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyRightVisualGap:I

    invoke-virtual {p6, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRight:I

    .line 131
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mPopupKeySizePx:I

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-virtual {p5, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    .line 136
    const/16 v2, 0xb

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextSizePx:I

    iget-object v4, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static {p6, v2, v5, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextSizePx:I

    .line 139
    const/16 v2, 0xc

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextSizeSecondaryPx:I

    iget-object v4, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static {p6, v2, v5, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mSecondaryKeyTextSizePx:I

    .line 142
    const/16 v2, 0xd

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextYOffsetPx:I

    iget-object v4, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static {p6, v2, v5, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getKeyTextScaledDimensionOrFraction(Landroid/content/res/TypedArray;IIILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextYOffsetPx:I

    .line 146
    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 147
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v3

    .line 146
    invoke-virtual {p6, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 148
    .local v1, "keyStyleOrdinal":I
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 150
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLeftGapPx:I

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    .line 151
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyRightGapPx:I

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRightPx:I

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-eq v2, v3, :cond_0

    .line 153
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTopGapPx:I

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    .line 154
    iget v2, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyBottomGapPx:I

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    .line 161
    :goto_0
    const/16 v2, 0xf

    iget v3, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mLabelStyle:I

    invoke-virtual {p6, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mLabelStyle:I

    .line 164
    const/4 v2, 0x1

    invoke-virtual {p5, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 167
    .local v0, "edgeFlagIndex":I
    if-eq v0, v6, :cond_1

    .line 168
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowEdgeFlags:Ljava/util/Set;

    .line 172
    :goto_1
    return-void

    .line 156
    .end local v0    # "edgeFlagIndex":I
    :cond_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 157
    invoke-interface {p7, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    .line 158
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 159
    invoke-interface {p7, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    goto :goto_0

    .line 170
    .restart local v0    # "edgeFlagIndex":I
    :cond_1
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate$EdgeFlags;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowEdgeFlags:Ljava/util/Set;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V
    .locals 4
    .param p1, "rowTemplate"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    .line 175
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mId:Ljava/lang/String;

    .line 176
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyWidth:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyWidth:I

    .line 177
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeft:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeft:I

    .line 178
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRight:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRight:I

    .line 179
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowGapPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowGapPx:I

    .line 180
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextSizePx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTextSizePx:I

    .line 181
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mSecondaryKeyTextSizePx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mSecondaryKeyTextSizePx:I

    .line 182
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightPx:I

    .line 183
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightId:Ljava/lang/String;

    .line 184
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mVisualHeightPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mVisualHeightPx:I

    .line 185
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mLabelStyle:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mLabelStyle:I

    .line 186
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    .line 187
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mPopupKeySizePx:I

    .line 188
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowEdgeFlags:Ljava/util/Set;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowEdgeFlags:Ljava/util/Set;

    .line 189
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 190
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    .line 191
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    .line 192
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapLeftPx:I

    .line 193
    iget v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRightPx:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapRightPx:I

    .line 194
    iget-object v1, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 195
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    invoke-direct {v3, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :cond_0
    return-void
.end method

.method private getMetaValueKeyTemplateIndex(I)I
    .locals 2
    .param p1, "meta"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getMetaKey()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 254
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 249
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private splitSpace(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;III)[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .locals 17
    .param p1, "spaceKey"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .param p2, "keyboardWidth"    # I
    .param p3, "splitKeyboardHalfWidth"    # I
    .param p4, "gapToSplit"    # I

    .prologue
    .line 296
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V

    .line 297
    .local v1, "leftSpace":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualXPx()I

    move-result v15

    sub-int v15, p3, v15

    sub-int v4, v15, p4

    .line 299
    .local v4, "leftSpaceVisualWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchXPx()I

    move-result v15

    sub-int v3, p3, v15

    .line 300
    .local v3, "leftSpaceTouchWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getModelXPx()I

    move-result v15

    sub-int v2, p3, v15

    .line 301
    .local v2, "leftSpaceModelWidth":I
    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setVisualWidthPx(I)V

    .line 302
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchWidthPx(I)V

    .line 303
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setModelWidthPx(I)V

    .line 304
    const/4 v15, 0x2

    invoke-virtual {v1, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setKeySplitFlag(I)V

    .line 306
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V

    .line 307
    .local v5, "rightSpace":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualXPx()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualWidthPx()I

    move-result v16

    add-int v14, v15, v16

    .line 308
    .local v14, "spaceRightVisualEdge":I
    sub-int v15, p2, p3

    add-int v8, v15, p4

    .line 309
    .local v8, "rightSpaceLeftVisualEdge":I
    sub-int v11, v14, v8

    .line 311
    .local v11, "rightSpaceVisualWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchXPx()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchWidthPx()I

    move-result v16

    add-int v13, v15, v16

    .line 312
    .local v13, "spaceRightTouchEdge":I
    sub-int v7, p2, p3

    .line 313
    .local v7, "rightSpaceLeftTouchEdge":I
    sub-int v10, v13, v7

    .line 315
    .local v10, "rightSpaceTouchWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getModelXPx()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getModelWidthPx()I

    move-result v16

    add-int v12, v15, v16

    .line 316
    .local v12, "spaceRightModelEdge":I
    sub-int v6, p2, p3

    .line 317
    .local v6, "rightSpaceLeftModelEdge":I
    sub-int v9, v12, v6

    .line 319
    .local v9, "rightSpaceModelWidth":I
    invoke-virtual {v5, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setVisualXPx(I)V

    .line 320
    invoke-virtual {v5, v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setVisualWidthPx(I)V

    .line 321
    invoke-virtual {v5, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchXPx(I)V

    .line 322
    invoke-virtual {v5, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchWidthPx(I)V

    .line 323
    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setModelXPx(I)V

    .line 324
    invoke-virtual {v5, v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setModelWidthPx(I)V

    .line 325
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setKeySplitFlag(I)V

    .line 327
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    return-object v15
.end method


# virtual methods
.method public addKeyTemplate(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;)V
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualGapLeftPx()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualWidthPx()I

    move-result v2

    add-int/2addr v1, v2

    .line 202
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualGapRightPx()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    .line 203
    return-void
.end method

.method public containsMetakey(I)Z
    .locals 3
    .param p1, "metakey"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 237
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getMetaKey()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 241
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTemplate(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    return-object v0
.end method

.method public getKeyTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    return-object v0
.end method

.method public getRowHeight()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightPx:I

    return v0
.end method

.method protected getRowWidthPx()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowWidthPx:I

    return v0
.end method

.method public modifyKeysForSplitKeyboard(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;II)V
    .locals 17
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p2, "splitSize"    # I
    .param p3, "spaceSplitGap"    # I

    .prologue
    .line 259
    const/4 v7, 0x0

    .line 260
    .local v7, "rightSplitKeys":Z
    const/4 v3, -0x1

    .line 261
    .local v3, "currentRowYPx":I
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardWidthPx()I

    move-result v6

    .line 263
    .local v6, "keyboardWidth":I
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getMetaValueKeyTemplateIndex(I)I

    move-result v9

    .line 264
    .local v9, "spaceIndex":I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 266
    .local v10, "spaceKeyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v10, v6, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->splitSpace(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;III)[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    move-result-object v11

    .line 268
    .local v11, "spaceKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-interface {v14, v9, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    add-int/lit8 v15, v9, 0x1

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    .end local v10    # "spaceKeyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    .end local v11    # "spaceKeys":[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 274
    .local v5, "keyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getKeySplitFlag()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 275
    const/4 v7, 0x1

    .line 276
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualYPx()I

    move-result v3

    .line 281
    :cond_2
    :goto_1
    if-eqz v7, :cond_1

    .line 282
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v8

    .line 283
    .local v8, "screenWidth":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualXPx()I

    move-result v15

    sub-int v13, v6, v15

    .line 284
    .local v13, "visualDistanceToRightEdge":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getTouchXPx()I

    move-result v15

    sub-int v12, v6, v15

    .line 285
    .local v12, "touchDistanceToRightEdge":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getModelXPx()I

    move-result v15

    sub-int v4, v6, v15

    .line 286
    .local v4, "distanceToRightEdge":I
    sub-int v15, v8, v13

    invoke-virtual {v5, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setVisualXPx(I)V

    .line 287
    sub-int v15, v8, v12

    invoke-virtual {v5, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchXPx(I)V

    .line 288
    sub-int v15, v8, v4

    invoke-virtual {v5, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setModelXPx(I)V

    goto :goto_0

    .line 277
    .end local v4    # "distanceToRightEdge":I
    .end local v8    # "screenWidth":I
    .end local v12    # "touchDistanceToRightEdge":I
    .end local v13    # "visualDistanceToRightEdge":I
    :cond_3
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->getVisualYPx()I

    move-result v15

    if-eq v3, v15, :cond_2

    .line 278
    const/4 v7, 0x0

    goto :goto_1

    .line 291
    .end local v5    # "keyTemplate":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :cond_4
    return-void
.end method

.method public updateKeysWithHeightAndPosition(IIIZ)V
    .locals 3
    .param p1, "visualYPx"    # I
    .param p2, "touchYPx"    # I
    .param p3, "keyboardHeightPx"    # I
    .param p4, "isTopOrBottomRow"    # Z

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyTemplates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;

    .line 225
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->updateRowHeight(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setVisualYPx(I)V

    .line 227
    invoke-virtual {v0, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;->setTouchYPx(IIZ)V

    goto :goto_0

    .line 229
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyTemplate;
    :cond_0
    return-void
.end method

.method public updateRowHeight(I)V
    .locals 2
    .param p1, "rowHeight"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mRowHeightPx:I

    .line 219
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapTopPx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mKeyGapBottomPx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->mVisualHeightPx:I

    .line 220
    return-void
.end method
