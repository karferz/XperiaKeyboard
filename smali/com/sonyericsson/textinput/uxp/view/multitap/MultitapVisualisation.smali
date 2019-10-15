.class public Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;
.super Ljava/lang/Object;
.source "MultitapVisualisation.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContainerOffset:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

.field private mIsContainerInitialized:Z

.field private mKeyboardView:Landroid/view/View;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

.field private mRootView:Landroid/view/View;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private showPopup(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mIsContainerInitialized:Z

    if-nez v5, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mKeyboardView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    .line 132
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_1

    .line 133
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "unable to fetch base dialog"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_1
    const v5, 0x7f0f0080

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mKeyboardView:Landroid/view/View;

    .line 138
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mKeyboardView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 140
    .local v1, "keyboardWidth":I
    :goto_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 141
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContainerOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v6, v1, p1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v2, v5, v6

    .line 142
    .local v2, "x":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContainerOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mYOffset:I

    sub-int v3, v5, v6

    .line 143
    .local v3, "y":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIII)V

    goto :goto_0

    .end local v1    # "keyboardWidth":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_3
    move v1, v4

    .line 138
    goto :goto_1
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
    .line 82
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
    .line 65
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 66
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContext:Landroid/content/Context;

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    if-ne p2, v0, :cond_2

    .line 68
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    goto :goto_0

    .line 69
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_3

    .line 70
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    goto :goto_0

    .line 71
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_4

    .line 72
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 73
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_5

    .line 74
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0

    .line 75
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    if-ne p2, v0, :cond_0

    .line 76
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->dispose()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mIsContainerInitialized:Z

    .line 96
    return-void
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
    .line 87
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010a

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mYOffset:I

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->addPopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    .line 103
    return-void
.end method

.method public initOptional()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 112
    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getDirection(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setDirection(I)V

    .line 113
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContext:Landroid/content/Context;

    const v3, 0x7f020047

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v3, 0x7f0d010d

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d0014

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setCandidateTextColorNormal(I)V

    .line 119
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const/high16 v4, 0x7f0f0000

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setMultitapHighlightColor(I)V

    .line 121
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d001c

    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setHighlightedCandidateTextColor(I)V

    .line 123
    return-void
.end method

.method public onPopupContainerInitiation(Landroid/view/ViewGroup;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "constraint"    # Landroid/graphics/Point;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mIsContainerInitialized:Z

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mIsContainerInitialized:Z

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContainerOffset:Landroid/graphics/Point;

    .line 186
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onPopupContainerOffsetChanged(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "offset"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mContainerOffset:Landroid/graphics/Point;

    .line 194
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getDirection(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setDirection(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;IJ)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->selectCandidate(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public onSelectionMade(Ljava/lang/Object;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # I

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mIsContainerInitialized:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hide()V

    .line 159
    :cond_0
    return-void
.end method

.method public onSelectionStarted(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "choices"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, -0x2

    .line 163
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mSpeechBubble:Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;->setCandidates([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation;->showPopup(II)V

    goto :goto_0
.end method
