.class final Lcom/touchtype_fluency/util/SwiftKeySession$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic d:Lcom/touchtype_fluency/util/CompletionListener;

.field private synthetic e:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p5, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->d:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 555
    const/4 v0, 0x1

    .line 556
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 557
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->a:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 558
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 559
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v5, v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 560
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preempted before removing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 578
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v5, v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 579
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preempted before adding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->d:Lcom/touchtype_fluency/util/CompletionListener;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->d:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 598
    :cond_3
    return-void

    .line 565
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->b:Ljava/util/List;

    invoke-static {v5, v0, v6, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " not unloaded"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 573
    goto/16 :goto_0

    .line 571
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " not unloaded"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 574
    goto/16 :goto_0

    .line 582
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 583
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1, v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 584
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    move v1, v2

    .line 585
    goto/16 :goto_2

    .line 589
    :cond_6
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$6;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-static {v0, v1, v2, v2, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z

    move-result v1

    goto/16 :goto_2

    :cond_7
    move v1, v0

    goto/16 :goto_1
.end method
