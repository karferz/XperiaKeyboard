.class public Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
.super Landroid/widget/RelativeLayout;
.source "EmojiBottomRow.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;
    }
.end annotation


# static fields
.field static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

.field private mHandler:Landroid/os/Handler;

.field private mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mRepeatDelete:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->fireOnFeedback()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->fireOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mRepeatDelete:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->fireOnRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->fireOnRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fireOnFeedback()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-eqz v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 116
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;->onFeedback()V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    :cond_0
    return-void
.end method

.method private fireOnPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 105
    :cond_0
    return-void
.end method

.method private fireOnRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 99
    :cond_0
    return-void
.end method

.method private fireOnRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 111
    :cond_0
    return-void
.end method

.method private getAndUpdateImageButton(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 4
    .param p1, "buttonResourceId"    # I
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "keyBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 201
    .local v1, "button":Landroid/widget/ImageButton;
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 203
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    return-object v1
.end method

.method private updateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 10
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "keyBackgroundPressed"    # Landroid/graphics/drawable/Drawable;
    .param p4, "keyBackgroundShadow"    # Landroid/graphics/drawable/Drawable;
    .param p5, "buttonId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p6, "buttonShadowId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p7, "containerId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 144
    invoke-direct {p0, p5, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->getAndUpdateImageButton(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v3

    .line 145
    .local v3, "button":Landroid/widget/ImageButton;
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 146
    .local v6, "buttonShadow":Landroid/widget/FrameLayout;
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 147
    .local v9, "buttonContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 149
    .local v7, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v6, v7}, Lcom/sonyericsson/textinput/uxp/util/ViewUtil;->safeSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-static {v3, p2}, Lcom/sonyericsson/textinput/uxp/util/ViewUtil;->safeSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 152
    const v1, 0x7f0f006e

    if-ne p5, v1, :cond_0

    .line 153
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    .line 154
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingEnd:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingBottom:I

    .line 153
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 161
    :goto_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/widget/FrameLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    return-void

    .line 157
    :cond_0
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingStart:I

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    .line 158
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingBottom:I

    .line 157
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

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
    .line 83
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-ne p2, v0, :cond_0

    .line 84
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 74
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-ne p2, v0, :cond_0

    .line 75
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;-><init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mRepeatDelete:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    .line 79
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mRepeatDelete:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mRepeatDelete:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->access$500(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;)V

    .line 220
    :cond_0
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
    .line 92
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public setButtonPadding(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingStart:I

    .line 135
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingTop:I

    .line 136
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingEnd:I

    .line 137
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->mPaddingBottom:I

    .line 138
    return-void
.end method

.method public updateKeys(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "toggle"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "delete"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p3, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p4, "keyBackgroundPressed"    # Landroid/graphics/drawable/Drawable;
    .param p5, "keyBackgroundShadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    const v5, 0x7f0f006b

    const v6, 0x7f0f006a

    const v7, 0x7f0f0069

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->updateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V

    .line 68
    const v5, 0x7f0f006e

    const v6, 0x7f0f006d

    const v7, 0x7f0f006c

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->updateKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V

    .line 70
    return-void
.end method
