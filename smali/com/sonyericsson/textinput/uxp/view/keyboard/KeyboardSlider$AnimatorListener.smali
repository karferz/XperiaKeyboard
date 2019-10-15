.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;
.super Ljava/lang/Object;
.source "KeyboardSlider.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mConcurrentAnimationCounter:I

.field private mStartTranslationX:F

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 1

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    return-void
.end method

.method private fireOnUpdate()V
    .locals 4

    .prologue
    .line 713
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getTranslationX()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mStartTranslationX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 716
    .local v0, "horizontalChange":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;

    .line 717
    .local v1, "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;->onKeyboardPositionUpdate(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardPosition;I)V

    goto :goto_0

    .line 719
    .end local v1    # "slideListener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$KeyboardSliderListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 742
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 732
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    .line 734
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    if-nez v0, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->fireOnUpdate()V

    .line 737
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 747
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 723
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    .line 725
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mConcurrentAnimationCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$AnimatorListener;->mStartTranslationX:F

    .line 728
    :cond_0
    return-void
.end method
