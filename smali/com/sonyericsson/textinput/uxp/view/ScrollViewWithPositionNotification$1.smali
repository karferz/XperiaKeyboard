.class Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;
.super Ljava/lang/Object;
.source "ScrollViewWithPositionNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->setScrollBottomChangeListener(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->access$000(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->access$000(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    .line 54
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->access$100(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->access$200(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;)Z

    move-result v3

    .line 53
    invoke-interface {v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$IScrollBottomChangeListener;->onScrollBottomChange(ZZ)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->access$102(Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;Z)Z

    .line 57
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
