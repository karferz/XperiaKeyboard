.class public Lcom/sonyericsson/ned/controller/input/CEventTranslator$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/input/CEventTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 294
    const-class v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;

    invoke-static {}, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 295
    return-void
.end method
