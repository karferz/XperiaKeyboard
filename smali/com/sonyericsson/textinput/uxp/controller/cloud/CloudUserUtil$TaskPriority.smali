.class final enum Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;
.super Ljava/lang/Enum;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TaskPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

.field public static final enum HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

.field public static final enum LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

.field public static final enum MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 438
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    .line 437
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

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
    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    return-object v0
.end method
