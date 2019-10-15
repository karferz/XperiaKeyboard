.class public Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;,
        Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;,
        Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_ITEM:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterestingLanguagesCount:I

.field private final mLanguageItemPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private final mLanguageListModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private final mOnItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTextResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "onItemClickListener"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getTextResources(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mTextResources:Landroid/util/SparseArray;

    .line 54
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mOnItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageListModel:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageItemPositionMap:Ljava/util/HashMap;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageListModel:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageItemPositionMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->fillLanguageListModel(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mInterestingLanguagesCount:I

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private fillLanguageListModel(Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "languageListModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;>;"
    .local p2, "languageItemPositionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "interestSortedLanguageIso3s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v6, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->fillInterestSortedLanguageIso3s(Ljava/util/ArrayList;)I

    move-result v2

    .line 79
    .local v2, "interestingLanguagesCount":I
    const/4 v0, 0x0

    .line 80
    .local v0, "adapterPosition":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "languageIso3":Ljava/lang/String;
    if-ne v0, v2, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 86
    invoke-virtual {v7, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {v5, v7}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isLayoutPickingAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 88
    .local v3, "isLayoutPickerAllowed":Z
    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    .line 89
    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getLanguageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v5, v7, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 90
    .local v4, "languageData":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_0

    .line 95
    .end local v3    # "isLayoutPickerAllowed":Z
    .end local v4    # "languageData":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    .end local v5    # "languageIso3":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private getDataArrayPosition(I)I
    .locals 1
    .param p1, "listPosition"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mInterestingLanguagesCount:I

    if-ge p1, v0, :cond_0

    .line 142
    .end local p1    # "listPosition":I
    :goto_0
    return p1

    .line 138
    .restart local p1    # "listPosition":I
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mInterestingLanguagesCount:I

    if-le p1, v0, :cond_1

    .line 140
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private getDataItem(I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    .locals 3
    .param p1, "listPosition"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getDataArrayPosition(I)I

    move-result v0

    .line 147
    .local v0, "dataArrayPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageListModel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    return-object v1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fetching item data for section"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLanguageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso3LanguageToIso2DisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextResources(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0700de

    const v3, 0x7f0700db

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .local v1, "textResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageListModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "listPosition"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getViewType(I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getViewType(I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
    .locals 1
    .param p1, "listPosition"    # I

    .prologue
    .line 123
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mInterestingLanguagesCount:I

    if-eq p1, v0, :cond_0

    .line 124
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    goto :goto_0
.end method

.method public notifyItemChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageItemPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, "adapterPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->notifyItemChanged(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->onBindViewHolder(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;
    .param p2, "listPosition"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getViewType(I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    move-result-object v2

    .line 171
    .local v2, "viewType":Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->getDataItem(I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    move-result-object v1

    .line 173
    .local v1, "languageDataStatic":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 174
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->getLanguageIso3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getLanguageDataDynamic(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;

    move-result-object v0

    .line 175
    .local v0, "languageDataDynamic":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    .end local p1    # "viewHolder":Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mTextResources:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1, v0, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;->bind(ILcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;Landroid/util/SparseArray;)V

    .line 181
    .end local v0    # "languageDataDynamic":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;
    .end local v1    # "languageDataStatic":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;
    :cond_0
    return-void

    .line 177
    .restart local p1    # "viewHolder":Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;
    :cond_1
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item view type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolder;
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewTypeInt"    # I

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->values()[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    move-result-object v3

    aget-object v2, v3, p2

    .line 156
    .local v2, "viewType":Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 157
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const v3, 0x7f03002e

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "itemView":Landroid/view/View;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mOnItemClickListener:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v1, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderItem;-><init>(Landroid/view/View;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;Landroid/content/Context;)V

    .line 162
    :goto_0
    return-object v3

    .line 160
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const v3, 0x7f030031

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 162
    .restart local v1    # "itemView":Landroid/view/View;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderSection;

    invoke-direct {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageViewHolderSection;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 164
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown view type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
