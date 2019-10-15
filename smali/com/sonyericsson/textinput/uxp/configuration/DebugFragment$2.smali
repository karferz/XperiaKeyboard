.class Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$2;
.super Ljava/lang/Object;
.source "DebugFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSyncOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->access$100(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method
