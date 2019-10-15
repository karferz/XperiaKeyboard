.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private final mUserWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 1

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->mUserWords:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->mUserWords:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->mUserWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->mUserWords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 564
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 569
    move-object v0, p2

    .line 570
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0f00e2

    if-ne v2, v3, :cond_2

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 576
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    .line 578
    .local v1, "word":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v1, :cond_4

    :goto_1
    move-object v2, v0

    .line 580
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    return-object v0

    .line 572
    .end local v1    # "word":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionMode:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0f0062

    if-ne v2, v3, :cond_1

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 578
    .restart local v1    # "word":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_1
.end method
