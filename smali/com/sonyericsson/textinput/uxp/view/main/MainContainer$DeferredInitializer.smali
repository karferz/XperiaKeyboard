.class final Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;
.super Ljava/lang/Object;
.source "MainContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeferredInitializer"
.end annotation


# instance fields
.field private final mSlideListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V
    .locals 3

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardSliderListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->mSlideListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->mSlideListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    return-object v0
.end method

.method private getCandidateBarHeightAdjustment()I
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-result-object v0

    const-string v1, "candidate_bar_height"

    .line 667
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getSize(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeDockedKeyboard()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 626
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 627
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 628
    .local v2, "endPosition":Landroid/graphics/PointF;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->startAnimation(Landroid/graphics/PointF;)V

    .line 630
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 632
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 631
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 638
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 640
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v0, v3

    .line 642
    .local v0, "containerMargin":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 643
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    add-int v1, v0, v3

    .line 645
    .local v1, "containerMarginXAdjusted":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setMoveKeyboardEnabled(Z)V

    .line 646
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    .line 647
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->getCandidateBarHeightAdjustment()I

    move-result v6

    add-int/2addr v6, v0

    invoke-direct {v5, v1, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 646
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 649
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->initMoreCandidatesPopup(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 652
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationX(F)V

    .line 653
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationY(F)V

    .line 654
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setSplit(Z)V

    .line 656
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 659
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    .line 660
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    move-result-object v4

    .line 659
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/KeyboardPositionConverter;->toKeyboardSliderKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    move-result-object v4

    .line 658
    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setKeyboardPosition(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;)V

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setCandidateViewHeight(I)V

    .line 663
    return-void

    .line 634
    .end local v0    # "containerMargin":I
    .end local v1    # "containerMarginXAdjusted":I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 635
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 634
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private initializeFullscreenKeyboard()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 777
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 784
    .local v0, "contentFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 786
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setSplit(Z)V

    .line 788
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 789
    .local v1, "keyboardViewLocationInWindow":[I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 790
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 791
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 790
    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 794
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 795
    .local v2, "keyboardViewY":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    aget v5, v1, v7

    invoke-direct {v4, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->initMoreCandidatesPopup(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 798
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setCandidateViewHeight(I)V

    .line 799
    return-void
.end method

.method private initializeMiniFloatingKeyboard()V
    .locals 9

    .prologue
    .line 710
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingMiniRelativePosition()Landroid/graphics/PointF;

    move-result-object v1

    .line 711
    .local v1, "relativePosition":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->capRelativePosition(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 712
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 714
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v5

    .line 713
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->getScreenPositionFromRelativePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v2

    .line 715
    .local v2, "screenPosition":Landroid/graphics/PointF;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->startAnimation(Landroid/graphics/PointF;)V

    .line 716
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1800(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/PointF;)V

    .line 718
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v0, v3

    .line 721
    .local v0, "containerMargin":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationX(F)V

    .line 722
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationY(F)V

    .line 723
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setSplit(Z)V

    .line 724
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->requestLayout()V

    .line 726
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setMoveKeyboardEnabled(Z)V

    .line 727
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 728
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 729
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    .line 730
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->getCandidateBarHeightAdjustment()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 727
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 731
    return-void
.end method

.method private initializeSplitFloatingKeyboard()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 739
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingMiniRelativePosition()Landroid/graphics/PointF;

    move-result-object v1

    .line 741
    .local v1, "relativePosition":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->capRelativePosition(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 742
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 744
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v5

    .line 743
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->getScreenPositionFromRelativePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v2

    .line 745
    .local v2, "screenPosition":Landroid/graphics/PointF;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->startAnimation(Landroid/graphics/PointF;)V

    .line 747
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 748
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 750
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v0, v3

    .line 752
    .local v0, "containerMargin":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationX(F)V

    .line 753
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setTranslationY(F)V

    .line 754
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setSplit(Z)V

    .line 756
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setMoveKeyboardEnabled(Z)V

    .line 757
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 758
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 759
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    .line 760
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->getCandidateBarHeightAdjustment()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 757
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V

    .line 762
    return-void
.end method

.method private startAnimation(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "endPosition"    # Landroid/graphics/PointF;

    .prologue
    .line 671
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 672
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 673
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 674
    .local v0, "startPosition":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/IKeyboardModeAnimator;->startAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 680
    .end local v0    # "startPosition":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 804
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 806
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v5

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 807
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1900(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isPredictionActivated()Z

    move-result v6

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 808
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 806
    :goto_0
    invoke-virtual {v4, v5, v6, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->setKeyboardMode(Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;ZZ)V

    .line 810
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0900ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 812
    .local v0, "keyboardPlacementTopMargin":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getShadowPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 814
    .local v1, "shadowPadding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 815
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 816
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1000(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 817
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-direct {v4, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1702(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 819
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->cancel()V

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->initializeFullscreenKeyboard()V

    .line 845
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-boolean v3, v2, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->mKeyboardInitialized:Z

    .line 846
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->requestLayout()V

    .line 847
    return-void

    .line 808
    .end local v0    # "keyboardPlacementTopMargin":I
    .end local v1    # "shadowPadding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 826
    .restart local v0    # "keyboardPlacementTopMargin":I
    .restart local v1    # "shadowPadding":Landroid/graphics/Rect;
    :cond_2
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$main$FloatingKeyboardMode:[I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 841
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Encountered unexpected display mode."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 828
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->initializeDockedKeyboard()V

    goto :goto_1

    .line 832
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->initializeMiniFloatingKeyboard()V

    goto :goto_1

    .line 836
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$DeferredInitializer;->initializeSplitFloatingKeyboard()V

    goto :goto_1

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
