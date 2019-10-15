.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;
.super Ljava/lang/Object;
.source "KeyResourceProvider.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/collaboration/Optional;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;
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


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEnterKeyAction:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field private final mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;)V
    .locals 0
    .param p1, "enterKeyAction"    # Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftFunctionKeyContent"    # Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mEnterKeyAction:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    .line 33
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
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
    .line 44
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 37
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_0

    .line 38
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mContext:Landroid/content/Context;

    .line 40
    :cond_0
    return-void
.end method

.method public getEnterKeyLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "icon-enter"

    .line 61
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$1;->$SwitchMap$com$sonyericsson$textinput$uxp$configuration$Requirement$EnterKeyAction:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mEnterKeyAction:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    :goto_0
    return-object v1

    .line 63
    :pswitch_0
    const v2, 0x7f07004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    goto :goto_0

    .line 66
    :pswitch_1
    const v2, 0x7f07004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    goto :goto_0

    .line 69
    :pswitch_2
    const v2, 0x7f07004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    goto :goto_0

    .line 72
    :pswitch_3
    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    goto :goto_0

    .line 75
    :pswitch_4
    const-string v1, "icon-search"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_5
    const v2, 0x7f070053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getEnterKeyShortLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "icon-enter"

    .line 90
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$1;->$SwitchMap$com$sonyericsson$textinput$uxp$configuration$Requirement$EnterKeyAction:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mEnterKeyAction:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-object v1

    .line 92
    :pswitch_1
    const v2, 0x7f07004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    const v2, 0x7f07004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    goto :goto_0

    .line 98
    :pswitch_3
    const v2, 0x7f070050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_4
    const v2, 0x7f070052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    goto :goto_0

    .line 104
    :pswitch_5
    const v2, 0x7f070054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->mLeftFunctionKeyContent:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    return-object v0
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
    .line 49
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method
