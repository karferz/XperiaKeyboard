.class public Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
.super Landroid/view/View;
.source "EmojiTabItem.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$LabelShadow;,
        Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALPHA:I = 0x99

.field private static final MOVEMENT_BOUNDARY_DIVISOR:I = 0x4

.field public static final SELECTED_ALPHA:I = 0xff

.field private static final UNITIATED_BOUNDARY:I = -0x1

.field private static final UNSET_FONT_SIZE:I = -0x1

.field private static final sPixelErrorAdjustment:Landroid/graphics/Rect;

.field private static final sShadowOutline:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mCenterX:F

.field private mCenterY:F

.field private mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

.field private mFontSize:I

.field private mHorizontalPlacement:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

.field private mISkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorHeight:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIsInitialized:Z

.field private mIsOneHanded:Z

.field private mIsPressed:Z

.field private mIsSelected:Z

.field private mIsSplit:Z

.field private mKeyDownMovementBoundaryPx:I

.field private mLabel:Ljava/lang/String;

.field private final mLabelPaint:Landroid/graphics/Paint;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mTabPosition:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

.field private mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

.field private mUseGrayScale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 56
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v1, v2

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 57
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 58
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v3, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 59
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->sShadowOutline:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v8, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    .line 75
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    .line 79
    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->UNINITIALIZED:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mHorizontalPlacement:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    .line 83
    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 87
    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    .line 137
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    sget-object v6, Lcom/sonyericsson/textinput/uxp/R$styleable;->EmojiTabItem:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 174
    .local v5, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 175
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 176
    .local v0, "arrayIndex":I
    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    goto :goto_1

    .line 182
    :pswitch_2
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "label":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/grid/EscapedStringDecoder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabel:Ljava/lang/String;

    goto :goto_1

    .line 186
    .end local v4    # "label":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 187
    .local v3, "iconId":I
    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 190
    .end local v3    # "iconId":I
    :pswitch_4
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mUseGrayScale:Z

    goto :goto_1

    .line 196
    .end local v0    # "arrayIndex":I
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    .end local v2    # "i":I
    .end local v5    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_1
    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    if-ne v6, v7, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    .line 204
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setSoundEffectsEnabled(Z)V

    .line 206
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mUseGrayScale:Z

    if-eqz v6, :cond_3

    .line 207
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 208
    .local v1, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 209
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 211
    .end local v1    # "colorMatrix":Landroid/graphics/ColorMatrix;
    :cond_3
    return-void

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private fireOnEmojiTabPositionChange()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTabPosition:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;->onEmojiTabPositionChange(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V

    .line 368
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    .line 239
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;->getLatestTabPositionChange()Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v2

    if-nez v2, :cond_2

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mHorizontalPlacement:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->LEFTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    .line 244
    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 245
    return-void

    :cond_1
    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTabPosition:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;->getLatestTabPositionChange()Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateTabState()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 385
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsInitialized:Z

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 389
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mBackgroundColor:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_PRESSED:[I

    :goto_0
    const/high16 v6, -0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 393
    .local v1, "backgroundColor":I
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const/16 v4, 0x99

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setIconAlpha(I)V

    .line 400
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabel:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 401
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mISkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f0d0036

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 402
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsOneHanded:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_1
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsOneHanded:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 402
    :goto_2
    invoke-virtual {v6, v10, v10, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 409
    .local v2, "iconBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterX:F

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterY:F

    .line 424
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "backgroundColor":I
    .end local v2    # "iconBounds":Landroid/graphics/Rect;
    :cond_0
    :goto_3
    return-void

    .line 389
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_NORMAL:[I

    goto :goto_0

    .line 403
    .restart local v1    # "backgroundColor":I
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 404
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    .line 403
    invoke-interface {v4, v5, v7}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v4

    goto :goto_1

    .line 405
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v7, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    .line 405
    invoke-interface {v5, v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v5

    goto :goto_2

    .line 413
    :cond_4
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsOneHanded:Z

    if-eqz v4, :cond_5

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    .line 416
    .local v3, "realFontSize":I
    :goto_4
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->sShadowOutline:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->sShadowOutline:Landroid/graphics/Rect;

    .line 419
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->sPixelErrorAdjustment:Landroid/graphics/Rect;

    .line 420
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterX:F

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterY:F

    goto :goto_3

    .line 413
    .end local v3    # "realFontSize":I
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mFontSize:I

    int-to-float v6, v6

    .line 414
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v3

    goto :goto_4
.end method


# virtual methods
.method public initialize(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZLcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;Z)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p4, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p5, "isOneHanded"    # Z
    .param p6, "horizontalPlacement"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
    .param p7, "isSplit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 265
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsOneHanded:Z

    .line 266
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 267
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mISkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 268
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mHorizontalPlacement:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    .line 269
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsInitialized:Z

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorPaint:Landroid/graphics/Paint;

    const v1, 0x7f0d0036

    invoke-interface {p4, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 273
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorHeight:I

    .line 275
    iput-boolean p7, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSplit:Z

    .line 276
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->resetState()V

    .line 277
    return-void
.end method

.method public isTouchLocked()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 461
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 466
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterX:F

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 472
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    return-void

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabel:Ljava/lang/String;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterX:F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mCenterY:F

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "xNew"    # I
    .param p2, "yNew"    # I
    .param p3, "xOld"    # I
    .param p4, "yOld"    # I

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    .line 286
    return-void
.end method

.method public onTabPostionChanged(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V
    .locals 1
    .param p1, "currentTabPosition"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTabPosition:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    .line 378
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->postInvalidate()V

    .line 379
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .line 295
    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->isTouchLockedByAnyOtherClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_1
    :goto_0
    return v4

    .line 298
    :pswitch_0
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 299
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    goto :goto_0

    .line 302
    :pswitch_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    .line 305
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mKeyDownMovementBoundaryPx:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 314
    :cond_3
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 320
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 321
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->fireOnEmojiTabPositionChange()V

    goto :goto_0

    .line 327
    :pswitch_3
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsPressed:Z

    .line 328
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 228
    if-nez p2, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->resetState()V

    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->updateTabState()V

    .line 232
    :cond_0
    return-void
.end method

.method public setIconAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    const/16 v1, 0xff

    .line 431
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->postInvalidate()V

    .line 445
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setSelectedState(Z)V
    .locals 0
    .param p1, "selectedState"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mIsSelected:Z

    .line 428
    return-void
.end method

.method public setTabPosition(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V
    .locals 0
    .param p1, "tabPosition"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTabPosition:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    .line 220
    return-void
.end method

.method public setTabPositionChangeListener(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mEmojiTabPositionListener:Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;

    .line 345
    return-void
.end method

.method public setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V
    .locals 1
    .param p1, "touchLockManager"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p1, p0}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->addTouchLockClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)V

    .line 358
    :cond_0
    return-void
.end method
