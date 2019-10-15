.class Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;
.super Ljava/lang/Object;
.source "DebugFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupStressOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 60
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->access$000(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    .line 62
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "debug_after_swallow_heap_free_mb"

    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->AFTER_SWALLOW_HEAP_DEFAULT_VALUE:Ljava/lang/Float;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 66
    .local v0, "afterSwallowFreeMb":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->swallowHeap(Landroid/content/Context;I)V

    .line 71
    .end local v0    # "afterSwallowFreeMb":I
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available heap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->getAvailableHeapMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 73
    return v8

    .line 69
    :cond_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->freeSwallowedHeap()V

    goto :goto_0
.end method
