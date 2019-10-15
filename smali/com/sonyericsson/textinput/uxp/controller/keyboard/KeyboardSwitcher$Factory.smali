.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1189
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$100()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1190
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1191
    const-string v0, "enable-trace-input"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v0, "prediction-activated"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1193
    const-string v0, "secondary-print"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1194
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1196
    const-string v0, "prediction-text-field"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v0, "setup-wizard-visualisation"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, "handwriting-input-start-from-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v0, "show-period-and-comma"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v0, "network-connected"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v0, "floating-keyboard-type"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1203
    const-string v0, "previous-floating-keyboard-type"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1205
    const-string v0, "enable-numeric-keys"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "explore-by-touch"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v0, "enable-one-handed-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1208
    const-string v0, "smart-language-detection"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v0, "persistent-symbol-state"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v0, "show-key-preview"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1215
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;-><init>()V

    .line 1217
    .local v0, "instance":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    const-string v1, "prediction-activated"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$202(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1218
    const-string v1, "enable-trace-input"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$302(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1219
    const-string v1, "prediction-text-field"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1220
    const-string v1, "secondary-print"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$502(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1221
    const-string v1, "setup-wizard-visualisation"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$602(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1222
    const-string v1, "show-period-and-comma"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$702(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1223
    const-string v1, "handwriting-input-start-from-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$802(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1224
    const-string v1, "floating-keyboard-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$902(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1225
    const-string v1, "previous-floating-keyboard-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1002(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    const-string v1, "enable-numeric-keys"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1102(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1227
    const-string v1, "explore-by-touch"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1202(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1228
    const-string v1, "enable-one-handed-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1302(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1229
    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1231
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1400(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;)Ljava/lang/String;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1600(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1502(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1233
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1400(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1800(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1702(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1234
    const-string v1, "smart-language-detection"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1902(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1235
    const-string v1, "persistent-symbol-state"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$2002(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1236
    const-string v1, "show-key-preview"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$2102(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1237
    return-object v0
.end method

.method public onReuse(Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 1242
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    .line 1243
    .local v0, "keyboardSwitcher":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    const-string v1, "floating-keyboard-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$902(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    const-string v1, "prediction-text-field"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1245
    const-string v1, "previous-floating-keyboard-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1002(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1247
    const-string v1, "enable-one-handed-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1302(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1248
    const-string v1, "current-input-method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1400(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1600(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1502(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1252
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1400(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1800(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$1702(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1253
    const-string v1, "show-key-preview"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->access$2102(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z

    .line 1254
    return-void
.end method
