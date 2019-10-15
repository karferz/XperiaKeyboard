.class public final enum Lcom/sonyericsson/ned/controller/PredictionType;
.super Ljava/lang/Enum;
.source "PredictionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/PredictionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/PredictionType;

.field public static final enum DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

.field public static final enum NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

.field public static final enum REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

.field public static final enum TAP:Lcom/sonyericsson/ned/controller/PredictionType;

.field public static final enum TRACE:Lcom/sonyericsson/ned/controller/PredictionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/sonyericsson/ned/controller/PredictionType;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/PredictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 13
    new-instance v0, Lcom/sonyericsson/ned/controller/PredictionType;

    const-string v1, "NEXT_WORD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/PredictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 14
    new-instance v0, Lcom/sonyericsson/ned/controller/PredictionType;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/PredictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 15
    new-instance v0, Lcom/sonyericsson/ned/controller/PredictionType;

    const-string v1, "REOPEN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/ned/controller/PredictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 16
    new-instance v0, Lcom/sonyericsson/ned/controller/PredictionType;

    const-string v1, "DELETE_REOPEN"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/ned/controller/PredictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/PredictionType;

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TAP:Lcom/sonyericsson/ned/controller/PredictionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/ned/controller/PredictionType;->DELETE_REOPEN:Lcom/sonyericsson/ned/controller/PredictionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->$VALUES:[Lcom/sonyericsson/ned/controller/PredictionType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/PredictionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/PredictionType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/PredictionType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonyericsson/ned/controller/PredictionType;->$VALUES:[Lcom/sonyericsson/ned/controller/PredictionType;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/PredictionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/PredictionType;

    return-object v0
.end method
