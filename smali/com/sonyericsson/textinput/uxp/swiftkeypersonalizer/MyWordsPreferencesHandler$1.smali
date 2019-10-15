.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$1;
.super Ljava/lang/Object;
.source "MyWordsPreferencesHandler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->setupPreferences(Landroid/preference/PreferenceScreen;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler$1;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;->access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/MyWordsPreferencesHandler;)Landroid/app/Activity;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 61
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;->SETTINGS:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushMyWordsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;)V

    .line 66
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
