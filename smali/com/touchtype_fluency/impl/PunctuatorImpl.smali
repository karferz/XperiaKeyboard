.class public Lcom/touchtype_fluency/impl/PunctuatorImpl;
.super Ljava/lang/Object;
.source "PunctuatorImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/Punctuator;


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/impl/PunctuatorImpl;->peer:J

    return-void
.end method

.method private native getPredictionTriggerString()Ljava/lang/String;
.end method

.method private inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native punctuateInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method


# virtual methods
.method public addRules(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/impl/PunctuatorImpl;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/impl/PunctuatorImpl;->addRules(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public native addRules(Ljava/lang/String;)V
.end method

.method public native addRulesFromFile(Ljava/lang/String;)V
.end method

.method public native dispose()V
.end method

.method public getPredictionTrigger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/touchtype_fluency/impl/PunctuatorImpl;->getPredictionTriggerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getWordSeparator(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public punctuate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/touchtype_fluency/Punctuator$Action;
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/impl/PunctuatorImpl;->punctuateInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 31
    array-length v0, v1

    new-array v2, v0, [Lcom/touchtype_fluency/Punctuator$Action;

    .line 33
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 34
    invoke-static {}, Lcom/touchtype_fluency/Punctuator$Action;->values()[Lcom/touchtype_fluency/Punctuator$Action;

    move-result-object v3

    aget v4, v1, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-object v2
.end method

.method public native removeRulesWithID(Ljava/lang/String;)V
.end method

.method public native resetRules()V
.end method
