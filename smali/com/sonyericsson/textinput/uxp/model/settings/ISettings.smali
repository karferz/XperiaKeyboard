.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
.super Ljava/lang/Object;
.source "ISettings.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IPersistentSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;,
        Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;,
        Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;,
        Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
    }
.end annotation


# static fields
.field public static final INPUTMETHOD_FULL_KEYBOARD:Ljava/lang/String; = "full"

.field public static final INPUTMETHOD_MULTITAP:Ljava/lang/String; = "multitap"

.field public static final INPUTMETHOD_NUMPAD:Ljava/lang/String; = "numpad"

.field public static final INPUTMETHOD_SINGLETAP:Ljava/lang/String; = "singletap"

.field public static final NO_ACTIVE_DAYS_BEFORE_CLOUD:I = -0x1

.field public static final PERSONALIZER_STATE_COMPLETE:I = 0x3

.field public static final PERSONALIZER_STATE_FAILED:I = 0x2

.field public static final PERSONALIZER_STATE_NOT_RUN:I = 0x0

.field public static final PERSONALIZER_STATE_RUNNING:I = 0x1

.field public static final PHONEPAD_SYMBOL_KBD_INITIAL_STATE_NORMAL:I = 0x0

.field public static final PHONEPAD_SYMBOL_KBD_INITIAL_STATE_SHIFTED:I = 0x1

.field public static final PORTRAIT_KEYBOARD_FULL:I = 0x1

.field public static final PORTRAIT_KEYBOARD_FULL_SECONDARY_PRINTS:I = 0x3

.field public static final PORTRAIT_KEYBOARD_PHONEPAD:I = 0x2


# virtual methods
.method public abstract deleteLegacyKeys(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
.end method

.method public abstract getActiveDaysBeforeCloud()I
.end method

.method public abstract getActiveDaysTimestamp()J
.end method

.method public abstract getActiveLanguageLayouts()Ljava/util/LinkedHashMap;
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
.end method

.method public abstract getAutoAcceptHintCounter()I
.end method

.method public abstract getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAvailableDictionaryUpdates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCloudAccessToken()Ljava/lang/String;
.end method

.method public abstract getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCloudSyncTryCount()I
.end method

.method public abstract getCurrentNumberOfDevices()I
.end method

.method public abstract getCurrentThemeInfo()Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDaysActiveCounter()I
.end method

.method public abstract getDictionariesWaitingForNetwork()Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDictionariesWaitingForWiFi()Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloatingKeyboardType()Ljava/lang/String;
.end method

.method public abstract getFloatingMiniRelativePosition()Landroid/graphics/PointF;
.end method

.method public abstract getHasAgreedToDictionaryDownload()Z
.end method

.method public abstract getHasShownDictionaryDownloadDialog()Z
.end method

.method public abstract getInputMethod()Ljava/lang/String;
.end method

.method public abstract getInputMethodEmail()Ljava/lang/String;
.end method

.method public abstract getIsWaitForWifiCheckboxChecked()Z
.end method

.method public abstract getKeyboardOpeningsCounter()I
.end method

.method public abstract getKeyboardOpeningsWithDiscontinuedNpamCounter()I
.end method

.method public abstract getKeyboardResizeHeightPxCurrent()I
.end method

.method public abstract getKeyboardResizeHeightPxPrevious()I
.end method

.method public abstract getKeyboardSkin()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLanguageToggleHintShown()Z
.end method

.method public abstract getLanguagesUpdateDictionaryNotificationCount()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastBackupTimeDynamicModel()J
.end method

.method public abstract getLastDictionaryListRefreshTime()J
.end method

.method public abstract getLastDictionaryListVerifyTime()J
.end method

.method public abstract getLastSnapshotActiveDay()I
.end method

.method public abstract getLastSyncTime()J
.end method

.method public abstract getLastTimeCloudAccessTokenRenewed()J
.end method

.method public abstract getLastUsedEmojiTabPosition()I
.end method

.method public abstract getNumberOfHttpRequests()I
.end method

.method public abstract getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
.end method

.method public abstract getOtherDevicesInfo()Ljava/lang/String;
.end method

.method public abstract getPersonalizerPreviousState(Ljava/lang/String;I)I
.end method

.method public abstract getPersonalizerState(Ljava/lang/String;)I
.end method

.method public abstract getPhonepadSymbolKbdInitialState(Ljava/lang/String;)I
.end method

.method public abstract getPortraitKeyboard()Ljava/lang/String;
.end method

.method public abstract getPortraitKeyboardMode()I
.end method

.method public abstract getPredictionEngine()Ljava/lang/String;
.end method

.method public abstract getPreviousFloatingKeyboardType()Ljava/lang/String;
.end method

.method public abstract getPrimaryLanguage()Ljava/lang/String;
.end method

.method public abstract getRefreshCloudAccessToken()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSetupWizardShown()Z
.end method

.method public abstract getSoftwareKeyboardPrediction()Ljava/lang/String;
.end method

.method public abstract getSoundFeedbackVolume()I
.end method

.method public abstract getSwapPunctuationHintCounter()I
.end method

.method public abstract getTraceAutoAccept()Z
.end method

.method public abstract getUpgradeVisualizationShown()Z
.end method

.method public abstract getUsedLatinLanguageLayouts()Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getVibratorDuration()I
.end method

.method public abstract hasShownCloudNudge()Z
.end method

.method public abstract isBackupAndSyncDataOld()Z
.end method

.method public abstract isBackupAndSyncEnabled()Z
.end method

.method public abstract isCandidateSelectionAutoSpaceEnabled()Z
.end method

.method public abstract isKeyPreviewEnabled()Z
.end method

.method public abstract isNpamRemovedDialogShown()Z
.end method

.method public abstract isNumericKeysEnabled()Z
.end method

.method public abstract isOneHandedKeyboard()Z
.end method

.method public abstract isPeriodAndCommaKeysEnabled()Z
.end method

.method public abstract isPortraitKeybordPhonepad()Z
.end method

.method public abstract isPredictionAutoReplaceEnabled()Z
.end method

.method public abstract isSecondaryPrintsEnabled()Z
.end method

.method public abstract isSmartLanguageDetection()Z
.end method

.method public abstract isSmileyKeyEnabled()Z
.end method

.method public abstract isSoundFeedbackEnabled()Z
.end method

.method public abstract isTactileFeedbackEnabled()Z
.end method

.method public abstract isTraceEnabled()Z
.end method

.method public abstract isVoiceInputEnabled()Z
.end method

.method public abstract registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
.end method
