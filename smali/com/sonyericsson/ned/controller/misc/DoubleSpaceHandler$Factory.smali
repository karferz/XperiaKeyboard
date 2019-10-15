.class public Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "DoubleSpaceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 316
    const-class v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;

    invoke-static {}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 317
    const-string v0, "auto-replace-text"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 318
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;-><init>()V

    return-object v0
.end method
