.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;
.super Ljava/lang/Object;
.source "XKeyController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/collaboration/Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController$Factory;
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
.field private mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->REQUIRED:[Ljava/lang/Class;

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
    .line 28
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    if-ne p2, v0, :cond_0

    .line 29
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
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
    .line 24
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public getContent()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    if-eqz v2, :cond_1

    .line 43
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 44
    .local v1, "provider":Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;->hasContentToShow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;->getAllContent()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "provider":Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
    :cond_1
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
    .line 37
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public hasContent()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->mXKeyContentProviders:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 55
    .local v0, "provider":Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;->hasContentToShow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    const/4 v1, 0x1

    .line 60
    .end local v0    # "provider":Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
    :cond_0
    return v1

    .line 54
    .restart local v0    # "provider":Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
