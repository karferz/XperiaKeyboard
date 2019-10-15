.class Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;
.super Ljava/lang/Object;
.source "ScrollViewWithPositionNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->scrollToBottom()V
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
    .line 133
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/ScrollViewWithPositionNotification;->smoothScrollTo(II)V

    .line 137
    return-void
.end method
