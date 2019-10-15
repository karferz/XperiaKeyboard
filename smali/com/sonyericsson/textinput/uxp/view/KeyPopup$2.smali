.class Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;
.super Ljava/lang/Object;
.source "KeyPopup.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->showOnScreen(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 710
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$200(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$100(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$300(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$300(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$400(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$400(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopup;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->HIDDEN:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup;->access$502(Lcom/sonyericsson/textinput/uxp/view/KeyPopup;Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .line 718
    return-void
.end method
