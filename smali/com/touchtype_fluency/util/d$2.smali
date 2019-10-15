.class final Lcom/touchtype_fluency/util/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/d;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/Session;

.field private synthetic b:Lcom/touchtype_fluency/util/CompletionListener;

.field private synthetic c:Lcom/touchtype_fluency/util/d;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/touchtype_fluency/util/d$2;->c:Lcom/touchtype_fluency/util/d;

    iput-object p2, p0, Lcom/touchtype_fluency/util/d$2;->a:Lcom/touchtype_fluency/Session;

    iput-object p3, p0, Lcom/touchtype_fluency/util/d$2;->b:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$2;->c:Lcom/touchtype_fluency/util/d;

    invoke-static {v0}, Lcom/touchtype_fluency/util/d;->i(Lcom/touchtype_fluency/util/d;)V

    .line 382
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$2;->c:Lcom/touchtype_fluency/util/d;

    iget-object v1, p0, Lcom/touchtype_fluency/util/d$2;->a:Lcom/touchtype_fluency/Session;

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/Session;)Z

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/touchtype_fluency/util/d$2;->a:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->dispose()V

    .line 384
    iget-object v1, p0, Lcom/touchtype_fluency/util/d$2;->b:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 385
    return-void
.end method
