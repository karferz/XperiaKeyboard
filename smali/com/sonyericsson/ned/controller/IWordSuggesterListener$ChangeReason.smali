.class public final enum Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
.super Ljava/lang/Enum;
.source "IWordSuggesterListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum AUTO_SELECT:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum EXTERNAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum NEXT_WORDS:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum SINGLETAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum TAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field public static final enum UNDEFINED:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "SINGLETAP"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->SINGLETAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "REOPEN"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "NEXT_WORDS"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->NEXT_WORDS:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "AUTO_SELECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->AUTO_SELECT:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "EXTERNAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->EXTERNAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    new-instance v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->UNDEFINED:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->TRACE:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->SINGLETAP:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->REOPEN:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->NEXT_WORDS:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->AUTO_SELECT:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->EXTERNAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->UNDEFINED:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->$VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->$VALUES:[Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    return-object v0
.end method
