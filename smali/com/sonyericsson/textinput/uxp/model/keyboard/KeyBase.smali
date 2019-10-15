.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;
.super Ljava/lang/Object;
.source "KeyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;
    }
.end annotation


# static fields
.field public static final KEY_SPLIT_FLAG_LEFT:I = 0x1

.field public static final KEY_SPLIT_FLAG_NONE:I = 0x0

.field public static final KEY_SPLIT_FLAG_RIGHT:I = 0x2

.field public static final LABEL_STYLE_NORMAL:I = 0x1

.field public static final LABEL_STYLE_NOT_USED:I = -0x1

.field public static final LABEL_STYLE_SMALL:I = 0x2

.field public static final LONG_PRESS_TIMEOUT_LONG:I = 0x2

.field public static final LONG_PRESS_TIMEOUT_MEDIUM:I = 0x1

.field public static final LONG_PRESS_TIMEOUT_SHORT:I = 0x0

.field public static final PREVIEW_NONE:I = 0x0

.field public static final PREVIEW_ON_DRAG_TO:I = 0x1

.field public static final PREVIEW_ON_DRAG_TO_AND_PRESS:I = 0x2


# instance fields
.field protected mCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

.field protected mDisabled:Z

.field protected mIconId:I

.field protected mIconPreviewId:I

.field protected mIsFixedPositionLabel:Z

.field protected mIsReserved:Z

.field protected mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

.field protected mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

.field protected mKeyTextSize:I

.field protected mKeyTextSizeSecondary:I

.field protected mKeyTextYOffsetPx:I

.field protected mLabelStyle:I

.field protected mLongPressTimeout:I

.field protected mMetaKey:I

.field protected mModelHeightPx:I

.field protected mModelWidthPx:I

.field protected mModelXPx:I

.field protected mModelYPx:I

.field protected mModifier:Z

.field protected mRepeatable:Z

.field protected mShiftedCandidatesString:Lcom/sonyericsson/ned/model/CodePointString;

.field protected mShowPreview:I

.field protected mSticky:Z

.field protected mTouchGapPx:I

.field protected mTouchHeightPx:I

.field protected mTouchWidthPx:I

.field protected mTouchXPx:I

.field protected mTouchYPx:I

.field protected mVisualHeightPx:I

.field protected mVisualWidthPx:I

.field protected mVisualXPx:I

.field protected mVisualYPx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsReserved:Z

    .line 70
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mRepeatable:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModifier:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mSticky:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "keyTemplateAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsReserved:Z

    .line 70
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mRepeatable:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModifier:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mSticky:Z

    .line 172
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->overrideKeyTemplateValues(Landroid/content/res/TypedArray;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;)V
    .locals 1
    .param p1, "keyBase"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsReserved:Z

    .line 70
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mRepeatable:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModifier:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mSticky:Z

    .line 181
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsReserved:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsReserved:Z

    .line 183
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    .line 184
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    .line 186
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 187
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mRepeatable:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mRepeatable:Z

    .line 188
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModifier:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModifier:Z

    .line 189
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mSticky:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mSticky:Z

    .line 191
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mMetaKey:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mMetaKey:I

    .line 192
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mShowPreview:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mShowPreview:I

    .line 194
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    .line 195
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    .line 196
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    .line 197
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    .line 198
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchWidthPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchWidthPx:I

    .line 199
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchHeightPx:I

    .line 200
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    .line 201
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    .line 202
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchGapPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchGapPx:I

    .line 203
    iget-boolean v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsFixedPositionLabel:Z

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIsFixedPositionLabel:Z

    .line 204
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelXPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelXPx:I

    .line 205
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelYPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelYPx:I

    .line 206
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelWidthPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelWidthPx:I

    .line 207
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelHeightPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelHeightPx:I

    .line 209
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    .line 210
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mLabelStyle:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mLabelStyle:I

    .line 211
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextSize:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextSize:I

    .line 212
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextSizeSecondary:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextSizeSecondary:I

    .line 213
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextYOffsetPx:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyTextYOffsetPx:I

    .line 214
    iget-object v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    .line 215
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mLongPressTimeout:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mLongPressTimeout:I

    .line 216
    return-void
.end method

.method private overrideKeyTemplateValues(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "keyTemplateAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 221
    const/4 v1, 0x3

    .line 222
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "keyIndex":Ljava/lang/String;
    new-array v1, v5, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    .line 224
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    .line 226
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    .line 228
    return-void
.end method


# virtual methods
.method public getModelHeightPx()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelHeightPx:I

    return v0
.end method

.method public getModelWidthPx()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelWidthPx:I

    return v0
.end method

.method public getModelXPx()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelXPx:I

    return v0
.end method

.method public getModelYPx()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelYPx:I

    return v0
.end method

.method public getTouchArea(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 374
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 375
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchWidthPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 376
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 377
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchHeightPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 378
    return-void
.end method

.method public getTouchHeightPx()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchHeightPx:I

    return v0
.end method

.method public getTouchWidthPx()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchWidthPx:I

    return v0
.end method

.method public getTouchXPx()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    return v0
.end method

.method public getTouchYPx()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    return v0
.end method

.method public getVisualArea(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 362
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 363
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 364
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 365
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 366
    return-void
.end method

.method public getVisualCenterXPx()I
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisualCenterYPx()I
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisualHeightPx()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    return v0
.end method

.method public getVisualWidthPx()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    return v0
.end method

.method public getVisualXPx()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    return v0
.end method

.method public getVisualYPx()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    return v0
.end method

.method protected overrideKeyValues(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "keyAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mDisabled:Z

    .line 232
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "keyIndex":Ljava/lang/String;
    new-array v1, v5, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->firstDefined([Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mKeyIndex:Lcom/sonyericsson/ned/model/CodePointString;

    .line 234
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconId:I

    .line 235
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mIconPreviewId:I

    .line 237
    return-void
.end method

.method public setModelHeightPx(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelHeightPx:I

    .line 323
    return-void
.end method

.method public setModelWidthPx(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelWidthPx:I

    .line 315
    return-void
.end method

.method public setModelXPx(I)V
    .locals 0
    .param p1, "modelX"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelXPx:I

    .line 331
    return-void
.end method

.method public setModelYPx(I)V
    .locals 0
    .param p1, "modelY"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mModelYPx:I

    .line 339
    return-void
.end method

.method public setTouchHeightPx(I)V
    .locals 0
    .param p1, "touchHeight"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchHeightPx:I

    .line 291
    return-void
.end method

.method public setTouchWidthPx(I)V
    .locals 0
    .param p1, "touchWidth"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchWidthPx:I

    .line 283
    return-void
.end method

.method public setTouchXPx(I)V
    .locals 0
    .param p1, "touchX"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchXPx:I

    .line 299
    return-void
.end method

.method public setTouchYPx(I)V
    .locals 0
    .param p1, "touchY"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mTouchYPx:I

    .line 307
    return-void
.end method

.method public setVisualHeightPx(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualHeightPx:I

    .line 275
    return-void
.end method

.method public setVisualWidthPx(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualWidthPx:I

    .line 267
    return-void
.end method

.method public setVisualXPx(I)V
    .locals 0
    .param p1, "visualX"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualXPx:I

    .line 259
    return-void
.end method

.method public setVisualYPx(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase;->mVisualYPx:I

    .line 354
    return-void
.end method
