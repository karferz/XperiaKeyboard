.class public final enum Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;
.super Ljava/lang/Enum;
.source "ResultsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/ResultsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictionSearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum CANGJIE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum JAPANESE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum PINYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum STROKE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field public static final enum ZHUYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 114
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "PINYIN"

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->PINYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 119
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "ZHUYIN"

    invoke-direct {v0, v1, v5}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->ZHUYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 124
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "CANGJIE"

    invoke-direct {v0, v1, v6}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->CANGJIE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 128
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "STROKE"

    invoke-direct {v0, v1, v7}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->STROKE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 132
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    const-string v1, "JAPANESE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->JAPANESE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->PINYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->ZHUYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->CANGJIE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->STROKE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->JAPANESE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->$VALUES:[Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-virtual {v0}, [Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    return-object v0
.end method
