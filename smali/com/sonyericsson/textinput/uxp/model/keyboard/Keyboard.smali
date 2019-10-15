.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;
.source "Keyboard.java"


# static fields
.field public static final KEYCODE_COMMA:I = 0x2

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_DOT_COM:I = 0x3

.field public static final KEYCODE_HANDWRITING:I = -0x14

.field public static final KEYCODE_IM_CHANGE:I = -0x8

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_NUMBER_SYMBOLS_TOGGLE:I = -0xf

.field public static final KEYCODE_PERIOD:I = 0x1

.field public static final KEYCODE_SETTINGS:I = -0xb

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_SMILEY_TOGGLE:I = -0xe

.field public static final KEYCODE_SPACE:I = 0x4

.field public static final KEYCODE_SYMBOL_PAGE_TOGGLE:I = -0xd

.field public static final KEYCODE_TAB:I = -0xc

.field public static final KEYCODE_TOGGLE_FLOATING:I = -0x13

.field public static final KEYCODE_VOICE:I = -0x12

.field public static final KEYCODE_WIZARD:I = -0x11

.field public static final KEYCODE_X_KEY:I = -0x10

.field public static final X_KEY_TYPE_LANGUAGE_TOGGLE:I = 0x1

.field public static final X_KEY_TYPE_VOICE:I = 0x2


# instance fields
.field private mIsPopup:Z

.field private mIsShifted:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeyLargeLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeyPadding:Landroid/graphics/Rect;

.field private mKeyPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeyVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeyVerySmallPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private mKeyVeryVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalHeightPx:I

.field private mTotalWidthPx:I


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 1
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;-><init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPadding:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 127
    return-void
.end method

.method private createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "labelStyleId"    # I
    .param p3, "defaultLabelStyleId"    # I
    .param p4, "colorStyleId"    # I

    .prologue
    .line 317
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .end local p2    # "labelStyleId":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static {p1, p2, p4, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->getTextStyle(Landroid/content/Context;IILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v0

    return-object v0

    .restart local p2    # "labelStyleId":I
    :cond_0
    move p2, p3

    goto :goto_0
.end method

.method private getMainIconScaleType()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsPopup:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    goto :goto_0
.end method


