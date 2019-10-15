.class public final Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
.super Ljava/lang/Object;
.source "ResourceLookupProvider.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;
    }
.end annotation


# static fields
.field private static final BOTTOM_ROW_LAYOUT_SUFFIX:Ljava/lang/String; = "bottom_row"

.field private static final FIELD_VALUE_NONE:I = -0x1

.field private static final PREFIX_DOCKED:Ljava/lang/String; = ""

.field private static final PREFIX_MINI:Ljava/lang/String; = "mini_"

.field private static final PREFIX_NUMERIC_KEYS:Ljava/lang/String; = "num_"

.field private static final PREFIX_ONE_HANDED:Ljava/lang/String; = "one_handed_"

.field private static final PREFIX_PHONEPAD_LAYOUT:Ljava/lang/String; = "abc"

.field private static final PREFIX_SMILEY_LAYOUT:Ljava/lang/String; = "popup"

.field private static final PREFIX_SPLIT:Ljava/lang/String; = "split_"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TEMPLATE_LAYOUT_SUFFIX:Ljava/lang/String; = "template"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

.field private final mFloatingKeyboardType:Ljava/lang/String;

.field private mIsLandscape:Z

.field private final mIsNumericKeysEnabled:Z

.field private final mIsOneHandedKeyboard:Z

.field private mResources:Landroid/content/res/Resources;

.field private mStatePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "floatingKeyboardType"    # Ljava/lang/String;
    .param p2, "isOneHandedKeyboard"    # Z
    .param p3, "isNumericKeysEnabled"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mFloatingKeyboardType:Ljava/lang/String;

    .line 111
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsOneHandedKeyboard:Z

    .line 112
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsNumericKeysEnabled:Z

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->createStatePrefix()V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createStatePrefix()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "mini_"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "split_"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsOneHandedKeyboard:Z

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "one_handed_"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDimenId(Ljava/lang/String;)I
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 176
    const-class v1, Lcom/sonyericsson/textinput/uxp/R$dimen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 179
    const-class v1, Lcom/sonyericsson/textinput/uxp/R$dimen;

    invoke-static {v1, v4, v4, p1}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    :cond_0
    if-nez v0, :cond_1

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find resource name or value for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getFractionId(Ljava/lang/String;)I
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 198
    const-class v1, Lcom/sonyericsson/textinput/uxp/R$fraction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 202
    const-class v1, Lcom/sonyericsson/textinput/uxp/R$fraction;

    invoke-static {v1, v4, v4, p1}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    :cond_0
    if-nez v0, :cond_1

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find resource name or value for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getXmlLayoutId(Ljava/lang/String;)I
    .locals 13
    .param p1, "layoutPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 224
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 225
    .local v8, "layoutNameStartIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "layoutName":Ljava/lang/String;
    const-string v9, "abc"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 227
    .local v4, "isPhonepad":Z
    const-string v9, "popup"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 228
    .local v5, "isSmileyPopup":Z
    const-string v9, "template"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 229
    .local v6, "isTemplate":Z
    const-string v9, "bottom_row"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 232
    .local v3, "isBottomRow":Z
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    iget-boolean v9, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsNumericKeysEnabled:Z

    if-eqz v9, :cond_0

    if-eqz v3, :cond_2

    .line 233
    :cond_0
    move-object v0, v7

    .line 238
    .local v0, "fieldName":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-interface {v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;->getKeyboardLayoutVariant()Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->DEFAULT:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;

    invoke-virtual {v9, v10}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization$KeyboardLayoutVariant;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-interface {v10}, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;->getLayoutIdPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "fieldNameWithType":Ljava/lang/String;
    const-class v9, Lcom/sonyericsson/textinput/uxp/R$xml;

    .line 242
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 241
    invoke-static {v9, v12, v10, v1}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 243
    .local v2, "fieldValue":I
    if-eq v2, v11, :cond_3

    .line 251
    .end local v1    # "fieldNameWithType":Ljava/lang/String;
    :cond_1
    return v2

    .line 235
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldValue":I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "num_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fieldName":Ljava/lang/String;
    goto :goto_0

    .line 248
    :cond_3
    const-class v9, Lcom/sonyericsson/textinput/uxp/R$xml;

    .line 249
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 248
    invoke-static {v9, v12, v10, v0}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    .restart local v2    # "fieldValue":I
    if-ne v2, v11, :cond_1

    .line 254
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find resource name or value for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
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
    .line 143
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
    .line 134
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 135
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mContext:Landroid/content/Context;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    if-ne p2, v0, :cond_0

    .line 137
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->getDimenId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found exception for fieldName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 260
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 261
    .local v1, "tempVal":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->getDimenId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 262
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 263
    .end local v1    # "tempVal":Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found exception for fieldName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFraction(Ljava/lang/String;II)F
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->getFractionId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found exception for fieldName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mStatePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const v0, 0x7f0500a0

    if-ne p1, v0, :cond_0

    .line 292
    const p1, 0x7f0500ba

    .line 295
    .end local p1    # "id":I
    :cond_0
    return p1
.end method

.method public getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 4
    .param p1, "layoutName"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->getXmlLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found exception for fieldName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 148
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mResources:Landroid/content/res/Resources;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->mIsLandscape:Z

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->createStatePrefix()V

    .line 157
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
