.class Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$1;
.super Ljava/lang/Object;
.source "LanguageSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 115
    return-void
.end method
