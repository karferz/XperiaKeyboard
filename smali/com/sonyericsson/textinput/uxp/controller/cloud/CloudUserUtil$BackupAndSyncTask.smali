.class final enum Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
.super Ljava/lang/Enum;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BackupAndSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum CLEAR_SYNCED_USER_DATA:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum DELETE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum INIT:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum REFRESH_DEVICE_INFO:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum SYNC:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

.field public static final enum UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->INIT:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->SYNC:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "UNREGISTER_DEVICE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "UNREGISTER_USER"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "REFRESH_DEVICE_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->REFRESH_DEVICE_INFO:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    .line 434
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "CREATE_ACCESS_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    const-string v1, "CLEAR_SYNCED_USER_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CLEAR_SYNCED_USER_DATA:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    .line 432
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->INIT:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->SYNC:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->REFRESH_DEVICE_INFO:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CLEAR_SYNCED_USER_DATA:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 432
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    return-object v0
.end method
