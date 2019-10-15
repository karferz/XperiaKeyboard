.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;
.source "KeyboardTemplate.java"


# instance fields
.field protected mContentHeightPx:I

.field protected mKeyBottomGapPx:I

.field protected mKeyLeftGapPx:I

.field protected mKeyLeftVisualGap:I

.field protected mKeyRightGapPx:I

.field protected mKeyRightVisualGap:I

.field protected mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field protected mKeyTextSizePx:I

.field protected mKeyTextSizeSecondaryPx:I

.field protected mKeyTextYOffsetPx:I

.field protected mKeyTopGapPx:I

.field protected mKeyWidth:I

.field protected mLabelStyle:I

.field protected mPopupKeySizePx:I

.field private mTemplateRowIds:[Ljava/lang/String;

.field private mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

.field private mTotalWidth:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 1
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 91
    return-void
.end method


# virtual methods
.method protected addRow(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V
    .locals 6
    .param p1, "templateRow"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "hasBeenAdded":Z
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;->getId()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "newTemplateRowId":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRowIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 178
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRowIds:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 179
    .local v2, "neededTemplateRowId":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    if-nez v0, :cond_1

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    aput-object p1, v4, v1

    .line 182
    const/4 v0, 0x1

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    invoke-direct {v5, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;)V

    aput-object v5, v4, v1

    goto :goto_1

    .line 193
    .end local v2    # "neededTemplateRowId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected getRow(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getRows()[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    return-object v0
.end method

.method protected getTotalWidth()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTotalWidth:I

    return v0
.end method

.method public needTemplateRow(Ljava/lang/String;)Z
    .locals 6
    .param p1, "templateRowId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRowIds:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 163
    .local v0, "neededTemplateRowId":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const/4 v1, 0x1

    .line 167
    .end local v0    # "neededTemplateRowId":Ljava/lang/String;
    :cond_0
    return v1

    .line 162
    .restart local v0    # "neededTemplateRowId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setKeyboardValues(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardAttributes"    # Landroid/content/res/TypedArray;
    .param p3, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v6, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTotalWidth:I

    .line 98
    const/16 v1, 0xe

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyWidth:I

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const/16 v3, 0xa

    .line 101
    invoke-static {p2, v3, v4, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    int-to-float v3, v3

    .line 100
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mPopupKeySizePx:I

    .line 104
    const/16 v1, 0x11

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLeftVisualGap:I

    .line 106
    const/16 v1, 0x14

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyRightVisualGap:I

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const/16 v3, 0xb

    .line 109
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 108
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextSizePx:I

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const/16 v3, 0xc

    .line 112
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 111
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextSizeSecondaryPx:I

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const/16 v3, 0xd

    .line 115
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 114
    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTextYOffsetPx:I

    .line 118
    const/16 v1, 0xf

    invoke-virtual {p3, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mLabelStyle:I

    .line 121
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->BASIC:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 122
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->ordinal()I

    move-result v1

    .line 121
    invoke-virtual {p3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 123
    .local v0, "keyStyleOrdinal":I
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 124
    const/4 v1, 0x3

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLargeLabelStyleId:I

    .line 126
    const/4 v1, 0x4

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLabelStyleId:I

    .line 128
    const/4 v1, 0x5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeySmallLabelStyleId:I

    .line 130
    const/4 v1, 0x6

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVerySmallLabelStyleId:I

    .line 132
    const/4 v1, 0x7

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVeryVerySmallLabelStyleId:I

    .line 134
    const/16 v1, 0x8

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyPreviewLabelStyleId:I

    .line 136
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVerySmallPreviewLabelStyleId:I

    .line 139
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyBackgroundId:I

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_LEFT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLeftGapPx:I

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_RIGHT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 145
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyRightGapPx:I

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 147
    :goto_0
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyTopGapPx:I

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->AUXILIARY:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 151
    :goto_1
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyBottomGapPx:I

    .line 154
    return-void

    .line 146
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    goto :goto_0

    .line 150
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    goto :goto_1
.end method

.method public setTemplateRowIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "templateRowIds"    # [Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRowIds:[Ljava/lang/String;

    .line 158
    array-length v0, p1

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mTemplateRows:[Lcom/sonyericsson/textinput/uxp/model/keyboard/RowTemplate;

    .line 159
    return-void
.end method
