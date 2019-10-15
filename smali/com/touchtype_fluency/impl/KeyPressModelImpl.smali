.class public Lcom/touchtype_fluency/impl/KeyPressModelImpl;
.super Ljava/lang/Object;
.source "KeyPressModelImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/KeyPressModel;


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/impl/KeyPressModelImpl;->peer:J

    return-void
.end method


# virtual methods
.method public native addTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native closestKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native dispose()V
.end method

.method public native getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public native loadFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;
.end method

.method public native removeAllTags()V
.end method

.method public native removeTag(Ljava/lang/String;)V
.end method

.method public native reset()V
.end method

.method public native saveFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/FileNotWritableException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native set()V
.end method

.method public native setKeys(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native updateKeyCharacters([Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native updateKeyShape(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
