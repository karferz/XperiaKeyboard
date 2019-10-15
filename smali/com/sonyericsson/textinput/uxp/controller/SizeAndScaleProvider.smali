.class public Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
.super Ljava/lang/Object;
.source "SizeAndScaleProvider.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
.implements Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED_KEYBOARD_LAYOUT_ROW_COUNT:I = -0x1


# instance fields
.field private mBaseKeyboardHeightPx:I

.field private mBaseKeyboardWidthMarginPx:I

.field private mBaseKeyboardWidthPx:I

.field private mContext:Landroid/content/Context;

.field private mDefaultKeyboardHeightPx:I

.field private final mIs12KeyLayout:Z

.field private final mIsFloatingSplitKeyboard:Z

.field private final mIsMiniKeyboard:Z

.field private final mIsNumericKeysEnabled:Z

.field private final mIsPortrait:Z

.field private mKeyboardLayoutRowCount:I

.field private mKeyboardPadding:Landroid/graphics/Rect;

.field private mKeyboardResizeHeightDeltaPx:I

.field private mKeyboardTotalSpanWidth:I

.field private mModifiedKeyboardHeightPx:I

.field private mModifiedKeyboardWidthPx:I

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mScaleFactor:[F

.field private mScaledKeyboardWidth:I

.field private final mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

.field private final mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Z)V
    .locals 2
    .param p1, "isNumericKeysEnabled"    # Z
    .param p2, "is12KeyLayout"    # Z
    .param p3, "floatingKeyboardType"    # Ljava/lang/String;
    .param p4, "isPortrait"    # Z

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsNumericKeysEnabled:Z

    .line 65
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    .line 66
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardPadding:Landroid/graphics/Rect;

    .line 68
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsFloatingSplitKeyboard:Z

    .line 70
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsMiniKeyboard:Z

    .line 72
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIs12KeyLayout:Z

    .line 73
    iput-boolean p4, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsPortrait:Z

    .line 74
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->isInputMethodVirtualNumPad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCalculatedDefaultKeyboardHeight(Landroid/util/DisplayMetrics;)I
    .locals 9
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsFloatingSplitKeyboard:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsMiniKeyboard:Z

    if-eqz v5, :cond_3

    .line 169
    :cond_0
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsNumericKeysEnabled:Z

    if-eqz v5, :cond_2

    const-string v1, "num_keyboard_height"

    .line 172
    .local v1, "keyboardHeightKey":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-interface {v5, v1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v4

    .line 213
    .end local v1    # "keyboardHeightKey":Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 169
    :cond_2
    const-string v1, "keyboard_height"

    goto :goto_0

    .line 175
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v6, "keyboard_default_height"

    .line 176
    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v5

    int-to-float v0, v5

    .line 178
    .local v0, "keyboardHeight":F
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v6, "keyboard_max_height"

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 179
    invoke-interface {v5, v6, v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFraction(Ljava/lang/String;II)F

    move-result v2

    .line 181
    .local v2, "maxKeyboardHeight":F
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v6, "keyboard_min_height"

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 182
    invoke-interface {v5, v6, v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFraction(Ljava/lang/String;II)F

    move-result v3

    .line 184
    .local v3, "minKeyboardHeight":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 186
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v6, "keyboard_min_height"

    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    invoke-interface {v5, v6, v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFraction(Ljava/lang/String;II)F

    move-result v5

    neg-float v3, v5

    .line 198
    :cond_4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v4, v5

    .line 205
    .local v4, "returnHeight":I
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsNumericKeysEnabled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v6, "keyboard_auxiliary_row_height"

    .line 207
    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method private getHeightResizeFactor()F
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getDefaultKeyboardHeightPx()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private initHeightAndWidth()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 128
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "keyboard_width"

    .line 129
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthPx:I

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v2, "keyboard_width_margin"

    .line 131
    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthMarginPx:I

    .line 133
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthPx:I

    if-nez v1, :cond_0

    .line 134
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthPx:I

    .line 142
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsFloatingSplitKeyboard:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardTotalSpanWidth:I

    .line 145
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getCalculatedDefaultKeyboardHeight(Landroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mDefaultKeyboardHeightPx:I

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsPortrait:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 147
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardResizeHeightDeltaPx:I

    .line 148
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mDefaultKeyboardHeightPx:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardResizeHeightDeltaPx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardHeightPx:I

    .line 150
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    .line 151
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    .line 152
    return-void

    .line 142
    :cond_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthPx:I

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 147
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initScaleFactor()V
    .locals 5

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getHeightResizeFactor()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 113
    .local v0, "boundedHeightResizeFactor":F
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->values()[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v4, "key_icon_scale_factor"

    .line 115
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v4, "key_text_scale_factor"

    .line 117
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SECONDARY_PRINT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v4, "key_secondary_print_scale_factor"

    .line 119
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v4, "keyboard_padding_scale_factor"

    .line 121
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    const-string v4, "keyboard_smiley_scale_factor"

    .line 123
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 124
    return-void
.end method

.method private isDefaultRowCount()Z
    .locals 3

    .prologue
    .line 473
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessing KeyboardPadding before preprocessing keyboard layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInputMethodVirtualNumPad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMethodParameter"    # Ljava/lang/String;
    .param p1, "formFactor"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "multitap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "singletap"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numpad"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tablet"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scalePaddingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 356
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 357
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 358
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 359
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 360
    return-object p1
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 87
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mContext:Landroid/content/Context;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 89
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 90
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-ne p2, v0, :cond_0

    .line 91
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public get12KeySize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .prologue
    .line 448
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$1;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$ISizeAndScaleProvider$SizeType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 462
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown size type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :pswitch_1
    const v0, 0x7f090004

    .line 464
    .local v0, "dimenId":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    return v1

    .line 453
    .end local v0    # "dimenId":I
    :pswitch_2
    const v0, 0x7f090001

    .line 454
    .restart local v0    # "dimenId":I
    goto :goto_0

    .line 456
    .end local v0    # "dimenId":I
    :pswitch_3
    const v0, 0x7f090002

    .line 457
    .restart local v0    # "dimenId":I
    goto :goto_0

    .line 459
    .end local v0    # "dimenId":I
    :pswitch_4
    const v0, 0x7f090003

    .line 460
    .restart local v0    # "dimenId":I
    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getDefaultKeyboardHeightPx()I
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 339
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    .line 341
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mDefaultKeyboardHeightPx:I

    goto :goto_0
.end method

.method public getDistributionScalerX()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    return-object v0
.end method

.method public getDistributionScalerY()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    return-object v0
.end method

.method public getKeyboardContentHeightPx()I
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    .local v0, "keyboardPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getKeyboardContentWidthPx()I
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 325
    .local v0, "keyboardPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardWidthPx()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getKeyboardHeightPx()I
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 331
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    .line 333
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardHeightPx:I

    goto :goto_0
.end method

.method public getKeyboardPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getKeyboardTotalSpanWidthPx()I
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 317
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    .line 319
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardTotalSpanWidth:I

    goto :goto_0
.end method

.method public getKeyboardWidthPx()I
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 309
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    .line 311
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthPx:I

    goto :goto_0
.end method

.method public getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "layoutName"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getQwertySize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I
    .locals 8
    .param p1, "type"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->isDefaultRowCount()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    if-eq p1, v5, :cond_0

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 403
    .local v4, "useDefaultKeySizes":Z
    :goto_0
    const/4 v1, 0x0

    .line 404
    .local v1, "isResizeScalable":Z
    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$1;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$ISizeAndScaleProvider$SizeType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 426
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown size type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    .end local v1    # "isResizeScalable":Z
    .end local v4    # "useDefaultKeySizes":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 407
    .restart local v1    # "isResizeScalable":Z
    .restart local v4    # "useDefaultKeySizes":Z
    :pswitch_0
    if-eqz v4, :cond_3

    const-string v3, "key_top_gap_3rows"

    .line 429
    .local v3, "resourceName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .line 430
    invoke-interface {v5, v3}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, "nonResizeScaledGap":I
    if-eqz v1, :cond_2

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardResizeHeightDeltaPx:I

    if-eqz v5, :cond_2

    .line 434
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getHeightResizeFactor()F

    move-result v0

    .line 435
    .local v0, "heightResizeFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 436
    int-to-float v5, v2

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 439
    .end local v0    # "heightResizeFactor":F
    .end local v2    # "nonResizeScaledGap":I
    :cond_2
    return v2

    .line 407
    .end local v3    # "resourceName":Ljava/lang/String;
    :cond_3
    const-string v3, "key_top_gap_4rows"

    goto :goto_1

    .line 413
    :pswitch_1
    if-eqz v4, :cond_4

    const-string v3, "key_bottom_gap_3rows"

    .line 416
    .restart local v3    # "resourceName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 413
    .end local v3    # "resourceName":Ljava/lang/String;
    :cond_4
    const-string v3, "key_bottom_gap_4rows"

    goto :goto_2

    .line 418
    :pswitch_2
    const-string v3, "key_left_gap"

    .line 419
    .restart local v3    # "resourceName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 420
    goto :goto_1

    .line 422
    .end local v3    # "resourceName":Ljava/lang/String;
    :pswitch_3
    const-string v3, "key_right_gap"

    .line 423
    .restart local v3    # "resourceName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 424
    goto :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIs12KeyLayout:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->get12KeySize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v0

    .line 393
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getQwertySize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v0

    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
    .locals 0

    .prologue
    .line 365
    return-object p0
.end method

.method public getWidthMargin()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mBaseKeyboardWidthMarginPx:I

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->initHeightAndWidth()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->initScaleFactor()V

    .line 109
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public modifyTextSizeScaleFactor(F)V
    .locals 4
    .param p1, "scaleFactor"    # F

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 386
    return-void
.end method

.method public processScaledKeyboardHeightAndFixedRows(I[I)V
    .locals 16
    .param p1, "scaledTotalHeight"    # I
    .param p2, "templateFixRowsHeights"    # [I

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardContentHeightPx()I

    move-result v4

    .line 265
    .local v4, "keyboardContentHeightPx":I
    const/4 v10, 0x0

    .line 266
    .local v10, "totalFixHeightPx":I
    const/4 v11, 0x0

    .line 267
    .local v11, "totalFixScaledHeight":I
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_1

    aget v9, p2, v14

    .line 268
    .local v9, "templateFixRowsHeightPx":I
    add-int/2addr v10, v9

    .line 269
    if-lez v9, :cond_0

    .line 270
    add-int/lit8 v11, v11, 0x1

    .line 267
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 274
    .end local v9    # "templateFixRowsHeightPx":I
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardResizeHeightDeltaPx:I

    if-gez v14, :cond_3

    .line 277
    sub-int v12, v4, v10

    .line 278
    .local v12, "totalNonFixContentHeightPx":I
    sub-int v13, p1, v11

    .line 280
    .local v13, "totalNonFixContentScaledHeight":I
    int-to-float v14, v12

    int-to-float v15, v13

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 282
    .local v7, "nonFixHeightPerScalePx":I
    int-to-float v14, v10

    int-to-float v15, v11

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 285
    .local v2, "fixedHeightPerScalePx":I
    if-ge v7, v2, :cond_3

    .line 286
    mul-int v6, v7, v11

    .line 287
    .local v6, "newTotalFixHeightPx":I
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;-><init>()V

    .line 288
    .local v1, "fixHeightReduceScaler":Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
    invoke-virtual {v1, v10, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->setup(II)V

    .line 289
    move v10, v6

    .line 290
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v3, v14, :cond_3

    .line 291
    aget v8, p2, v3

    .line 292
    .local v8, "oldTemplateFixRowsHeightPx":I
    if-lez v8, :cond_2

    .line 294
    invoke-virtual {v1, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->allocate(I)I

    move-result v5

    .line 295
    .local v5, "newTemplateFixRowsHeightPx":I
    aput v5, p2, v3

    .line 290
    .end local v5    # "newTemplateFixRowsHeightPx":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    .end local v1    # "fixHeightReduceScaler":Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
    .end local v2    # "fixedHeightPerScalePx":I
    .end local v3    # "i":I
    .end local v6    # "newTotalFixHeightPx":I
    .end local v7    # "nonFixHeightPerScalePx":I
    .end local v8    # "oldTemplateFixRowsHeightPx":I
    .end local v12    # "totalNonFixContentHeightPx":I
    .end local v13    # "totalNonFixContentScaledHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    move/from16 v0, p1

    invoke-interface {v14, v0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->setup(II)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    invoke-interface {v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->reset()V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerY:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    invoke-interface {v14, v11, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->setExternalAllocation(II)V

    .line 304
    return-void
.end method

.method public scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    .param p2, "unscaledValue"    # F

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public setKeyContentScaleFactor(F)V
    .locals 2
    .param p1, "keyContentScaleFactor"    # F

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->values()[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaleFactor:[F

    aput p1, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public setKeyboardLayoutRowCount(I)V
    .locals 1
    .param p1, "keyboardLayoutRowCount"    # I

    .prologue
    .line 484
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    .line 485
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mIsNumericKeysEnabled:Z

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    .line 489
    :cond_0
    return-void
.end method

.method public setKeyboardPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 498
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardLayoutRowCount:I

    .line 499
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->scalePaddingRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardPadding:Landroid/graphics/Rect;

    .line 500
    return-void
.end method

.method public setModifiedKeyboardHeightPx(I)V
    .locals 1
    .param p1, "modifiedKeyHeight"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardHeightPx:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mKeyboardResizeHeightDeltaPx:I

    .line 238
    return-void
.end method

.method public setModifiedKeyboardWidthPx(I)V
    .locals 0
    .param p1, "modifiedKeyboardWidth"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mModifiedKeyboardWidthPx:I

    .line 232
    return-void
.end method

.method public setScaledKeyboardWidth(I)V
    .locals 3
    .param p1, "scaledKeyboardWidth"    # I

    .prologue
    .line 249
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaledKeyboardWidth:I

    if-eq v0, p1, :cond_0

    .line 250
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaledKeyboardWidth:I

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScalerX:Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->mScaledKeyboardWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getKeyboardContentWidthPx()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;->setup(II)V

    .line 253
    :cond_0
    return-void
.end method
