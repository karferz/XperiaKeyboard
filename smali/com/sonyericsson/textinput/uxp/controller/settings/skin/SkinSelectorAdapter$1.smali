.class Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$1;
.super Ljava/lang/Object;
.source "SkinSelectorAdapter.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewHolderClick(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;I)V

    .line 65
    return-void
.end method
