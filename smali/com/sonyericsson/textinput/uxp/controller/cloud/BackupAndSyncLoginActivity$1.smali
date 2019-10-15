.class Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;
.super Ljava/lang/Object;
.source "BackupAndSyncLoginActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$ICloudTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->requestCloudAccessToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudTaskResult(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->finish()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;->access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;)V

    goto :goto_0
.end method
