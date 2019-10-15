.class public Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;
.super Ljava/lang/Object;
.source "RemoveDictionaryWordsController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mListeners:[Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

.field private mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

.field private mToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

.field private mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-array v0, v4, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "remove-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/IPredictive;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/ned/model/IUserDictionary;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;)Lcom/sonyericsson/ned/model/IUserDictionary;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;
    .param p1, "x1"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->fireOnRemoveWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Toast;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->changeToastTextAlignmentToCenter(Landroid/widget/Toast;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private static changeToastTextAlignmentToCenter(Landroid/widget/Toast;)V
    .locals 2
    .param p0, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "toastView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "toastView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    :cond_0
    return-void
.end method

.method private dismissPreviousAlertDialog()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_0
    return-void
.end method

.method private fireOnRemoveWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mListeners:[Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mListeners:[Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 118
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IRemoveWordsListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/controller/IRemoveWordsListener;->onWordRemoved(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IRemoveWordsListener;
    :cond_0
    return-void
.end method

.method private showRemoveWordDialog(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->dismissPreviousAlertDialog()V

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 92
    const v1, 0x7f07009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    const v1, 0x7f07009c

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->updateWindowParams(Landroid/app/Dialog;)V

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method

.method private updateWindowParams(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 125
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 128
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 129
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    if-ne p2, v0, :cond_0

    .line 160
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mListeners:[Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mListeners:[Lcom/sonyericsson/ned/controller/IRemoveWordsListener;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/IUserDictionary;

    if-ne p2, v0, :cond_1

    .line 147
    check-cast p1, Lcom/sonyericsson/ned/model/IUserDictionary;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mUserDictionary:Lcom/sonyericsson/ned/model/IUserDictionary;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/IPredictive;

    if-ne p2, v0, :cond_2

    .line 149
    check-cast p1, Lcom/sonyericsson/ned/model/IPredictive;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    goto :goto_0

    .line 150
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_3

    .line 151
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 152
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    if-ne p2, v0, :cond_0

    .line 153
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mToken:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->dismissPreviousAlertDialog()V

    .line 184
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0xa

    return v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 76
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 77
    .local v0, "word":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v1, v0}, Lcom/sonyericsson/ned/model/IPredictive;->isNewWord(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->showRemoveWordDialog(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 137
    return-void
.end method
