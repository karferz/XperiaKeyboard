.class Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;
.super Landroid/widget/FrameLayout;
.source "KeyboardModeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->onPreAnimationEnd()V

    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/KeyboardModeAnimation;->onPostAnimationEnd()V

    .line 194
    return-void
.end method
