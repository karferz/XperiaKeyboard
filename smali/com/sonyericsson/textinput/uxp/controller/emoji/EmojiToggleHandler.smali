.class public final Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;
.super Ljava/lang/Object;
.source "EmojiToggleHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;
    }
.end annotation


# static fields
.field private static final FADING_EDGE_HEIGHT_FACTOR:F = 1.2f

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

.field private final mFloatingKeyboardType:Ljava/lang/String;

.field private final mIsOneHandedKeyboard:Z

.field private mKeyboardAndCandidateBar:Landroid/view/View;

.field private mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

.field private mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->REQUIRED:[Ljava/lang/Class;

    .line 44
    new-array v0, v5, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "show-emojis"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "hide-emojis"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isOneHandedKeyboard"    # Z
    .param p2, "floatingKeyboardType"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mIsOneHandedKeyboard:Z

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mFloatingKeyboardType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getCombinedKeyboardAndKeysAreaPadding(Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
    .param p2, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 79
    .local v1, "keyboardAndKeysAreaPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyShadowPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    .local v0, "keyShadow":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 83
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 84
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 87
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_LEFT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 88
    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 90
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_RIGHT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 91
    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 93
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 94
    invoke-interface {p2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 97
    iget v2, v1, Landroid/graphics/Rect;->left:I

    const-string v3, "keyboard_width_margin"

    .line 98
    invoke-interface {p1, v3}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 100
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const-string v3, "keyboard_width_margin"

    .line 101
    invoke-interface {p1, v3}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 103
    return-object v1
.end method

.method private hideEmojis()V
    .locals 3

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mIsOneHandedKeyboard:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateBackground(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardAndCandidateBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->requestLayout()V

    .line 201
    return-void
.end method

.method private showEmojis()V
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->updateEmojiContainer()V

    .line 186
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mIsOneHandedKeyboard:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateBackground(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardAndCandidateBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->requestLayout()V

    .line 192
    return-void
.end method

.method private updateEmojiContainer()V
    .locals 18

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v17

    .line 205
    .local v17, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    const/4 v1, -0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 206
    .local v3, "deleteKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    const/4 v1, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 211
    .local v2, "toggleKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 212
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v15, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    if-eqz v1, :cond_0

    move-object v1, v15

    .line 214
    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v11, 0x2

    if-lt v1, v11, :cond_0

    .line 215
    check-cast v15, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 216
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_0

    .line 217
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    .end local v16    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualWidthPx(I)V

    .line 223
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setVisualHeightPx(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 226
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->getCombinedKeyboardAndKeysAreaPadding(Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Landroid/graphics/Rect;

    move-result-object v8

    .line 228
    .local v8, "keyboardAndKeysAreaPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundNormal(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 230
    .local v4, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundPressed(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 232
    .local v5, "keyBackgroundPressed":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;->FUNCTION:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyBackgroundShadow(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyBase$KeyStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 235
    .local v6, "keyBackgroundShadow":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mIsOneHandedKeyboard:Z

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    .line 238
    .local v7, "emojiViewBackground":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v11, 0x7f0d003d

    invoke-interface {v1, v11}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v9

    .line 240
    .local v9, "keyboardTextColor":I
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v1

    int-to-float v1, v1

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v11

    float-to-int v10, v1

    .line 243
    .local v10, "fadingEdgeHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f0900c7

    .line 244
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 246
    .local v14, "emojiGridVariantSelectorYOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mIsOneHandedKeyboard:Z

    sget-object v11, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mFloatingKeyboardType:Ljava/lang/String;

    .line 251
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move v11, v10

    .line 246
    invoke-virtual/range {v1 .. v14}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->updateAppearance(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IIIZZI)V

    .line 252
    return-void

    .line 235
    .end local v7    # "emojiViewBackground":Landroid/graphics/drawable/Drawable;
    .end local v9    # "keyboardTextColor":I
    .end local v10    # "fadingEdgeHeight":I
    .end local v14    # "emojiGridVariantSelectorYOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 236
    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-interface {v1, v11, v12}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0
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
    .line 129
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
    .line 108
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 109
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mContext:Landroid/content/Context;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_2

    .line 111
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 112
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    if-ne p2, v0, :cond_3

    .line 113
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    goto :goto_0

    .line 114
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    if-ne p2, v0, :cond_4

    .line 115
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    goto :goto_0

    .line 116
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    if-ne p2, v0, :cond_5

    .line 117
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardSlider:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    goto :goto_0

    .line 118
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-ne p2, v0, :cond_6

    .line 119
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    goto :goto_0

    .line 120
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_7

    .line 121
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0

    .line 122
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_0

    .line 123
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->hideEmojis()V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->persistUsageData()V

    .line 151
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
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
    .line 134
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public initOptional()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardContainer:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    const v1, 0x7f0f00a7

    .line 144
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->mKeyboardAndCandidateBar:Landroid/view/View;

    .line 145
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 160
    const-string v0, "show-emojis"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->showEmojis()V

    .line 165
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_1
    const-string v0, "hide-emojis"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;->hideEmojis()V

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 171
    return-void
.end method
