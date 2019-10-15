.class Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;
.super Ljava/lang/Object;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskDescription"
.end annotation


# instance fields
.field mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

.field mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;)V
    .locals 0
    .param p1, "taskType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    .param p2, "taskPriority"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    .line 467
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskDescription;->mPriority:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    .line 468
    return-void
.end method
