.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyboardSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->onEnabledStatusChanged(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$DimmerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->removeView(Landroid/view/View;)V

    .line 592
    return-void
.end method
