.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;
.super Ljava/lang/Object;
.source "KeyboardSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$1;

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$300(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;->ENABLED:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatus;

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$800(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider$ButtonClickListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;)V

    goto :goto_0
.end method
