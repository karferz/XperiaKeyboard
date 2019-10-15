.class Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;
.super Landroid/widget/FrameLayout;
.source "KeyboardModeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;->createFrameLayoutWithListener(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

.field final synthetic val$animationLifeCycleListener:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;->val$animationLifeCycleListener:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;->val$animationLifeCycleListener:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;->onPreAnimationEnd()V

    .line 461
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$KeyboardSubAnimation$1;->val$animationLifeCycleListener:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/AnimationLifeCycleListener;->onPostAnimationEnd()V

    .line 463
    return-void
.end method
