.class public final enum Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
.super Ljava/lang/Enum;
.source "CloudLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum CHECK_FOR_UPDATE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum GET_NP_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum LOGIN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field public static final enum NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "NOT_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->LOGIN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "CHECK_FOR_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->CHECK_FOR_UPDATE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "GET_NP_TICKET"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->GET_NP_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->NOT_CREATED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->LOGIN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->CHECK_FOR_UPDATE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->GET_NP_TICKET:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->FINISHED:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    return-object v0
.end method
