.class final Lcom/touchtype_fluency/Prediction$Cache;
.super Ljava/lang/Object;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Cache"
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private input:Ljava/lang/String;

.field private prediction:Ljava/lang/String;

.field private separators:[Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private termBreaks:[Ljava/lang/Integer;

.field private terms:[Lcom/touchtype_fluency/Term;

.field final synthetic this$0:Lcom/touchtype_fluency/Prediction;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/Prediction;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->this$0:Lcom/touchtype_fluency/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->prediction:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->separators:[Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->terms:[Lcom/touchtype_fluency/Term;

    .line 278
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->termBreaks:[Ljava/lang/Integer;

    .line 279
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->tags:Ljava/util/Set;

    .line 280
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->input:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->encoding:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->source:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->version:Ljava/lang/String;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->prediction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->prediction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->separators:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/touchtype_fluency/Prediction$Cache;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->separators:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/touchtype_fluency/Prediction$Cache;)[Lcom/touchtype_fluency/Term;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->terms:[Lcom/touchtype_fluency/Term;

    return-object v0
.end method

.method static synthetic access$202(Lcom/touchtype_fluency/Prediction$Cache;[Lcom/touchtype_fluency/Term;)[Lcom/touchtype_fluency/Term;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->terms:[Lcom/touchtype_fluency/Term;

    return-object p1
.end method

.method static synthetic access$300(Lcom/touchtype_fluency/Prediction$Cache;)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->termBreaks:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/touchtype_fluency/Prediction$Cache;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->termBreaks:[Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->input:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->input:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->encoding:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->source:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/touchtype_fluency/Prediction$Cache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/touchtype_fluency/Prediction$Cache;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/touchtype_fluency/Prediction$Cache;->tags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$802(Lcom/touchtype_fluency/Prediction$Cache;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/touchtype_fluency/Prediction$Cache;->tags:Ljava/util/Set;

    return-object p1
.end method
