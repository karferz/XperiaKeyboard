.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimpleDialogFragment.java"


# instance fields
.field private mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;

.field private mMenuOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->handleItemClick(Ljava/lang/String;)V

    return-void
.end method

.method private createCustomDialogContent(Landroid/content/Context;)Landroid/view/View;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const v11, 0x7f03000d

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "mainView":Landroid/view/View;
    const v11, 0x7f0f0079

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 83
    .local v2, "content":Landroid/widget/LinearLayout;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090112

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 85
    .local v7, "rightPadding":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090111

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 87
    .local v3, "leftPadding":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090114

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 89
    .local v9, "topPadding":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090110

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    .local v1, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->mMenuOptions:[Ljava/lang/String;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v5, v12, v11

    .line 92
    .local v5, "menuOption":Ljava/lang/String;
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v8, "textView":Landroid/widget/TextView;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v8, v3, v9, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090113

    .line 97
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    .line 96
    invoke-virtual {v8, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    const v14, 0x106000c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setClickable(Z)V

    .line 101
    new-instance v14, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x101030e

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v6, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    iget v14, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 113
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 117
    .end local v5    # "menuOption":Ljava/lang/String;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_0
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    .local v10, "view":Landroid/view/View;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090115

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 118
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 122
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    return-object v4
.end method

.method private handleItemClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "menuLabel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;->onItemSelected(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->dismiss()V

    .line 135
    return-void
.end method

.method private init([Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;)V
    .locals 0
    .param p1, "menuOptions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->mMenuOptions:[Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;

    .line 54
    return-void
.end method

.method public static newInstance([Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;)Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
    .locals 2
    .param p0, "menuOptions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;-><init>()V

    .line 45
    .local v0, "dialogFragment":Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->init([Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->setRetainInstance(Z)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->createCustomDialogContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 145
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    return-void
.end method
