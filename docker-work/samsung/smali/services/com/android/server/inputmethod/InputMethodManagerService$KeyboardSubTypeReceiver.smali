.class public Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyboardSubTypeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 7705
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 7708
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 7710
    :try_start_c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SamsungIME.Subtype"

    .line 7711
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 7712
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception p0

    .line 7714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeyboardSubTypeReceiver : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return-void
.end method
