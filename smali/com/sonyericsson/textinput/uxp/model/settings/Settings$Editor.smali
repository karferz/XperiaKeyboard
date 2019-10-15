.class public Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to put the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into SharedPreferences since the key was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "errorString":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-void
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    const-string v0, "boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string v0, "float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 873
    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 878
    :goto_0
    return-void

    .line 876
    :cond_0
    const-string v0, "int"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    const-string v0, "long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v0, "String"

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 883
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 884
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to put the string into SharedPreferences with the key since it is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_2
    const-string v1, "StringSet"

    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->nullKeyError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clearDictionaryUpdateNotificationCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_notification_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1301
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1002
    return-void
.end method

.method public increaseDictionaryUpdateNotificationCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Ljava/util/HashMap;

    move-result-object v1

    .line 1290
    .local v1, "notificationCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1291
    .local v0, "currentCount":I
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1292
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update_notification_count_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1296
    return-void
.end method

.method public removePrimaryLanguageAndLayout()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "primary-language"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "primary-language-layout"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 936
    return-void
.end method

.method public setActiveDaysBeforeCloud(I)V
    .locals 1
    .param p1, "daysActive"    # I

    .prologue
    .line 1195
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ACTIVE_DAYS_BEFORE_CLOUD:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1196
    return-void
.end method

.method public setActiveDaysTimestamp(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 991
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_ACTIVE_DAYS_TIMESTAMP:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 992
    return-void
.end method

.method public setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V
    .locals 2
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
    .line 922
    .local p1, "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "activeLanguageLayoutsJson":Ljava/lang/String;
    const-string v1, "active_language_layouts"

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public setAutoAcceptHintCounter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 981
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_NUMBER_AUTO_ACCEPT_HINT:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 982
    return-void
.end method

.method public setAutoDictionaryUpdateMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;)V
    .locals 4
    .param p1, "autoDictionaryUpdateMode"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1249
    const/4 v0, 0x0

    .line 1250
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1261
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unexpected mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1252
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_OFF:Ljava/lang/String;

    .line 1264
    :goto_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_AUTO_DICTIONARY_UPDATE_MODE:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1255
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_ANY_TIME:Ljava/lang/String;

    .line 1256
    goto :goto_0

    .line 1258
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_AUTO_DICTIONARY_UPDATE_MODE_WIFI_ONLY:Ljava/lang/String;

    .line 1259
    goto :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAvailableDictionaryUpdates(Ljava/util/Set;)V
    .locals 1
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
    .line 1215
    .local p1, "availableUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "key_available_swiftkey_updates"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 1216
    return-void
.end method

