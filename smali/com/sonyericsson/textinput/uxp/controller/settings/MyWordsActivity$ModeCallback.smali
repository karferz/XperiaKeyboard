.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTitle(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    :cond_0
    return-void
.end method

.method private updateMarkButtons(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 633
    const v0, 0x7f0f00ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1900(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 634
    const v0, 0x7f0f00eb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1900(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 635
    return-void

    .line 633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 611
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 629
    :goto_0
    return v2

    .line 613
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1800(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1902(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Z

    .line 615
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->updateMarkButtons(Landroid/view/Menu;)V

    goto :goto_0

    .line 618
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$2000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1902(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Z

    .line 620
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 623
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1902(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Z

    .line 624
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0011 -> :sswitch_1
        0x7f0f00ea -> :sswitch_0
        0x7f0f00eb -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 589
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iput-boolean v6, v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionMode:Z

    .line 590
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 591
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f100001

    invoke-virtual {v1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->setTitle(Landroid/view/ActionMode;)V

    .line 594
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->updateMarkButtons(Landroid/view/Menu;)V

    .line 596
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    const v3, 0x7f0f0011

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 599
    .local v0, "deleteItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 600
    .local v2, "newIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 601
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 603
    .end local v0    # "deleteItem":Landroid/view/MenuItem;
    .end local v2    # "newIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionMode:Z

    .line 639
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->setTitle(Landroid/view/ActionMode;)V

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1900(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Z

    move-result v0

    .line 646
    .local v0, "oldEnableValue":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;

    move-result-object v3

    .line 647
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 646
    :goto_0
    invoke-static {v2, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1902(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Z

    .line 648
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1900(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 649
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;->updateMarkButtons(Landroid/view/Menu;)V

    .line 651
    :cond_0
    return-void

    .line 647
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method
