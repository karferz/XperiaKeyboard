.class Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;
.super Ljava/lang/Object;
.source "SymbolsAndSmileysOptionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->setupAutoSpace(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isCandidateSelectionAutoSpaceEnabled()Z

    move-result v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushAutomaticSpaceEnabledEvent(Z)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