.method public setBackupAndSync(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1185
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_BACKUP_AND_SYNC:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    return-void
.end method

.method public setCloudAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "cloudAccessToken"    # Ljava/lang/String;

    .prologue
    .line 1016
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_CLOUD_ACCESS_TOKEN:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public setCloudIdToken(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 2
    .param p1, "cloudLoginIdToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    .prologue
    .line 1021
    const-string v0, "cloud_id_token"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public setCloudNudgeShown()V
    .locals 2

    .prologue
    .line 1200
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_HAS_SHOWN_CLOUD_NUDGE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1201
    return-void
.end method

.method public setCloudSyncTryCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1205
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_CLOUD_SYNC_TRY_COUNT:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1206
    return-void
.end method

.method public setCurrentNumberOfDevices(I)V
    .locals 1
    .param p1, "nbrOfDevices"    # I

    .prologue
    .line 1026
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_NUMBER_OF_DEVICES:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1027
    return-void
.end method

.method public setCurrentThemeInfo(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    .locals 2
    .param p1, "themeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1284
    const-string v0, "current_theme_info"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->this$0:Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/Settings;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    return-void
.end method

.method public setDaysActiveCounter(I)V
    .locals 1
    .param p1, "counter"    # I

    .prologue
    .line 1165
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_DAYS_ACTIVE_COUNTER:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1166
    return-void
.end method

.method public setDictionariesWaitingForNetwork(Ljava/util/Set;)V
    .locals 1
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
    .line 1242
    .local p1, "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "wait_for_network_dictionaries"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 1244
    return-void
.end method

.method public setDictionariesWaitingForWiFi(Ljava/util/Set;)V
    .locals 1
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
    .line 1235
    .local p1, "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "wait_for_wifi_dictionaries"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 1237
    return-void
.end method

.method public setFloatingKeyboardType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1145
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public setFloatingRelativePositionX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1155
    const-string v0, "key_floating_keyboard_mini_relative_x"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putFloat(Ljava/lang/String;F)V

    .line 1156
    return-void
.end method

.method public setFloatingRelativePositionY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 1160
    const-string v0, "key_floating_keyboard_mini_relative_y"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putFloat(Ljava/lang/String;F)V

    .line 1161
    return-void
.end method

.method public setHasAgreedToDictionaryDownload(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 1220
    const-string v0, "key_download_agree"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1221
    return-void
.end method

.method public setHasShownDictionaryDownloadDialog(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1225
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_DOWNLOAD_SHOWN_POPUP:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1226
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 940
    const-string v0, "current-im"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public setInputMethodEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 945
    const-string v0, "current-im-email"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public setIsWaitForWifiCheckboxChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 1230
    const-string v0, "wait_for_wifi_check_box"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1231
    return-void
.end method

.method public setKeyboardOpeningsCounter(I)V
    .locals 1
    .param p1, "counter"    # I

    .prologue
    .line 1170
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_KEYBOARD_OPENINGS_COUNTER:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1171
    return-void
.end method

.method public setKeyboardOpeningsWithDiscontinuedNpamCounter(I)V
    .locals 1
    .param p1, "counter"    # I

    .prologue
    .line 1315
    const-string v0, "keyboard_openings_counter"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1316
    return-void
.end method

.method public setKeyboardResizeHeightPxCurrent(I)V
    .locals 1
    .param p1, "keyboardResizeHeightPxCurrent"    # I

    .prologue
    .line 1133
    const-string v0, "resize_height_current"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1135
    return-void
.end method

.method public setKeyboardResizeHeightPxPrevious(I)V
    .locals 1
    .param p1, "keyboardResizeHeightPxPrevious"    # I

    .prologue
    .line 1139
    const-string v0, "resize_height_previous"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1141
    return-void
.end method

.method public setKeyboardSkin(Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1279
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_KEYBOARD_SKIN:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method public setLanguageToggleHintShown()V
    .locals 2

    .prologue
    .line 950
    const-string v0, "language-toggle-hint-shown"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    return-void
.end method

.method public setLastBackupTimeDynamicModel(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1011
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_BACKUP_TIME_DYNAMIC_MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 1012
    return-void
.end method

.method public setLastDictionaryListRefreshTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1269
    const-string v0, "key_last_search_swiftkey_updates"

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 1270
    return-void
.end method

.method public setLastDictionaryListVerifyTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1274
    const-string v0, "key_last_search_swiftkey_verify"

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 1275
    return-void
.end method

.method public setLastSnapshotActiveDay(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 1310
    const-string v0, "snapshot_date"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1311
    return-void
.end method

.method public setLastSyncTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1006
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_SYNC_TIME:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 1007
    return-void
.end method

.method public setLastTimeCloudAccessTokenRenewed(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1041
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LAST_TIME_CLOUD_ACCESS_TOKEN_RENEWED:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putLong(Ljava/lang/String;J)V

    .line 1042
    return-void
.end method

.method public setLastUsedEmojiTabPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1210
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_LATEST_USED_EMOJI_TAB:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1211
    return-void
.end method

.method public setLastUsedSymbol(Ljava/lang/String;)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 976
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_LAST_USED_SYMBOL:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public setNpamRemovedDialogShown()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "npam_removed_dialog_shown"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    return-void
.end method

.method public setNumberOfHttpRequests(I)V
    .locals 1
    .param p1, "nbrOfRequests"    # I

    .prologue
    .line 1036
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_NUMBER_OF_HTTP_REQUESTS:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1037
    return-void
.end method

.method public setNumericKeysEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1087
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_NUMERIC_KEYS:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    return-void
.end method

.method public setOldBackupAndSyncDataExists(Z)V
    .locals 1
    .param p1, "exists"    # Z

    .prologue
    .line 1190
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_OLD_BACKUP_AND_SYNC_DATA_EXISTS:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1191
    return-void
.end method

.method public setOneHandedKeyboard(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1107
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1108
    return-void
.end method

.method public setOneHandedKeyboardPosition(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;)V
    .locals 2
    .param p1, "position"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .prologue
    .line 1112
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1127
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encountered unexpected position."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1116
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD_POSITION:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_ONE_HANDED_KEYBOARD_POSITION_LEFT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :goto_0
    return-void

    .line 1121
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD_POSITION:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_ONE_HANDED_KEYBOARD_POSITION_RIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOtherDeviceInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonArray"    # Ljava/lang/String;

    .prologue
    .line 1031
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_OTHER_DEVICE_INFO:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public setPeriodAndCommaKeysEnabled(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1082
    const-string v0, "show_period_and_comma_keys"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1083
    return-void
.end method

.method public setPersonalizerPreviousState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previous_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1181
    return-void
.end method

.method public setPersonalizerState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1176
    return-void
.end method

.method public setPhonepadSymbolKbdInitialState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_num_shifted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 972
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPortraitLayout(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1056
    packed-switch p1, :pswitch_data_0

    .line 1070
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid preference with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 1062
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_PHONEPAD:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PORTRAIT_KEYBOARD:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD_WITH_SECONDARY_PRINTS:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPredictionAutoReplace(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 902
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PREDICTION_AUTO_REPLACE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    return-void
.end method

.method public setPredictionMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 996
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_PREDICTION:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setPreviousFloatingKeyboardType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1150
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_PREVIOUS_FLOATING_KEYBOARD_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method public setPrimaryLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "primary-language"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public setPrimaryLanguageLayout(Ljava/lang/String;)V
    .locals 1
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 917
    const-string v0, "primary-language-layout"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public setRefreshCloudAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 1046
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_REFRESH_CLOUD_ACCESS_TOKEN:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public setSetupWizardShown()V
    .locals 2

    .prologue
    .line 955
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SETUP_WIZARD_SHOWN:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    return-void
.end method

.method public setShowSecondaryPrints(Z)V
    .locals 1
    .param p1, "showSecondaryPrints"    # Z

    .prologue
    .line 1051
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_SECONDARY_PRINTS:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1052
    return-void
.end method

.method public setSmileyKeyEnabled(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1092
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SHOW_SMILEY_KEY:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    return-void
.end method

.method public setSoundFeedbackEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1097
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOUND_FEEDBACK:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1098
    return-void
.end method

.method public setSwapPunctuationHintCounter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 986
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TEXTINPUT_SWAP_PUNCTUATION_HINT:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 987
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1102
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TACTILE_FEEDBACK:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1103
    return-void
.end method

.method public setTraceAutoAccept(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 897
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_TRACE_AUTO_ACCEPT:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 907
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_SOFTWARE_KEYBOARD_TRACE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 908
    return-void
.end method

.method public setUpgradeVisualizationShown()V
    .locals 2

    .prologue
    .line 965
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_UPGRADE_VISUALIZATION_SHOWN:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 966
    return-void
.end method

.method public setUsedLatinLanguageLayouts(Ljava/util/Set;)V
    .locals 1
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
    .line 928
    .local p1, "usedLatinLanguageLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "used_active_language_layouts"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 930
    return-void
.end method

.method public setVersionCode(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1305
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_VERSION_CODE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putInt(Ljava/lang/String;I)V

    .line 1306
    return-void
.end method

.method public setVoiceInputEnabled(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1077
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_VOICE_INPUT_START_FROM_KEYBOARD:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$Editor;->putBoolean(Ljava/lang/String;Z)V

    .line 1078
    return-void
.end method
