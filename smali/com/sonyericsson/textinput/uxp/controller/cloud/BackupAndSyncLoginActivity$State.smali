.class final enum Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
.super Ljava/lang/Enum;
.source "BackupAndSyncLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum CHECK_PERMISSIONS:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum CONNECT_AND_GET_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum NPAM_AUTHENTICATING:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum REQUEST_CLOUD_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum SHOWING_FAILURE_DIALOG:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum SHOWING_GOOGLE_PLAY:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

.field public static final enum SHOWING_TERMS_AND_LOGIN_SELECTOR:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 436
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "SHOWING_TERMS_AND_LOGIN_SELECTOR"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_TERMS_AND_LOGIN_SELECTOR:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "SHOWING_FAILURE_DIALOG"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_FAILURE_DIALOG:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 437
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "SHOWING_GOOGLE_PLAY"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_GOOGLE_PLAY:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "CONNECT_AND_GET_TICKET"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CONNECT_AND_GET_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "REQUEST_CLOUD_ACCESS_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->REQUEST_CLOUD_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "FINISHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 438
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "CHECK_PERMISSIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CHECK_PERMISSIONS:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    const-string v1, "NPAM_AUTHENTICATING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->NPAM_AUTHENTICATING:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    .line 435
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_TERMS_AND_LOGIN_SELECTOR:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_FAILURE_DIALOG:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->SHOWING_GOOGLE_PLAY:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CONNECT_AND_GET_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->REQUEST_CLOUD_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->CHECK_PERMISSIONS:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->NPAM_AUTHENTICATING:Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

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
    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 435
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity$State;

    return-object v0
.end method
