.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;
.super Landroid/preference/Preference;
.source "SimpleMenuPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;

.field private final mEntryDisplayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryValues:[Ljava/lang/CharSequence;

.field private mIsSelectedValueSet:Z

.field private mSelectedValue:Ljava/lang/CharSequence;

.field private final mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v2, Lcom/sonyericsson/textinput/uxp/R$styleable;->SimpleMenuPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 60
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryDisplayAdapter:Landroid/widget/ArrayAdapter;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryDisplayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 78
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getSelectedValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSelectedValue:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSelectedValue:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSelectedValue(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 138
    const/4 v2, -0x1

    .line 139
    .local v2, "valuePosition":I
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v3, v0

    .line 141
    .local v1, "valueAtPosition":Ljava/lang/CharSequence;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    move v2, v0

    .line 146
    .end local v1    # "valueAtPosition":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSelectedValue(I)V

    .line 147
    return-void

    .line 139
    .restart local v1    # "valueAtPosition":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "viewParent"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 162
    check-cast v1, Landroid/view/ViewGroup;

    .line 163
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 206
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;

    .line 207
    .local v0, "myState":Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 208
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSelectedValue(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 188
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 193
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    .local v0, "myState":Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->getSelectedValueString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;Ljava/lang/String;)Ljava/lang/String;

    move-object v1, v0

    .line 195
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->getSelectedValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSelectedValue(Ljava/lang/CharSequence;)V

    .line 178
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mDefaultValue:Ljava/lang/Object;

    .line 179
    return-void

    :cond_0
    move-object v0, p2

    .line 176
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setSelectedValue(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "value":Ljava/lang/CharSequence;
    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge p1, v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v6, p1

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSelectedValue:Ljava/lang/CharSequence;

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    .line 113
    .local v0, "changed":Z
    :goto_0
    if-eqz v4, :cond_3

    if-nez v0, :cond_1

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mIsSelectedValueSet:Z

    if-nez v6, :cond_3

    .line 114
    :cond_1
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSelectedValue:Ljava/lang/CharSequence;

    .line 115
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mIsSelectedValueSet:Z

    .line 116
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mEntryDisplayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 117
    .local v3, "selectedEntryDisplay":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->getSelectedValueString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->persistString(Ljava/lang/String;)Z

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->notifyChanged()V

    .line 126
    .end local v3    # "selectedEntryDisplay":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 127
    if-nez v4, :cond_6

    .line 128
    .local v1, "disableDependents":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->notifyDependencyChange(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    .line 131
    .local v2, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 133
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p0, v5}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 135
    :cond_4
    return-void

    .end local v0    # "changed":Z
    .end local v1    # "disableDependents":Z
    .end local v2    # "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    :cond_5
    move v0, v5

    .line 111
    goto :goto_0

    .restart local v0    # "changed":Z
    :cond_6
    move v1, v5

    .line 127
    goto :goto_1
.end method
