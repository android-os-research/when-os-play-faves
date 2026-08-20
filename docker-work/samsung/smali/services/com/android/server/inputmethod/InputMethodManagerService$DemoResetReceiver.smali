.class public Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DemoResetReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 7722
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 7725
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 7726
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_SIP_CONFIG_ADDTIONAL_INPUT_METHOD"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_31

    const-string p2, "SOGOU_CUSTOMIZED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    goto :goto_33

    :cond_31
    const-string p1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 7731
    :goto_33
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultIMEForKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    :cond_38
    return-void
.end method
