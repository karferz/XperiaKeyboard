.class public final enum Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
.super Ljava/lang/Enum;
.source "IWordSuggesterListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

.field public static final enum AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

.field public static final enum AUTO_DUE_TO_SPACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

.field public static final enum MANUAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

.field public static final enum NO_SPACE_AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

.field public static final enum UNKNOWN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->UNKNOWN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->MANUAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const-string v1, "AUTO_DUE_TO_SPACE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO_DUE_TO_SPACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    const-string v1, "NO_SPACE_AUTO"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->NO_SPACE_AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->UNKNOWN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->MANUAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->AUTO_DUE_TO_SPACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->NO_SPACE_AUTO:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->$VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->$VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    return-object v0
.end method
