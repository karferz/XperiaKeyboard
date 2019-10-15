.class public Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardHeightPickerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;,
        Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.3f

.field private static final ENABLED_ALPHA:F = 1.0f

.field private static final PRESSED_STATE:[I

.field private static final STICKY_DURATION_MS:I = 0x190

.field private static final UNPRESSED_STATE:[I


# instance fields
.field private mDefaultDivider:Landroid/view/View;

.field private mDefaultHandleTopPx:I

.field private mDefaultKeyboardHeightPx:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragHelperCallback:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;

.field private mHandle:Landroid/view/View;

.field private mHandleBackground:Landroid/widget/ImageView;

.field private mHandleDownArrow:Landroid/widget/ImageView;

.field private mHandleUpArrow:Landroid/widget/ImageView;

.field private mHasInitiatedHandleArrows:Z

.field private final mKeyboardHeightDragTresholdPx:I

.field private final mKeyboardHeightMaxChangePx:I

.field private final mKeyboardHeightStickyTresholdPx:I

.field private mMaxDivider:Landroid/view/View;

.field private mResizeListener:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-array v0, v2, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->UNPRESSED_STATE:[I

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->PRESSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultHandleTopPx:I

    .line 78
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$1;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelperCallback:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;

    .line 79
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelperCallback:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;

    invoke-static {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightMaxChangePx:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightDragTresholdPx:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightStickyTresholdPx:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 88
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->refreshPosition(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getTopBound()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getBottomBound()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getDefaultDragViewTopPx()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightStickyTresholdPx:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightDragTresholdPx:I

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->PRESSED_STATE:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->UNPRESSED_STATE:[I

    return-object v0
.end method

.method private getBottomBound()I
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getDefaultDragViewTopPx()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightMaxChangePx:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDefaultDragViewTopPx()I
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultHandleTopPx:I

    if-gez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultKeyboardHeightPx:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultHandleTopPx:I

    .line 169
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultHandleTopPx:I

    return v0
.end method

.method private getEnabledAlpha(Z)F
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method private getTopBound()I
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getDefaultDragViewTopPx()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightMaxChangePx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private refreshExpandArrows(I)V
    .locals 4
    .param p1, "topPositionPx"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleUpArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getTopBound()I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getEnabledAlpha(Z)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleDownArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getBottomBound()I

    move-result v3

    if-ge p1, v3, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getEnabledAlpha(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    return-void

    :cond_0
    move v0, v2

    .line 188
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_1
.end method

.method private refreshPosition(I)V
    .locals 2
    .param p1, "topPosition"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->refreshExpandArrows(I)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mResizeListener:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mResizeListener:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getDefaultDragViewTopPx()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;->onResize(I)V

    .line 185
    :cond_0
    return-void
.end method

.method private updateDividerPositions()V
    .locals 7

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    .local v0, "defaultParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultKeyboardHeightPx:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultDivider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mMaxDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    .local v1, "maxParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultKeyboardHeightPx:I

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mKeyboardHeightMaxChangePx:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mMaxDivider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 95
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    const v1, 0x7f0f00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleBackground:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    const v1, 0x7f0f00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleUpArrow:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandle:Landroid/view/View;

    const v1, 0x7f0f00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHandleDownArrow:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0f00ab

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultDivider:Landroid/view/View;

    .line 100
    const v0, 0x7f0f00aa

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mMaxDivider:Landroid/view/View;

    .line 101
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 118
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 120
    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 105
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 106
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHasInitiatedHandleArrows:Z

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v1

    .line 108
    .local v1, "keyboardResizeHeightPxCurrent":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getDefaultDragViewTopPx()I

    move-result v2

    sub-int v0, v2, v1

    .line 109
    .local v0, "currentTop":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->refreshExpandArrows(I)V

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mHasInitiatedHandleArrows:Z

    .line 112
    .end local v0    # "currentTop":I
    .end local v1    # "keyboardResizeHeightPxCurrent":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyboardDefaultHeight(I)V
    .locals 0
    .param p1, "defaultKeyboardHeightPx"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mDefaultKeyboardHeightPx:I

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->updateDividerPositions()V

    .line 148
    return-void
.end method

.method public setResizeListener(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;)V
    .locals 0
    .param p1, "resizeListener"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->mResizeListener:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$ResizeListener;

    .line 138
    return-void
.end method
