.class Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;
.super Ljava/lang/Object;
.source "LanguageSelectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

.field final synthetic val$languageIso3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;->val$languageIso3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;->val$languageIso3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->notifyItemChanged(Ljava/lang/String;)V

    .line 204
    return-void
.end method
