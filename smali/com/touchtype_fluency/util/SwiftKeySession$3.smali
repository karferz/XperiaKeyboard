.class final Lcom/touchtype_fluency/util/SwiftKeySession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/LanguagePack;

.field private synthetic b:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic c:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->a:Lcom/touchtype_fluency/util/LanguagePack;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->b:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->a:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v0

    .line 265
    if-nez v0, :cond_2

    .line 266
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->b:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->a:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 275
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->a:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v1, v2, v0}, Lcom/touchtype_fluency/util/LoadProgressListener;->onLoaded(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 279
    return-void

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->c(Lcom/touchtype_fluency/util/SwiftKeySession;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->a:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->c:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2, v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 271
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$3;->b:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V

    goto :goto_0
.end method
