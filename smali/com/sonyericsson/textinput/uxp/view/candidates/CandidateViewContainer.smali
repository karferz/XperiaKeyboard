.class public Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;
.super Landroid/widget/RelativeLayout;
.source "CandidateViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/OnKeyboardViewListener;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
.implements Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateViewListener;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/controller/IRemoveWordsListener;


# static fields
.field private static final EXTENDED_CANDIDATES_MAXIMUM_ROWS:I = 0x3

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
.field private final mBackgroundId:I

.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

.field private mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

.field private mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->REQUIRED:[Ljava/lang/Class;

    .line 67
    new-array v0, v5, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "back-key-down"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "back-key-up"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 90
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->SkinnedResources:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mBackgroundId:I

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    return-void
.end method

.method private hideMoreCandidates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->hide()V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardDimAndDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setShowingMoreCandidates(Z)V

    .line 268
    :cond_1
    return-void
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
    .line 237
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
    .line 242
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_1

    .line 243
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_2

    .line 245
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0

    .line 246
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_3

    .line 247
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 248
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_0

    .line 249
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 203
    return-void
.end method

.method public getCandidateView()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 374
    const/16 v0, 0xc

    return v0
.end method

.method public getMoreCandidatesPopupOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoreCandidatesView()Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

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
    .line 255
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 208
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 211
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getWidthMargin()I

    move-result v3

    .line 210
    invoke-virtual {p0, v2, v4, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setPadding(IIII)V

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    const-string v3, "candidate_bar_height"

    .line 214
    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 216
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->requestLayout()V

    .line 218
    return-void
.end method

.method public initMoreCandidatesPopup(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
    .param p2, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 140
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;-><init>(Landroid/content/Context;Lcom/sonyericsson/ned/controller/IBurstHandler;I)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->initialize(Landroid/view/ViewGroup;Landroid/graphics/Point;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 146
    return-void
.end method

.method public initOptional()V
    .locals 5

    .prologue
    .line 222
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mBackgroundId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isDocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v4, 0x7f0d010d

    .line 224
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 225
    .local v2, "candidateBackgroundColorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 227
    .local v1, "backgroundColor":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mBackgroundId:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "backgroundColor":I
    .end local v2    # "candidateBackgroundColorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-nez v0, :cond_0

    .line 97
    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setOnInteractionListener(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onCandidatesRemoved()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setShowingMoreCandidates(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public onCaseChanged(IZ)V
    .locals 0
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 281
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 308
    return-void
.end method

.method public onEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
    .locals 0
    .param p1, "enabledStatus"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;
    .param p2, "enabledStatusEffectedArea"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->invalidate()V

    .line 276
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "back-key-up"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 363
    :cond_0
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 302
    return-void
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 326
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 288
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mEnabledStatus:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 190
    .local v0, "isKeyboardEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    .line 191
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 192
    .local v1, "isMoreCandidatesViewShowing":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "isKeyboardEnabled":Z
    .end local v1    # "isMoreCandidatesViewShowing":Z
    :cond_0
    move v0, v3

    .line 189
    goto :goto_0

    .restart local v0    # "isKeyboardEnabled":Z
    :cond_1
    move v1, v3

    .line 191
    goto :goto_1

    .restart local v1    # "isMoreCandidatesViewShowing":Z
    :cond_2
    move v2, v3

    .line 192
    goto :goto_2
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 370
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 295
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 320
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 315
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 331
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setShowingMoreCandidates(Z)V

    .line 345
    :cond_0
    return-void
.end method

.method public onWordRemoved(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->hideMoreCandidates()V

    .line 350
    return-void
.end method

.method public setMoreCandidatesPopupOffset(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mMoreCandidatesView:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->setOffset(Landroid/graphics/Point;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setVisibility(I)V

    .line 126
    return-void
.end method
