.class public final Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DRAW_VIEW_CYCLES_NEEDED_FOR_TEST:I = 0x2


# instance fields
.field private mAnimationView:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mCycles:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mIsAnimationsCleared:Z

.field private final mParentContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mCycles:I

    .line 77
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mParentContainer:Landroid/view/ViewGroup;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mCycles:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mCycles:I

    return p1
.end method

.method static synthetic access$008(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mCycles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mCycles:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mIsAnimationsCleared:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mIsAnimationsCleared:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private sendShownMeasurement()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 181
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 192
    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mIsAnimationsCleared:Z

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 109
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 113
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    .line 115
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    .line 275
    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hasContentView()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    .line 145
    return-void
.end method

.method public show(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A content view must be set before this method may be called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    .local v0, "parameters":Landroid/view/ViewGroup$LayoutParams;
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 176
    return-void
.end method

.method public show(IIIILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "showAnimation"    # Landroid/view/animation/Animation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hideAnimation"    # Landroid/view/animation/Animation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "animationView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mIsAnimationsCleared:Z

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIII)V

    .line 216
    if-nez p5, :cond_0

    if-eqz p6, :cond_2

    .line 217
    :cond_0
    if-eqz p7, :cond_3

    .line 218
    iput-object p7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    .line 223
    :goto_0
    if-eqz p6, :cond_1

    .line 224
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mHideAnimation:Landroid/view/animation/Animation;

    .line 227
    :cond_1
    if-eqz p5, :cond_2

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    :cond_2
    return-void

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->mAnimationView:Landroid/view/View;

    goto :goto_0
.end method
