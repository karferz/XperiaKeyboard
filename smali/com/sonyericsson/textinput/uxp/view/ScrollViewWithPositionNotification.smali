.class public Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;
.super Landroid/widget/ScrollView;
.source "ScrollViewWithPositionNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;
    }
.end annotation


# static fields
.field private static final LAST_ITEM_TOLERANCE_DIVISOR:I = 0x6


# instance fields
.field private mHasFiredInitialOnScrollBottomChange:Z

.field private final mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

.field private mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->isLastViewVisible()Z

    move-result v0

    return v0
.end method

.method private getBottomPositionInRootView(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getBottomPositionInRootView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private isLastViewVisible()Z
    .locals 8

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getChildCount()I

    move-result v2

    .line 92
    .local v2, "childIndex":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 93
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "bottomView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    if-gez v2, :cond_0

    .line 97
    :cond_1
    :goto_0
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    move-object v5, v1

    .line 99
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 101
    :cond_2
    add-int/lit8 v2, v2, -0x1

    move-object v5, v1

    .line 102
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "childView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    if-gez v2, :cond_2

    .line 105
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 106
    move-object v1, v3

    .line 110
    goto :goto_0

    .line 112
    .end local v3    # "childView":Landroid/view/View;
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x6

    .line 113
    .local v4, "tolerance":I
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getBottomPositionInRootView(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v4

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 115
    .local v0, "bottomScrollDistance":I
    if-gtz v0, :cond_5

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->isLastViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;->onScrollBottomChange(ZZ)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 79
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->setScrollBottomChangeListener(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;)V

    .line 70
    return-void
.end method

.method public scrollToBottom()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public setScrollBottomChangeListener(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;)V
    .locals 2
    .param p1, "scrollBottomChangeListener"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mHasFiredInitialOnScrollBottomChange:Z

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mScrollBottomChangeListener:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->attach(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
