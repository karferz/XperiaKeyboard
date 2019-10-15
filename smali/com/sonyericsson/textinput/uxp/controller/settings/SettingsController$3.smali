.class Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$3;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->showInputOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->access$900(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    .line 323
    :cond_0
    return-void
.end method
