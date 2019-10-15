.class public Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SkinSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSelectedIndex:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOldSelectedIndex:I

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mViewHolderListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;>;"
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    .line 47
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mOldSelectedIndex:I

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 61
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mViewHolderListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->setSelected(I)V

    return-void
.end method

.method private saveSkinToPreferences(Ljava/lang/String;)V
    .locals 2
    .param p1, "skinID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardSkin(Ljava/lang/String;)V

    .line 125
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSkinManualSelectedEvent(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private declared-synchronized setSelected(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->unSelect()V

    .line 76
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    .line 78
    .local v0, "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setEnabled(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->saveSkinToPreferences(Ljava/lang/String;)V

    .line 80
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mOldSelectedIndex:I

    if-ltz v1, :cond_2

    .line 81
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mOldSelectedIndex:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->notifyItemChanged(I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 84
    .restart local v0    # "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private unSelect()V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    if-gez v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->unSelectAll()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setEnabled(Z)V

    .line 98
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mCurrentSelectedIndex:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mOldSelectedIndex:I

    goto :goto_0
.end method

.method private unSelectAll()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    .line 105
    .local v1, "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setEnabled(Z)V

    .line 107
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mOldSelectedIndex:I

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->onBindViewHolder(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;I)V
    .locals 13
    .param p1, "viewHolder"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v12, 0x7f0d004e

    const/4 v6, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 139
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    .line 143
    .local v3, "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v7, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 183
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skin with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    :sswitch_0
    const-string v11, "skin-dark"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v7, v5

    goto :goto_0

    :sswitch_1
    const-string v11, "skin-classic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v7, v8

    goto :goto_0

    :sswitch_2
    const-string v11, "skin-light"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v7, v9

    goto :goto_0

    :sswitch_3
    const-string v11, "skin-xperia-blue"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :sswitch_4
    const-string v11, "skin-xperia-green"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v7, v6

    goto :goto_0

    :sswitch_5
    const-string v11, "skin-xperia-purple"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v11, "skin-xperia-pink"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x6

    goto :goto_0

    :sswitch_7
    const-string v11, "skin-themed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x7

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d004c

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 146
    .local v2, "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 185
    .local v0, "background":Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->getSkinBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_2
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getColorAccent(Landroid/content/Context;)I

    move-result v4

    .line 197
    .local v4, "primaryColor":I
    :goto_3
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 198
    return-void

    .line 149
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    .end local v4    # "primaryColor":I
    :pswitch_1
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d004b

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 150
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 151
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_1

    .line 153
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_2
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d004d

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 154
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 155
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_1

    .line 157
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_3
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d004f

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 158
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 159
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto/16 :goto_1

    .line 161
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_4
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0050

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 163
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 164
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto/16 :goto_1

    .line 166
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_5
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0052

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 168
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 169
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto/16 :goto_1

    .line 171
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_6
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0051

    invoke-static {v7, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 172
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v8, [Landroid/graphics/drawable/ColorDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v8, v7, v5

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 173
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto/16 :goto_1

    .line 175
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "color":I
    :pswitch_7
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    const/high16 v10, 0x7f020000

    invoke-static {v7, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, "backgroundBack":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 178
    .restart local v2    # "color":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v7, v5

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v9, v7, v8

    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 181
    .restart local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    goto/16 :goto_1

    .end local v1    # "backgroundBack":Landroid/graphics/drawable/Drawable;
    :cond_1
    move v5, v6

    .line 188
    goto/16 :goto_2

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .restart local v4    # "primaryColor":I
    goto/16 :goto_3

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        -0x776aedf5 -> :sswitch_7
        -0x35ac4244 -> :sswitch_5
        0xd613442 -> :sswitch_1
        0x24f2665a -> :sswitch_3
        0x24f8b776 -> :sswitch_6
        0x5ece5cc6 -> :sswitch_2
        0x76a811c6 -> :sswitch_0
        0x79a35903 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mViewHolderListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;)V

    return-object v1
.end method

.method public recycleItems()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    .line 118
    .local v0, "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->recycle()V

    goto :goto_0

    .line 120
    .end local v0    # "item":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    :cond_0
    return-void
.end method
