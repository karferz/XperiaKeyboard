.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopUpAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "images"    # [Ljava/lang/Integer;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .line 528
    const v0, 0x1090011

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 529
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->images:Ljava/util/List;

    .line 530
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 534
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 535
    .local v1, "view":Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 536
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0051

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/util/TextViewUtil;->setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 539
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->images:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 540
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .line 541
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 542
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 543
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 540
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 544
    return-object v1
.end method
