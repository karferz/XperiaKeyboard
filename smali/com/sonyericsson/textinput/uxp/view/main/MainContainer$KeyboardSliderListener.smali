.class final Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;
.super Ljava/lang/Object;
.source "MainContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardSliderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V

    return-void
.end method


# virtual methods
.method public onExpandKeyboard()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 588
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 590
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushOneHandedEnabledEvent(Z)V

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 594
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v1, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOneHandedKeyboard(Z)V

    .line 595
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 596
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$800(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/ned/controller/IBurstHandler;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/ned/controller/Command;

    new-instance v4, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "hide-emojis"

    invoke-direct {v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Lcom/sonyericsson/ned/controller/Command;

    const-string v6, "rebind"

    invoke-direct {v5, v6}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 599
    return-void
.end method

.method public onKeyboardPositionUpdate(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;I)V
    .locals 6
    .param p1, "position"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;
    .param p2, "horizontalChange"    # I

    .prologue
    .line 562
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->getPopupContainerOffset()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v4

    .line 564
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->getPopupContainerOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v5

    .line 565
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->getPopupContainerOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 563
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->setPopupContainerOffset(Landroid/graphics/Point;)V

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getMoreCandidatesPopupOffset()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 570
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v4

    .line 571
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getMoreCandidatesPopupOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 572
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getMoreCandidatesPopupOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 570
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setMoreCandidatesPopupOffset(Landroid/graphics/Point;)V

    .line 576
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter;->fromViewSliderChildPosition(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    move-result-object v1

    .line 578
    .local v1, "oneHandedKeyboardPosition":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 579
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOneHandedKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)V

    .line 580
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v2

    .line 583
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter;->toKeyboardSliderKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    move-result-object v3

    .line 582
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setKeyboardPosition(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;)V

    .line 584
    return-void
.end method
