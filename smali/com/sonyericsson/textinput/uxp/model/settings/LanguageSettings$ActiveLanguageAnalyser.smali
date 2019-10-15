.class Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;
.super Ljava/lang/Object;
.source "LanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveLanguageAnalyser"
.end annotation


# instance fields
.field private mActivateLatinLanguageWithIdenticalLayout:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueNumberOfActiveLatinLayouts:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V
    .locals 1

    .prologue
    .line 561
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mUniqueNumberOfActiveLatinLayouts:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$1;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V

    return-void
.end method

.method private getLanguageWithIdenticalLayout(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "languageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 612
    :try_start_0
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 613
    .local v6, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 614
    .local v1, "entryOuter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 615
    .local v3, "languageIso3Outer":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 616
    .local v5, "layoutIdOuter":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 617
    .local v0, "entryInner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 618
    .local v2, "languageIso3Inner":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 619
    .local v4, "layoutIdInner":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v4, :cond_1

    .line 621
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 622
    invoke-virtual {v6, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 627
    .end local v0    # "entryInner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entryOuter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "languageIso3Inner":Ljava/lang/String;
    .end local v3    # "languageIso3Outer":Ljava/lang/String;
    .end local v4    # "layoutIdInner":Ljava/lang/String;
    .end local v5    # "layoutIdOuter":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 626
    .restart local v6    # "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6
.end method

.method private populateAndReturnLayoutMap(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "layoutIdNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 704
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 705
    .local v1, "selectableLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 706
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 708
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActivateLatinLanguageWithIdenticalLayout:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getLanguageWithIdenticalLayout(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActivateLatinLanguageWithIdenticalLayout:Ljava/util/LinkedHashMap;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActivateLatinLanguageWithIdenticalLayout:Ljava/util/LinkedHashMap;

    monitor-exit v1

    return-object v0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 582
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_1

    .line 583
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 584
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 585
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    .local v1, "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    .local v2, "layoutId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 588
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-static {v1, v5}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 589
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 594
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "layoutId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 593
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getSelectableLayouts(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 12
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 648
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 651
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v2, "layoutIdNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isBulgarian(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 655
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 656
    .local v0, "activeLanguage":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v5

    .line 657
    invoke-interface {v5, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 656
    array-length v9, v8

    move v5, v4

    :goto_0
    if-ge v5, v9, :cond_0

    aget-object v1, v8, v5

    .line 658
    .local v1, "layoutId":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 659
    invoke-static {v10}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 658
    invoke-static {v0, v10}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "virtual-12key"

    .line 660
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 662
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 663
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v11

    .line 664
    invoke-interface {v11, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 669
    .end local v0    # "activeLanguage":Ljava/lang/String;
    .end local v1    # "layoutId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    .line 670
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getUsedLatinLanguageLayouts()Ljava/util/Set;

    move-result-object v3

    .line 671
    .local v3, "usedLatinLanguageLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 672
    .restart local v1    # "layoutId":Ljava/lang/String;
    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 673
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 698
    .end local v1    # "layoutId":Ljava/lang/String;
    .end local v2    # "layoutIdNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "usedLatinLanguageLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 678
    .restart local v2    # "layoutIdNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v5

    .line 679
    invoke-interface {v5, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 678
    array-length v7, v5

    :goto_2
    if-ge v4, v7, :cond_5

    aget-object v1, v5, v4

    .line 680
    .restart local v1    # "layoutId":Ljava/lang/String;
    const-string v8, "virtual-12key"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 682
    new-instance v8, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 683
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-result-object v9

    .line 684
    invoke-interface {v9, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 690
    .end local v1    # "layoutId":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 697
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->populateAndReturnLayoutMap(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public getUniqueNumberOfActiveLatinLayouts()I
    .locals 7

    .prologue
    .line 631
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 632
    :try_start_0
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mUniqueNumberOfActiveLatinLayouts:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 635
    .local v0, "activeLatinLanguageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 636
    .local v3, "uniqueLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    .local v2, "layout":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    .end local v0    # "activeLatinLanguageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "layout":Ljava/lang/String;
    .end local v3    # "uniqueLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 640
    .restart local v0    # "activeLatinLanguageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "uniqueLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mUniqueNumberOfActiveLatinLayouts:I

    .line 642
    .end local v0    # "activeLatinLanguageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "uniqueLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mUniqueNumberOfActiveLatinLayouts:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 573
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActiveLatinLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mActivateLatinLanguageWithIdenticalLayout:Ljava/util/LinkedHashMap;

    .line 575
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->mUniqueNumberOfActiveLatinLayouts:I

    .line 576
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
