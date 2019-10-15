.class final Lcom/touchtype_fluency/util/SwiftKeySession$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->updateLiveLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic b:Lcom/touchtype_fluency/util/CompletionListener;

.field private synthetic c:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->b:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->b:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$7;->b:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-interface {v0, v4}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    goto :goto_0
.end method
