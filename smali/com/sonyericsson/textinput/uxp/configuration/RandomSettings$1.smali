.class Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;
.super Ljava/lang/Object;
.source "RandomSettings.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

.field final synthetic val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDictionaryUpdateNotificationCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1089
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 929
    return-void
.end method

.method public increaseDictionaryUpdateNotificationCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1085
    return-void
.end method

.method public removePrimaryLanguageAndLayout()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public setActiveDaysBeforeCloud(I)V
    .locals 0
    .param p1, "mDaysActive"    # I

    .prologue
    .line 1009
    return-void
.end method

.method public setActiveDaysTimestamp(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 794
    return-void
.end method

.method public setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public setAutoAcceptHintCounter(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 924
    return-void
.end method

.method public setAutoDictionaryUpdateMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;)V
    .locals 0
    .param p1, "autoDictionaryUpdateMode"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1064
    return-void
.end method

.method public setAvailableDictionaryUpdates(Ljava/util/Set;)V
    .locals 0
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
    .line 1037
    .local p1, "availableUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public setBackupAndSync(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1000
    return-void
.end method

.method public setCloudAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "cloudAccessToken"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudAccessToken(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 1
    .param p1, "cloudLoginIdToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V

    .line 878
    return-void
.end method

.method public setCloudNudgeShown()V
    .locals 0

    .prologue
    .line 1013
    return-void
.end method

.method public setCloudSyncTryCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 1018
    return-void
.end method

.method public setCurrentNumberOfDevices(I)V
    .locals 1
    .param p1, "nbrOfDevices"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCurrentNumberOfDevices(I)V

    .line 893
    return-void
.end method

.method public setCurrentThemeInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    .locals 0
    .param p1, "themeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1082
    return-void
.end method

.method public setDaysActiveCounter(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 984
    return-void
.end method

.method public setDictionariesWaitingForNetwork(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 1059
    .local p1, "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public setDictionariesWaitingForWiFi(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 1054
    .local p1, "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public setFloatingKeyboardType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->access$100(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->access$002(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->access$102(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 947
    return-void
.end method

.method public setFloatingRelativePositionX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 972
    return-void
.end method

.method public setFloatingRelativePositionY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 976
    return-void
.end method

.method public setHasAgreedToDictionaryDownload(Z)V
    .locals 0
    .param p1, "agreed"    # Z

    .prologue
    .line 1041
    return-void
.end method

.method public setHasShownDictionaryDownloadDialog(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 1045
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 920
    return-void
.end method

.method public setInputMethodEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 916
    return-void
.end method

.method public setIsWaitForWifiCheckboxChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 1049
    return-void
.end method

.method public setKeyboardOpeningsCounter(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 988
    return-void
.end method

.method public setKeyboardOpeningsWithDiscontinuedNpamCounter(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 1101
    return-void
.end method

.method public setKeyboardResizeHeightPxCurrent(I)V
    .locals 0
    .param p1, "keyboardResizeHeightPxCurrent"    # I

    .prologue
    .line 963
    return-void
.end method

.method public setKeyboardResizeHeightPxPrevious(I)V
    .locals 1
    .param p1, "keyboardResizeHeightPxPrevious"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->access$202(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;I)I

    .line 968
    return-void
.end method

.method public setKeyboardSkin(Ljava/lang/String;)V
    .locals 0
    .param p1, "skin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1078
    return-void
.end method

.method public setLanguageToggleHintShown()V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public setLastBackupTimeDynamicModel(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastBackupTimeDynamicModel(J)V

    .line 888
    return-void
.end method

.method public setLastDictionaryListRefreshTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListRefreshTime(J)V

    .line 1069
    return-void
.end method

.method public setLastDictionaryListVerifyTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListVerifyTime(J)V

    .line 1074
    return-void
.end method

.method public setLastSnapshotActiveDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 1097
    return-void
.end method

.method public setLastSyncTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 868
    return-void
.end method

.method public setLastTimeCloudAccessTokenRenewed(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastTimeCloudAccessTokenRenewed(J)V

    .line 903
    return-void
.end method

.method public setLastUsedEmojiTabPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->access$300(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 1027
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastUsedEmojiTabPosition(I)V

    .line 1028
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1029
    return-void
.end method

.method public setLastUsedSymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 863
    return-void
.end method

.method public setNpamRemovedDialogShown()V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public setNumberOfHttpRequests(I)V
    .locals 1
    .param p1, "numberOfRequests"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setNumberOfHttpRequests(I)V

    .line 883
    return-void
.end method

.method public setNumericKeysEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 955
    return-void
.end method

.method public setOldBackupAndSyncDataExists(Z)V
    .locals 1
    .param p1, "exists"    # Z

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOldBackupAndSyncDataExists(Z)V

    .line 1005
    return-void
.end method

.method public setOneHandedKeyboard(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 941
    return-void
.end method

.method public setOneHandedKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .prologue
    .line 959
    return-void
.end method

.method public setOtherDeviceInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonArray"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOtherDeviceInfo(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public setPeriodAndCommaKeysEnabled(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 818
    return-void
.end method

.method public setPersonalizerPreviousState(Ljava/lang/String;I)V
    .locals 0
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 996
    return-void
.end method

.method public setPersonalizerState(Ljava/lang/String;I)V
    .locals 0
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 992
    return-void
.end method

.method public setPhonepadSymbolKbdInitialState(Ljava/lang/String;I)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 859
    return-void
.end method

.method public setPortraitLayout(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 855
    return-void
.end method

.method public setPredictionAutoReplace(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 980
    return-void
.end method

.method public setPredictionMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 851
    return-void
.end method

.method public setPreviousFloatingKeyboardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 951
    return-void
.end method

.method public setPrimaryLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 847
    return-void
.end method

.method public setPrimaryLanguageLayout(Ljava/lang/String;)V
    .locals 0
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 834
    return-void
.end method

.method public setRefreshCloudAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "refreshCloudAccessToken"    # Ljava/lang/String;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;->val$normalEditor:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setRefreshCloudAccessToken(Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public setSetupWizardShown()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public setShowSecondaryPrints(Z)V
    .locals 0
    .param p1, "showSecondaryPrints"    # Z

    .prologue
    .line 1022
    return-void
.end method

.method public setSmileyKeyEnabled(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 814
    return-void
.end method

.method public setSoundFeedbackEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 810
    return-void
.end method

.method public setSwapPunctuationHintCounter(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 802
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 798
    return-void
.end method

.method public setTraceAutoAccept(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 937
    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 933
    return-void
.end method

.method public setUpgradeVisualizationShown()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method public setUsedLatinLanguageLayouts(Ljava/util/Set;)V
    .locals 0
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
    .line 843
    .local p1, "usedLatinLanguageLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 1093
    return-void
.end method

.method public setVoiceInputEnabled(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 806
    return-void
.end method
