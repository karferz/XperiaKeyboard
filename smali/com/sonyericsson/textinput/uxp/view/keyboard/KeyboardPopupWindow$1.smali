.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->sendShownMeasurement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$008(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)I

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$000(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->access$002(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;I)I

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 188
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->stopMeasuring()V

    .line 190
    :cond_0
    return-void
.end method
