.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$100(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$102(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Z)Z

    .line 254
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 259
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 245
    return-void
.end method
