.class public final enum Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/RefreshListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

.field public static final enum FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

.field public static final enum NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

.field public static final enum STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

.field public static final enum SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

.field private static final synthetic a:[Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .line 18
    new-instance v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    const-string v1, "NO_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .line 22
    new-instance v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    const-string v1, "CONFIG_FILE_INVALID"

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .line 26
    new-instance v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    const-string v1, "STORAGE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .line 30
    new-instance v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->a:[Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->a:[Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v0}, [Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    return-object v0
.end method
