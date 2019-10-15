.class Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;
.super Ljava/lang/Object;
.source "LanguageViewHolderItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;-><init>(Landroid/view/View;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

.field final synthetic val$onItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;->val$onItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;->val$onItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->PICK_LAYOUT:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .line 119
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->access$100(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->access$200(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    move-result-object v3

    .line 118
    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;->onItemClick(Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;ILcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;)Z

    .line 120
    return-void
.end method
