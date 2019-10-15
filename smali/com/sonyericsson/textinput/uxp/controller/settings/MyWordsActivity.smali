.class public Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.super Landroid/app/Activity;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;,
        Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;,
        Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;,
        Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;,
        Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_MARK_ALL_ENABLED:Ljava/lang/String; = "ActionModeMarkAllEnabled"

.field private static final ALERT_DIALOG_TYPE:Ljava/lang/String; = "AlertDialogType"

.field private static final OPTION_DELETE_WORD:I = 0x1

.field private static final OPTION_EDIT_WORD:I = 0x0

.field private static final WORD_IN_LIST:Ljava/lang/String; = "WordInList"

.field private static final WORD_POSITION_IN_LIST:Ljava/lang/String; = "WordPositionInList"

.field private static final mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;


# instance fields
.field public mActionMode:Z

.field private mActionModeUnMarkAllEnabled:Z

.field private mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

.field private mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mOptions:[Ljava/lang/String;

.field private mPosition:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReadyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

.field private mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

.field private mUserDictionaryWords:[Ljava/lang/String;

.field private mWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionMode:Z

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionaryWords:[Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionaryWords:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->containsLetter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/ned/model/IUserDictionary;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->addWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->deleteWord()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getWordsToBeRemoved(Z)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->removeVisibleWords(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->clearUserDataFromCloudServer(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->markAll()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionModeUnMarkAllEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionModeUnMarkAllEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->fetchAndShowWords()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->deleteMarked()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showAlertDialog()V

    return-void
.end method

.method private addWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 275
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method private static clearUserDataFromCloudServer(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V
    .locals 0
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->deleteUserData(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method private static containsLetter(Ljava/lang/String;)Z
    .locals 2
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 101
    :goto_1
    return v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createClearUserDataFromDeviceDialog(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, "wordsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->dismissAlertDialog()V

    .line 457
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 459
    .local v2, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700bf

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 462
    const v3, 0x7f0700c0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 464
    const v3, 0x7f070013

    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$9;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$9;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setDismissListener(Landroid/app/AlertDialog$Builder;)V

    .line 472
    const v3, 0x7f0700be

    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$10;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/util/HashSet;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 498
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 499
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialogManager:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$AlertDialogManager;->createAlertDialog(Landroid/app/AlertDialog;)V

    .line 500
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 501
    return-void
.end method

.method private deleteMarked()V
    .locals 3

    .prologue
    .line 180
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getWordsToBeRemoved(Z)Ljava/util/HashSet;

    move-result-object v0

    .line 185
    .local v0, "wordsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 186
    invoke-direct {p0, p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->createClearUserDataFromDeviceDialog(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->removeWords(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private deleteWord()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v0}, Lcom/sonyericsson/ned/model/IUserDictionary;->removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->notifyDataSetChanged()V

    .line 442
    return-void
.end method

.method private dismissPreviousAlertDialog()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 437
    :cond_0
    return-void
.end method

.method private dispose()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->dismissPreviousAlertDialog()V

    .line 272
    return-void
.end method

.method private fetchAndShowWords()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IUserDictionary;->getWords()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionaryWords:[Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionaryWords:[Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionaryWords:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    :cond_0
    :goto_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    .line 312
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$4;->start()V

    .line 314
    return-void

    .line 298
    :cond_1
    const-string v0, "mListView not initialized, can\'t set adapter"

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWordsToBeRemoved(Z)Ljava/util/HashSet;
    .locals 4
    .param p1, "onlyMarked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v2, "wordsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 195
    .local v0, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_3

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_3
    return-object v2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyUserDictionary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mReadyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/IUserDictionary;->isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->fetchAndShowWords()V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f030000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "myWordsView":Landroid/view/View;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/FragmentActivityUtil;->applyThemedNavigationBar(Landroid/view/View;)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setContentView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 245
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mOptions:[Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mOptions:[Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f07006a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mOptions:[Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f07006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 250
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    .line 251
    const v3, 0x7f0f005b

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 253
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 255
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$ModeCallback;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 257
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    :cond_0
    return-void
.end method

.method private markAll()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 218
    .local v1, "nbrItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method private removeVisibleWords(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "wordsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->notifyDataSetChanged()V

    .line 214
    return-void
.end method

.method private removeWords(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "wordsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->removeVisibleWords(Ljava/util/HashSet;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/model/IUserDictionary;->removeWords(Ljava/util/HashSet;)V

    .line 209
    return-void
.end method

.method private setCancelListener(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "alert"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 415
    const v0, 0x7f070013

    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$7;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    return-void
.end method

.method private setDismissListener(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "alert"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 423
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$8;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    return-void
.end method

.method private showAlertDialog()V
    .locals 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->dismissPreviousAlertDialog()V

    .line 319
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$11;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$settings$MyWordsActivity$DialogType:[I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showWordAlertDialog()V

    goto :goto_0

    .line 324
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showEditWordAlertDialog()V

    goto :goto_0

    .line 327
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->createClearUserDataFromDeviceDialog(Landroid/content/Context;Ljava/util/HashSet;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEditWordAlertDialog()V
    .locals 4

    .prologue
    .line 372
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 373
    .local v1, "editTextField":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 374
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 377
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mOptions:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x7f070019

    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setCancelListener(Landroid/app/AlertDialog$Builder;)V

    .line 405
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setDismissListener(Landroid/app/AlertDialog$Builder;)V

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 408
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 411
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mReadyListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v1, "ActionModeMarkAllEnabled"

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionModeUnMarkAllEnabled:Z

    .line 130
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->values()[Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    move-result-object v1

    const-string v2, "AlertDialogType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 131
    const-string v1, "WordPositionInList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    .line 132
    const-string v1, "WordInList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->initView()V

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->init()V

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 139
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showAlertDialog()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->dispose()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->onBackPressed()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 166
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    const-string v0, "ActionModeMarkAllEnabled"

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActionModeUnMarkAllEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v0, "AlertDialogType"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mActiveDialog:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v0, "WordPositionInList"

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v0, "WordInList"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public showWordAlertDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 335
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setDismissListener(Landroid/app/AlertDialog$Builder;)V

    .line 339
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mWord:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const v4, 0x7f02006c

    .line 342
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f02006e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 345
    .local v2, "icons":[Ljava/lang/Integer;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mOptions:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$PopUpAdapter;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 347
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 368
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 369
    return-void
.end method
