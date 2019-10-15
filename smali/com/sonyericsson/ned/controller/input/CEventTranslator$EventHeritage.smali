.class Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
.super Ljava/lang/Object;
.source "CEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/input/CEventTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHeritage"
.end annotation


# instance fields
.field protected consumed:Z

.field protected events:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->events:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    .line 287
    return-void
.end method
