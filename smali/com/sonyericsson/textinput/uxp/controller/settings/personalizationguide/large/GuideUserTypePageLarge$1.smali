.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge$1;
.super Ljava/lang/Object;
.source "GuideUserTypePageLarge.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideUserTypePageLarge;Landroid/content/res/Resources;I)V

    .line 33
    return-void
.end method
