.class final Lcom/touchtype_fluency/util/i;
.super Lcom/touchtype_fluency/util/k;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/touchtype_fluency/util/i$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/i$1;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/i;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/touchtype_fluency/util/i$2;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/i$2;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/i;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/touchtype_fluency/util/l;

    sget-object v1, Lcom/touchtype_fluency/util/i;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/l;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/touchtype_fluency/util/k;-><init>(Lcom/touchtype_fluency/util/l;Ljava/util/Map;I)V

    .line 277
    return-void
.end method

.method static a()Lcom/touchtype_fluency/util/i;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/touchtype_fluency/util/i;

    sget-object v1, Lcom/touchtype_fluency/util/i;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/i;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
