.class public Lcom/sonyericsson/ned/model/database/CUnicodeOracle$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CUnicodeOracle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/model/database/CUnicodeOracle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 131
    const-class v0, Lcom/sonyericsson/ned/model/database/CUnicodeOracle;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 132
    const-string v0, "character-specification"

    const-string v1, "unicode-5.0"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/ned/model/database/CUnicodeOracle$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    return-void
.end method
