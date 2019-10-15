.class Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$1;
.super Ljava/lang/Object;
.source "SimpleMenuPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSelectedValue(I)V

    .line 71
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
