.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->checkForDictionaryUpdates(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

.field final synthetic val$activeLanguageDisplayNames:Ljava/util/HashMap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$languageUpdateNotifications:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$languageUpdateNotifications:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$activeLanguageDisplayNames:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLanguageUpdateNotification(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "languagesToDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 844
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07005d

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$activeLanguageDisplayNames:Ljava/util/HashMap;

    .line 847
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 846
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 845
    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "text":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->newIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v4

    .line 852
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 853
    const-string v0, "notification-start"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$context:Landroid/content/Context;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    const v6, 0x7f0200a9

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createAndSendNotification(Landroid/content/Context;IILjava/lang/CharSequence;Landroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;IZ)V

    .line 857
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 858
    return-void

    .line 845
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$context:Landroid/content/Context;

    .line 848
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private shouldShowLanguageUpdateNotification(Ljava/util/HashMap;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 5
    .param p3, "languagePackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "languageUpdateNotifications":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "activeLanguageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 832
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v2

    .line 835
    :cond_1
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "languageIso3":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 838
    .local v1, "languageUpdateNotificationCount":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onLanguagePacksConfigured(Z)V
    .locals 11
    .param p1, "isSuccess"    # Z

    .prologue
    .line 796
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v8

    .line 797
    invoke-interface {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    move-result-object v1

    .line 798
    .local v1, "autoDictionaryUpdateMode":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
    sget-object v8, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    if-eq v1, v8, :cond_1

    const/4 v2, 0x1

    .line 801
    .local v2, "autoUpdateActive":Z
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 802
    .local v3, "availableUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 803
    .local v0, "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 804
    .local v7, "languagesToDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v4

    .line 805
    .local v4, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    .line 806
    .local v5, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 807
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v6

    .line 808
    .local v6, "languagePackId":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    if-nez v2, :cond_0

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$languageUpdateNotifications:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->val$activeLanguageDisplayNames:Ljava/util/HashMap;

    .line 811
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 810
    invoke-direct {p0, v9, v10, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->shouldShowLanguageUpdateNotification(Ljava/util/HashMap;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 812
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 813
    invoke-interface {v4, v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->increaseDictionaryUpdateNotificationCount(Ljava/lang/String;)V

    goto :goto_1

    .line 798
    .end local v0    # "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v2    # "autoUpdateActive":Z
    .end local v3    # "availableUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v5    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v6    # "languagePackId":Ljava/lang/String;
    .end local v7    # "languagesToDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 819
    .restart local v0    # "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .restart local v2    # "autoUpdateActive":Z
    .restart local v3    # "availableUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .restart local v7    # "languagesToDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 821
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v8, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V

    .line 823
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v2, :cond_3

    .line 824
    invoke-direct {p0, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;->createLanguageUpdateNotification(Ljava/util/Set;)V

    .line 826
    :cond_3
    return-void
.end method
