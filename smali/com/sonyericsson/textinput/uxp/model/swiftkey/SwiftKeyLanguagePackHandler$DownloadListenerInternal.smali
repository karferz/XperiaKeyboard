.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"

# interfaces
.implements Lcom/touchtype_fluency/util/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadListenerInternal"
.end annotation


# static fields
.field private static final STORAGE_THRESHOLD:I


# instance fields
.field private final mDownloadFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

.field private mHasRetriedFailedDownloadOnce:Z

.field private final mLanguageIso3:Ljava/lang/String;

.field private final mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1
    .param p2, "downloadFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .param p3, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mDownloadFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    .line 956
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    .line 958
    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    return-object v0
.end method

.method private nukingLanguagePackFile()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    move-result-object v0

    const-string v1, "DownloadFailure3"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->nukeLanguagePackFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mHasRetriedFailedDownloadOnce:Z

    .line 1076
    :cond_0
    return-void
.end method

.method private onComplete(ZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cancelled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 990
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mDownloadFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->USER_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 997
    if-eqz p1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->setDoesDictionaryNeedReloadDueToUserDownloadCompleted(Z)V

    .line 1039
    :cond_1
    :goto_0
    if-eqz p1, :cond_8

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->markDictionaryAsUnpacked(Ljava/lang/String;)V

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->removeWaitingForDownloadDictionary(Ljava/lang/String;)V

    .line 1050
    :goto_1
    return-void

    .line 999
    :cond_3
    if-nez p2, :cond_1

    .line 1001
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mHasRetriedFailedDownloadOnce:Z

    if-nez v1, :cond_4

    .line 1002
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mHasRetriedFailedDownloadOnce:Z

    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;)V

    const-string v2, "DownloadFailure1"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureForced(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->nukingLanguagePackFile()V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mHasRetriedFailedDownloadOnce:Z

    if-nez v1, :cond_6

    .line 1018
    if-nez p1, :cond_1

    .line 1019
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mHasRetriedFailedDownloadOnce:Z

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal$2;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;)V

    const-string v2, "DownloadFailure2"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureForced(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->nukingLanguagePackFile()V

    .line 1033
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mDownloadFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->AUTO_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    if-nez p1, :cond_7

    :goto_2
    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2102(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 1045
    :cond_8
    if-eqz p2, :cond_9

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    goto :goto_1

    .line 1048
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$2400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeWaitingForDownloadDictionary(Ljava/lang/String;)V
    .locals 4
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 1053
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1054
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 1055
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForWiFi()Ljava/util/Set;

    move-result-object v1

    .line 1056
    .local v1, "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 1058
    .local v2, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForWiFi(Ljava/util/Set;)V

    .line 1059
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1061
    .end local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 1062
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForNetwork()Ljava/util/Set;

    move-result-object v0

    .line 1063
    .local v0, "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 1065
    .restart local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForWiFi(Ljava/util/Set;)V

    .line 1066
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1069
    .end local v0    # "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    return-void
.end method


# virtual methods
.method public getInsufficientStorageThreshold()J
    .locals 2

    .prologue
    .line 962
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
    .locals 4
    .param p1, "downloadResult"    # Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 984
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->onComplete(ZZ)V

    .line 986
    return-void

    :cond_0
    move v0, v2

    .line 984
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onProgress(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 967
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguageIso3:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;II)V

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "downloadPercentage":I
    if-lez p2, :cond_0

    if-lez p1, :cond_0

    .line 971
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;I)V

    .line 976
    return-void
.end method
