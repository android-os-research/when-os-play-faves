.class public Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxDesktopModeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 7630
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 7659
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    if-eqz p2, :cond_dc

    .line 7660
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 7661
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 7662
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmFocusedDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetDisplayIdOfInputMethodWindowToBeAdded(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result v0

    .line 7663
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Connected"

    .line 7664
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7665
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    move-result p2

    if-nez p2, :cond_38

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p2

    if-nez p2, :cond_dc

    :cond_38
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p2

    if-nez p2, :cond_dc

    .line 7667
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    .line 7669
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7670
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto/16 :goto_dc

    .line 7672
    :cond_5e
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_dc

    .line 7675
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_90

    if-eqz v0, :cond_90

    const-string p2, "InputMethodManagerService"

    .line 7677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind service when Desktop disconnected and Keyboard not in default display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7678
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmDeXDualViewChangeObserver(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->onChange(Z)V

    .line 7680
    :cond_90
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p2

    .line 7681
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1"

    .line 7682
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b1

    if-nez v0, :cond_b0

    goto :goto_b1

    :cond_b0
    move v1, v3

    :cond_b1
    :goto_b1
    if-eqz p2, :cond_c9

    if-eqz v1, :cond_c9

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Disconnected startInputInnerLocked"

    .line 7684
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7685
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 7686
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto :goto_dc

    :cond_c9
    if-nez v1, :cond_d5

    const-string p2, "InputMethodManagerService"

    const-string v0, "KnoxDesktop Disconnected Restore previous inputmethod"

    .line 7689
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7690
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->restorePreviousUsedInputMethod()V

    :cond_d5
    const-string p0, "InputMethodManagerService"

    const-string p2, "KnoxDesktop Disconnected it do not need to unbind service"

    .line 7692
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7696
    :cond_dc
    :goto_dc
    monitor-exit p1

    return-void

    :catchall_de
    move-exception p0

    monitor-exit p1
    :try_end_e0
    .catchall {:try_start_5 .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public final restorePreviousUsedInputMethod()V
    .registers 8

    .line 7634
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_66

    const-string v3, "-1"

    .line 7637
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_66

    .line 7641
    :cond_1b
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misInstalledInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 7642
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7646
    :cond_38
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 7647
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    .line 7649
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7650
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7651
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 7650
    invoke-virtual {v2, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 7652
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_65
    return-void

    :cond_66
    :goto_66
    const-string p0, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    .line 7638
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
