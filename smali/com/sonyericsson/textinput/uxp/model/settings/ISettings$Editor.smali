.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
.super Ljava/lang/Object;
.source "ISettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract clearDictionaryUpdateNotificationCount(Ljava/lang/String;)V
.end method

.method public abstract commit()V
.end method

.method public abstract increaseDictionaryUpdateNotificationCount(Ljava/lang/String;)V
.end method

.method public abstract removePrimaryLanguageAndLayout()V
.end method

.method public abstract setActiveDaysBeforeCloud(I)V
.end method

.method public abstract setActiveDaysTimestamp(J)V
.end method

.method public abstract setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V
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
.end method

.method public abstract setAutoAcceptHintCounter(I)V
.end method

.method public abstract setAutoDictionaryUpdateMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;)V
    .param p1    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAvailableDictionaryUpdates(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBackupAndSync(Z)V
.end method

.method public abstract setCloudAccessToken(Ljava/lang/String;)V
.end method

.method public abstract setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
.end method

.method public abstract setCloudNudgeShown()V
.end method

.method public abstract setCloudSyncTryCount(I)V
.end method

.method public abstract setCurrentNumberOfDevices(I)V
.end method

.method public abstract setCurrentThemeInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    .param p1    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDaysActiveCounter(I)V
.end method

.method public abstract setDictionariesWaitingForNetwork(Ljava/util/Set;)V
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
.end method

.method public abstract setDictionariesWaitingForWiFi(Ljava/util/Set;)V
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
.end method

.method public abstract setFloatingKeyboardType(Ljava/lang/String;)V
.end method

.method public abstract setFloatingRelativePositionX(F)V
.end method

.method public abstract setFloatingRelativePositionY(F)V
.end method

.method public abstract setHasAgreedToDictionaryDownload(Z)V
.end method

.method public abstract setHasShownDictionaryDownloadDialog(Z)V
.end method

.method public abstract setInputMethod(Ljava/lang/String;)V
.end method

.method public abstract setInputMethodEmail(Ljava/lang/String;)V
.end method

.method public abstract setIsWaitForWifiCheckboxChecked(Z)V
.end method

.method public abstract setKeyboardOpeningsCounter(I)V
.end method

.method public abstract setKeyboardOpeningsWithDiscontinuedNpamCounter(I)V
.end method

.method public abstract setKeyboardResizeHeightPxCurrent(I)V
.end method

.method public abstract setKeyboardResizeHeightPxPrevious(I)V
.end method

.method public abstract setKeyboardSkin(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLanguageToggleHintShown()V
.end method

.method public abstract setLastBackupTimeDynamicModel(J)V
.end method

.method public abstract setLastDictionaryListRefreshTime(J)V
.end method

.method public abstract setLastDictionaryListVerifyTime(J)V
.end method

.method public abstract setLastSnapshotActiveDay(I)V
.end method

.method public abstract setLastSyncTime(J)V
.end method

.method public abstract setLastTimeCloudAccessTokenRenewed(J)V
.end method

.method public abstract setLastUsedEmojiTabPosition(I)V
.end method

.method public abstract setLastUsedSymbol(Ljava/lang/String;)V
.end method

.method public abstract setNpamRemovedDialogShown()V
.end method

.method public abstract setNumberOfHttpRequests(I)V
.end method

.method public abstract setNumericKeysEnabled(Z)V
.end method

.method public abstract setOldBackupAndSyncDataExists(Z)V
.end method

.method public abstract setOneHandedKeyboard(Z)V
.end method

.method public abstract setOneHandedKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)V
.end method

.method public abstract setOtherDeviceInfo(Ljava/lang/String;)V
.end method

.method public abstract setPeriodAndCommaKeysEnabled(Z)V
.end method

.method public abstract setPersonalizerPreviousState(Ljava/lang/String;I)V
.end method

.method public abstract setPersonalizerState(Ljava/lang/String;I)V
.end method

.method public abstract setPhonepadSymbolKbdInitialState(Ljava/lang/String;I)V
.end method

.method public abstract setPortraitLayout(I)V
.end method

.method public abstract setPredictionAutoReplace(Z)V
.end method

.method public abstract setPredictionMode(Ljava/lang/String;)V
.end method

.method public abstract setPreviousFloatingKeyboardType(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryLanguage(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryLanguageLayout(Ljava/lang/String;)V
.end method

.method public abstract setRefreshCloudAccessToken(Ljava/lang/String;)V
.end method

.method public abstract setSetupWizardShown()V
.end method

.method public abstract setShowSecondaryPrints(Z)V
.end method

.method public abstract setSmileyKeyEnabled(Z)V
.end method

.method public abstract setSoundFeedbackEnabled(Z)V
.end method

.method public abstract setSwapPunctuationHintCounter(I)V
.end method

.method public abstract setTactileFeedbackEnabled(Z)V
.end method

.method public abstract setTraceAutoAccept(Z)V
.end method

.method public abstract setTraceEnabled(Z)V
.end method

.method public abstract setUpgradeVisualizationShown()V
.end method

.method public abstract setUsedLatinLanguageLayouts(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVersionCode(I)V
.end method

.method public abstract setVoiceInputEnabled(Z)V
.end method
