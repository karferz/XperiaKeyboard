.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagePackConfigurationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    return-void
.end method


# virtual methods
.method public onLanguagePacksConfigured(Z)V
    .locals 5
    .param p1, "isSuccess"    # Z

    .prologue
    .line 929
    if-eqz p1, :cond_0

    .line 930
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/List;)V

    .line 942
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 933
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 934
    .local v1, "failedDownloads":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 935
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;->access$200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->USER_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 937
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-static {v4, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    goto :goto_1

    .line 940
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;"
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method