# virtual methods
.method protected addKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public applySkin(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setTextColor(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 257
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackgroundId:I

    if-eqz v3, :cond_4

    .line 258
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackgroundId:I

    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 259
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPadding:Landroid/graphics/Rect;

    .line 260
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 265
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMainIconScaleType()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move-result-object v2

    .line 266
    .local v2, "scaleType":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    const v3, 0x7f0d0014

    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v0

    .line 267
    .local v0, "color":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 268
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isDecoreLabel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLargeLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVeryVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {v1, v4, v5, p1, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->createDecorationIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 272
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconId()I

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconId()I

    move-result v4

    invoke-interface {p2, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {v1, v4, v5, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    .line 275
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconPreviewId()I

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconPreviewId()I

    move-result v4

    invoke-interface {p2, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconPreview(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 278
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconId()I

    move-result v4

    if-nez v4, :cond_0

    .line 279
    invoke-virtual {v1, p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setDarkKeyIconLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;I)V

    goto :goto_1

    .line 262
    .end local v0    # "color":I
    .end local v1    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v2    # "scaleType":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPadding:Landroid/graphics/Rect;

    goto :goto_0

    .line 282
    .restart local v0    # "color":I
    .restart local v2    # "scaleType":Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    :cond_5
    return-void
.end method

.method public clearState()V
    .locals 3

    .prologue
    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsShifted:Z

    .line 182
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 183
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->clearState()V

    goto :goto_0

    .line 185
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    return-void
.end method

.method public getEnterKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 161
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPx()I
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v0

    .line 382
    .local v0, "totalKeyboardHeightPx":I
    if-nez v0, :cond_0

    .line 383
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mTotalHeightPx:I

    .line 385
    .end local v0    # "totalKeyboardHeightPx":I
    :cond_0
    return v0
.end method

.method public getKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 151
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    goto :goto_0
.end method

.method public getKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    return-object v0
.end method

.method protected getKeyLabelStyle(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 2
    .param p1, "labelStyle"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 209
    .local v0, "textStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 212
    :cond_0
    return-object v0
.end method

.method public getKeyLabelStyleVerySmall()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    return-object v0
.end method

.method public getKeyLabelStyleVeryVerySmall()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVeryVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    return-object v0
.end method

.method public getKeyPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getKeyPreviewLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    return-object v0
.end method

.method public getKeyVerySmallPreviewLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 3
    .param p1, "meta"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 390
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 394
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMetaKeys(I)Ljava/util/List;
    .locals 4
    .param p1, "meta"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 401
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 402
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    return-object v1
.end method

.method public getPressedKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "pressedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 430
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    return-object v1
.end method

.method public getShiftKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKeys(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpanWidthPx()I
    .locals 2

    .prologue
    .line 361
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v0

    .line 362
    .local v0, "totalWidthPx":I
    if-nez v0, :cond_0

    .line 367
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mTotalWidthPx:I

    .line 369
    .end local v0    # "totalWidthPx":I
    :cond_0
    return v0
.end method

.method public getToggleFloatingKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 177
    const/16 v0, -0x13

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method public getToggleInputMethodKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 173
    const/4 v0, -0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method public getXKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .locals 1

    .prologue
    .line 169
    const/16 v0, -0x10

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    return-object v0
.end method

.method public hasReleasedResources()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)V
    .locals 1
    .param p1, "template"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    .prologue
    .line 130
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLargeLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLargeLabelStyleId:I

    .line 131
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLabelStyleId:I

    .line 132
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeySmallLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeySmallLabelStyleId:I

    .line 133
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVerySmallLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallLabelStyleId:I

    .line 134
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVeryVerySmallLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVeryVerySmallLabelStyleId:I

    .line 135
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyPreviewLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPreviewLabelStyleId:I

    .line 136
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyVerySmallPreviewLabelStyleId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallPreviewLabelStyleId:I

    .line 138
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mKeyBackgroundId:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyBackgroundId:I

    .line 139
    iget v0, p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;->mPopupKeySizePx:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsPopup:Z

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsShifted:Z

    return v0
.end method

.method protected setContentHeightPx(I)V
    .locals 3
    .param p1, "contentHeightPx"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 229
    .local v0, "keyboardPadding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mTotalHeightPx:I

    .line 230
    return-void
.end method

.method public setPressedKeys(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "pressedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    if-eqz p1, :cond_2

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 440
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKeys(I)Ljava/util/List;

    move-result-object v2

    .line 441
    .local v2, "matchingKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 442
    .local v1, "matchingKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v5

    .line 443
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterYPx()I

    move-result v6

    .line 442
    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isInsideTouch(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setPressed(Z)V

    goto :goto_0

    .line 449
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v1    # "matchingKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v2    # "matchingKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    :cond_2
    return-void
.end method

.method public setShiftIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 453
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 455
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    return-void
.end method

.method public setShifted(Z)Z
    .locals 3
    .param p1, "shiftState"    # Z

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 339
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setOn(Z)V

    goto :goto_0

    .line 341
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsShifted:Z

    if-eq v1, p1, :cond_1

    .line 342
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mIsShifted:Z

    .line 343
    const/4 v1, 0x1

    .line 345
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setSizeAndScaleProvider(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 0
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 331
    return-void
.end method

.method public setTextColor(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 297
    const v1, 0x7f0b0034

    invoke-interface {p2, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getStyleId(I)I

    move-result v0

    .line 298
    .local v0, "colorStyleId":I
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLargeLabelStyleId:I

    const v2, 0x7f0b0038

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLargeLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 301
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLabelStyleId:I

    const v2, 0x7f0b0037

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 303
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeySmallLabelStyleId:I

    const v2, 0x7f0b003a

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 305
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallLabelStyleId:I

    const v2, 0x7f0b004b

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 307
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVeryVerySmallLabelStyleId:I

    const v2, 0x7f0b004d

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVeryVerySmallLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 309
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPreviewLabelStyleId:I

    const v2, 0x7f0b0039

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 311
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallPreviewLabelStyleId:I

    const v2, 0x7f0b004c

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->createTextStyle(Landroid/content/Context;III)Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeyVerySmallPreviewLabelStyle:Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    .line 313
    return-void
.end method

.method public shallOffsetAllKeys()Z
    .locals 4

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "shallOffsetAllKeys":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 419
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->mIsFixedPositionLabel:Z

    if-nez v3, :cond_0

    .line 420
    const/4 v1, 0x1

    .line 424
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    return v1
.end method

.method protected updateContentWidthPx(I)V
    .locals 4
    .param p1, "contentWidthPx"    # I

    .prologue
    .line 241
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 242
    .local v0, "keyboardPadding":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int v1, v2, v3

    .line 250
    .local v1, "potentialNewTotalWidthPx":I
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mTotalWidthPx:I

    if-le v1, v2, :cond_0

    .line 251
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->mTotalWidthPx:I

    .line 253
    :cond_0
    return-void
.end method
