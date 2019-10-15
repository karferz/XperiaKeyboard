.class public Lcom/touchtype_fluency/CodepointRange;
.super Ljava/lang/Object;
.source "CodepointRange.java"


# static fields
.field public static final emojiRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/CodepointRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final hangulJamoCompatibilityRange:Lcom/touchtype_fluency/CodepointRange;

.field public static final hangulJamoRange:Lcom/touchtype_fluency/CodepointRange;

.field public static final hiraganaRange:Lcom/touchtype_fluency/CodepointRange;

.field public static final thaiRange:Lcom/touchtype_fluency/CodepointRange;


# instance fields
.field private final begin:I

.field private final end:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/touchtype_fluency/CodepointRange;

    const/4 v1, 0x0

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const/16 v3, 0x2600

    const/16 v4, 0x26ff

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f300

    const v4, 0x1f5ff

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f600

    const v4, 0x1f64f

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f680

    const v4, 0x1f6ff

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f910

    const v4, 0x1f95e

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f980

    const v4, 0x1f991

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/touchtype_fluency/CodepointRange;

    const v3, 0x1f9c0

    const v4, 0x1f9c1

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/CodepointRange;->emojiRanges:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/touchtype_fluency/CodepointRange;

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    sput-object v0, Lcom/touchtype_fluency/CodepointRange;->thaiRange:Lcom/touchtype_fluency/CodepointRange;

    .line 56
    new-instance v0, Lcom/touchtype_fluency/CodepointRange;

    const/16 v1, 0x3040

    const/16 v2, 0x309f

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    sput-object v0, Lcom/touchtype_fluency/CodepointRange;->hiraganaRange:Lcom/touchtype_fluency/CodepointRange;

    .line 57
    new-instance v0, Lcom/touchtype_fluency/CodepointRange;

    const/16 v1, 0x1100

    const/16 v2, 0x11ff

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    sput-object v0, Lcom/touchtype_fluency/CodepointRange;->hangulJamoRange:Lcom/touchtype_fluency/CodepointRange;

    .line 58
    new-instance v0, Lcom/touchtype_fluency/CodepointRange;

    const/16 v1, 0x3130

    const/16 v2, 0x318f

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    sput-object v0, Lcom/touchtype_fluency/CodepointRange;->hangulJamoCompatibilityRange:Lcom/touchtype_fluency/CodepointRange;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/touchtype_fluency/CodepointRange;->begin:I

    .line 41
    iput p2, p0, Lcom/touchtype_fluency/CodepointRange;->end:I

    .line 42
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/touchtype_fluency/CodepointRange;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 24
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to construct a CodepointRange from string: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " code points, must be exactly one code point long"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 31
    new-instance v1, Lcom/touchtype_fluency/CodepointRange;

    invoke-direct {v1, v0, v0}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/touchtype_fluency/CodepointRange;->begin:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/touchtype_fluency/CodepointRange;->end:I

    return v0
.end method
