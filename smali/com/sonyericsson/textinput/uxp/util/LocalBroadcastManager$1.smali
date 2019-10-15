.class Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$1;->this$0:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->access$000(Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
