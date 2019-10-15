.class Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;
.super Ljava/lang/Object;
.source "TextInputRequirements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistentSettingsUtil"
.end annotation


# static fields
.field private static sIsDictionariesDeletionDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->sIsDictionariesDeletionDone:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1143
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->isUsingNpam(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "x1"    # I

    .prologue
    .line 1143
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->updateSetupWizardSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "x1"    # I

    .prologue
    .line 1143
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->deleteUnusedDictionaries(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "x1"    # Z

    .prologue
    .line 1143
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->shouldShowNpamRemovedDialog(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)Z

    move-result v0

    return v0
.end method

.method private static deleteUnusedDictionaries(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z
    .locals 1
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "daysActive"    # I

    .prologue
    .line 1202
    sget-boolean v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->sIsDictionariesDeletionDone:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    .line 1203
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->sIsDictionariesDeletionDone:Z

    .line 1204
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->deleteUnusedDictionaries()Z

    move-result v0

    .line 1206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUsingNpam(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1190
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v0

    .line 1191
    .local v0, "idToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v0, :cond_1

    .line 1192
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    .line 1193
    .local v1, "type":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    :cond_0
    const/4 v2, 0x1

    .line 1197
    .end local v1    # "type":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setSetupWizardShown(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 1
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 1210
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 1211
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setSetupWizardShown()V

    .line 1212
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1213
    return-void
.end method

.method private static shouldShowNpamRemovedDialog(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)Z
    .locals 2
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "isAcceptedField"    # Z

    .prologue
    .line 1181
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->access$400(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I

    move-result v0

    .line 1182
    .local v0, "openings":I
    if-eqz p1, :cond_0

    rem-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    .line 1186
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->isUsingNpam(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v1

    goto :goto_0
.end method

.method private static updateSetupWizardSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z
    .locals 4
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "counter"    # I

    .prologue
    const/16 v3, 0x1e

    const/4 v0, 0x0

    .line 1159
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSetupWizardShown()Z

    move-result v1

    if-nez v1, :cond_0

    if-le p1, v3, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return v0

    .line 1162
    :cond_1
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1164
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->setSetupWizardShown(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    goto :goto_0

    .line 1167
    :cond_2
    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
