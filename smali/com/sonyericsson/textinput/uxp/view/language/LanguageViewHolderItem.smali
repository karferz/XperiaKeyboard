.class public Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;
.super Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;
.source "LanguageViewHolderItem.java"


# instance fields
.field private mAdapterPosition:I

.field private final mContext:Landroid/content/Context;

.field private final mDownloadButton:Landroid/widget/ImageView;

.field private mIsUpdateDownload:Z

.field private final mLanguageActivatedCheckBox:Landroid/widget/CheckBox;

.field private mLanguageData:Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

.field private final mLanguageLabel:Landroid/widget/TextView;

.field private final mLanguageTextArea:Landroid/view/View;

.field private final mLayoutLabel:Landroid/widget/TextView;

.field private final mLayoutPickerButton:Landroid/widget/ImageView;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mSubLabel:Landroid/widget/TextView;

.field private mWasDownloadingOnBind:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;Landroid/content/Context;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "onItemClickListener"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mAdapterPosition:I

    .line 55
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    .line 57
    const v1, 0x7f0f00bb

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageActivatedCheckBox:Landroid/widget/CheckBox;

    .line 60
    const v1, 0x7f0f00bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageTextArea:Landroid/view/View;

    .line 62
    const v1, 0x7f0f00be

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageLabel:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0f00bf

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutLabel:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0f00c0

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mSubLabel:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0f00c1

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 74
    const v1, 0x7f0f00c2

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mDownloadButton:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f0f00c3

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutPickerButton:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f0f00bd

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 83
    .local v0, "buttons":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mDownloadButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$3;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$3;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutPickerButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem$4;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mWasDownloadingOnBind:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mAdapterPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageData:Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mIsUpdateDownload:Z

    return v0
.end method


# virtual methods
.method bind(ILcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;Landroid/util/SparseArray;)V
    .locals 10
    .param p1, "adapterPosition"    # I
    .param p2, "dataStatic"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    .param p3, "dataDynamic"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;",
            "Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p4, "textResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->getAdapterPosition()I

    move-result v7

    if-eq p1, v7, :cond_0

    .line 136
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad adapterPosition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 137
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->getAdapterPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mAdapterPosition:I

    .line 141
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageData:Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    .line 142
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->getLanguageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->isActivated()Z

    move-result v0

    .line 144
    .local v0, "isActivated":Z
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->isLayoutPickerAllowed()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v1, 0x1

    .line 145
    .local v1, "isLayoutShown":Z
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageActivatedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eq v7, v0, :cond_1

    .line 146
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageActivatedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    if-eqz v1, :cond_2

    .line 150
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutLabel:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->getLayoutName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLayoutPickerButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->isDownloading()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mWasDownloadingOnBind:Z

    .line 155
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->isUpdateAvailable()Z

    move-result v2

    .line 157
    .local v2, "isUpdateAvailable":Z
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mWasDownloadingOnBind:Z

    if-eqz v7, :cond_3

    .line 158
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->getDownloadProgress()I

    move-result v7

    if-lez v7, :cond_9

    .line 159
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->getDownloadProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 164
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mWasDownloadingOnBind:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mWasDownloadingOnBind:Z

    if-nez v7, :cond_b

    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->needDownload()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v3, 0x1

    .line 167
    .local v3, "needSubLabel":Z
    :goto_5
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mSubLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->isDownloaded()Z

    move-result v7

    if-nez v7, :cond_d

    .line 172
    const v7, 0x7f0700db

    invoke-virtual {p4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 174
    .local v6, "text":Ljava/lang/String;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mIsUpdateDownload:Z

    .line 181
    :goto_7
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v6    # "text":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mDownloadButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_e

    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_e

    :cond_5
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 199
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 201
    .local v5, "paddingTop":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 216
    .local v4, "paddingBottom":I
    :goto_9
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageTextArea:Landroid/view/View;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageTextArea:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mLanguageTextArea:Landroid/view/View;

    .line 217
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    .line 216
    invoke-virtual {v7, v8, v5, v9, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 218
    return-void

    .line 144
    .end local v1    # "isLayoutShown":Z
    .end local v2    # "isUpdateAvailable":Z
    .end local v3    # "needSubLabel":Z
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v1    # "isLayoutShown":Z
    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_1

    .line 152
    :cond_8
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 161
    .restart local v2    # "isUpdateAvailable":Z
    :cond_9
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 164
    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 166
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 167
    .restart local v3    # "needSubLabel":Z
    :cond_c
    const/16 v7, 0x8

    goto :goto_6

    .line 177
    :cond_d
    const v7, 0x7f0700de

    invoke-virtual {p4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .restart local v6    # "text":Ljava/lang/String;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mIsUpdateDownload:Z

    goto :goto_7

    .line 188
    .end local v6    # "text":Ljava/lang/String;
    :cond_e
    const/16 v7, 0x8

    goto :goto_8

    .line 203
    :cond_f
    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    .line 205
    :cond_10
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 207
    .restart local v5    # "paddingTop":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .restart local v4    # "paddingBottom":I
    goto :goto_9

    .line 211
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    :cond_11
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 213
    .restart local v5    # "paddingTop":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .restart local v4    # "paddingBottom":I
    goto :goto_9
.end method
