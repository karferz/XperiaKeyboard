.class public final enum Lcom/sonyericsson/ned/controller/EventBlockType;
.super Ljava/lang/Enum;
.source "EventBlockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/EventBlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/EventBlockType;

.field public static final enum BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

.field public static final enum BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v1, "BLOCK_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/EventBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 21
    new-instance v0, Lcom/sonyericsson/ned/controller/EventBlockType;

    const-string v1, "BLOCK_TYPE_PENDING_PREDICTIONS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/EventBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventBlockType;

    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->$VALUES:[Lcom/sonyericsson/ned/controller/EventBlockType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/EventBlockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/ned/controller/EventBlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/EventBlockType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/EventBlockType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->$VALUES:[Lcom/sonyericsson/ned/controller/EventBlockType;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/EventBlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventBlockType;

    return-object v0
.end method
