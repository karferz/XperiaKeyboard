.class Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$4;
.super Ljava/lang/Object;
.source "KeyPopupAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->createHideAnimations(II)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->access$000(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;)Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;->onAnimationFinished()V

    .line 293
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 288
    return-void
.end method
