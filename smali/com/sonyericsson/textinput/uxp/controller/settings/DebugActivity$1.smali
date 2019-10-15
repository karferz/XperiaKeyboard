.class Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/DebugActivity;->finish()V

    .line 28
    return-void
.end method
