.class final Lcom/touchtype_fluency/util/SwiftKeySession$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/Set;

.field private synthetic c:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic d:Lcom/touchtype_fluency/util/PreservationListener;

.field private synthetic e:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/Set;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p5, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->d:Lcom/touchtype_fluency/util/PreservationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0, v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preempted before removing all languages"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->d:Lcom/touchtype_fluency/util/PreservationListener;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->d:Lcom/touchtype_fluency/util/PreservationListener;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/util/PreservationListener;->onComplete(Ljava/util/List;)V

    .line 464
    :cond_2
    return-void

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 431
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 435
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 438
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1, v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preempted before removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->e:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySession$5;->c:Lcom/touchtype_fluency/util/LanguagePackManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6, p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 449
    :catch_0
    move-exception v1

    .line 451
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " not unloaded. Encountered IOException: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :catch_1
    move-exception v1

    .line 455
    invoke-static {}, Lcom/touchtype_fluency/util/SwiftKeySession;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " not unloaded. Encountered InvalidDataException: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/touchtype_fluency/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
