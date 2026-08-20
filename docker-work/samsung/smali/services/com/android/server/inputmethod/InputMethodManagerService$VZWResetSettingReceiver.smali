.class public Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VZWResetSettingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 7534
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 7537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 7538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VZWResetSettingReceiver : onReceive() intentAction"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 7539
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 7540
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    .line 7541
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->changeKeyboardForVZWResetSetting()V

    :cond_2c
    return-void
.end method
