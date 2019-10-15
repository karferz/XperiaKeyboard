.class final enum Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;
.super Ljava/lang/Enum;
.source "CPredictedNextWordAdder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

.field public static final enum EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

.field public static final enum OTHER:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

.field public static final enum URI:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->OTHER:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    const-string v1, "URI"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->URI:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    .line 527
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->OTHER:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->EMAIL_ADDRESS:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->URI:Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->$VALUES:[Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

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
    .line 527
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 527
    const-class v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->$VALUES:[Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$FieldType;

    return-object v0
.end method
