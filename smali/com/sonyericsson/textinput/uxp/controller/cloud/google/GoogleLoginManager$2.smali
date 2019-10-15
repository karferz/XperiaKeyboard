.class Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$2;
.super Ljava/lang/Object;
.source "GoogleLoginManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->handleUserRecoverableError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->access$700(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    move-result-object v0

    const-string v1, "Operation canceled: The user canceled the process"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    .line 348
    return-void
.end method
