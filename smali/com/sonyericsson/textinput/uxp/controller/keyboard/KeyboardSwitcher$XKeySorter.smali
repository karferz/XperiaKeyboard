.class Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XKeySorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$1;

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I
    .locals 2
    .param p1, "object1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .param p2, "object2"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .prologue
    .line 1261
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1257
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    check-cast p2, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;->compare(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I

    move-result v0

    return v0
.end method
