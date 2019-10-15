.class public Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CStaticTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 41
    const-string v0, "multitap-preedit-timeout"

    const-string v1, "800"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;

    const-string v1, "multitap-preedit-timeout"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;-><init>(J)V

    return-object v0
.end method
