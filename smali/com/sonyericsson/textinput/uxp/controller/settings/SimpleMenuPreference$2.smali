.class Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$2;
.super Ljava/lang/Object;
.source "SimpleMenuPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 82
    const/4 v0, 0x1

    return v0
.end method
