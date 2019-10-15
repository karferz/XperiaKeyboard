.class final Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;
.super Ljava/lang/Object;
.source "MainContainer.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmojiToggleLayoutHandler"
.end annotation


# instance fields
.field private final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V
    .locals 4

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "show-emojis"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "hide-emojis"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 6
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 870
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 874
    .local v0, "keyboardContainerHeightBeforeUpdate":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 875
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1900(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isPredictionActivated()Z

    move-result v4

    const-string v5, "show-emojis"

    .line 876
    invoke-virtual {p1, v5}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v5

    .line 874
    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;ZZ)V

    .line 877
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v2, v0

    .line 884
    .local v1, "keyboardContainerHeightDelta":I
    if-eqz v1, :cond_0

    .line 885
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$EmojiToggleLayoutHandler;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 892
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 898
    return-void
.end method
