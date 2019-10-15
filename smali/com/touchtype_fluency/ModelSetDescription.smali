.class public Lcom/touchtype_fluency/ModelSetDescription;
.super Ljava/lang/Object;
.source "ModelSetDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/ModelSetDescription$Type;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 206
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-wide p1, p0, Lcom/touchtype_fluency/ModelSetDescription;->peer:J

    .line 203
    return-void
.end method

.method private native destroyPeer()V
.end method

.method public static native dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;
.end method

.method public static dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "dynamic.lm"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    return-object v0
.end method

.method public static native dynamicWithFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native isEqualTo(Lcom/touchtype_fluency/ModelSetDescription;)Z
.end method

.method public static merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/CountOverflowException;
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/touchtype_fluency/Trainer$ModelFileVersion;->Latest_Version:Lcom/touchtype_fluency/Trainer$ModelFileVersion;

    invoke-static {p0, p1, p2, v0}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    return-object v0
.end method

.method public static native merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)Lcom/touchtype_fluency/ModelSetDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/touchtype_fluency/CountOverflowException;
        }
    .end annotation
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 184
    instance-of v0, p1, Lcom/touchtype_fluency/ModelSetDescription;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lcom/touchtype_fluency/ModelSetDescription;

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/ModelSetDescription;->isEqualTo(Lcom/touchtype_fluency/ModelSetDescription;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/touchtype_fluency/ModelSetDescription;->destroyPeer()V

    .line 197
    return-void
.end method

.method public native getUserTags()[Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public native toString()Ljava/lang/String;
.end method
