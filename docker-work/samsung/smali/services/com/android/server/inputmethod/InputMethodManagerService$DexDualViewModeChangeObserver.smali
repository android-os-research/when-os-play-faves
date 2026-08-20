.class public Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DexDualViewModeChangeObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 8280
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8281
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 8285
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_3
    const-string v1, "InputMethodManagerService"

    .line 8286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexDualViewModeChangeObserver- selfChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8287
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    .line 8288
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmFocusedDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetDisplayIdOfInputMethodWindowToBeAdded(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_6d

    if-eqz v1, :cond_47

    if-eqz v2, :cond_43

    const-string p1, "InputMethodManagerService"

    const-string v1, "DexDualViewModeChangeObserver  Client because DualView option is change"

    .line 8294
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8295
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 8296
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto :goto_af

    .line 8298
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_af

    :cond_47
    if-eqz v2, :cond_af

    .line 8303
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 8305
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "InputMethodManagerService"

    const-string v1, "DexDualViewModeChangeObserver set Default keyboard"

    .line 8306
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8307
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_af

    .line 8312
    :cond_6d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 8313
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_af

    :cond_79
    if-eqz v1, :cond_8a

    .line 8316
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 8317
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetDisplayIdOfInputMethodWindowToBeAddedForDEX(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mstartInputUncheckedInnerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/internal/inputmethod/InputBindResult;

    goto :goto_af

    :cond_8a
    if-eqz v2, :cond_af

    .line 8321
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 8323
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "InputMethodManagerService"

    const-string v1, "DexDualViewModeChangeObserver set Default keyboard"

    .line 8324
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8325
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 8330
    :cond_af
    :goto_af
    monitor-exit v0

    return-void

    :catchall_b1
    move-exception p0

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_3 .. :try_end_b3} :catchall_b1

    throw p0
.end method

.method public final restorePreviousUsedInputMethod()V
    .registers 8

    .line 8335
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    move-result v0

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p0, "DexDualViewModeChangeObserver : isDexSetting true, so do not need restore"

    .line 8336
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8341
    :cond_18
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 8344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DexDualViewModeChangeObserver : restorePreviousUsedInputMethod - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    if-eqz v0, :cond_b8

    const-string v3, "-1"

    .line 8347
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_b8

    .line 8352
    :cond_47
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misInstalledInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 8353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8354
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 8358
    :cond_6f
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a3

    .line 8360
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 8361
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string v4, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    .line 8364
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8365
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 8366
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 8365
    invoke-virtual {v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 8367
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b7

    :cond_a3
    const-string v0, "DexDualViewModeChangeObserver  restorePreviousUsedInputMethod reset Client because DualView option is change"

    .line 8369
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8370
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 8371
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetDisplayIdOfInputMethodWindowToBeAddedForDEX(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mstartInputUncheckedInnerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/internal/inputmethod/InputBindResult;

    :goto_b7
    return-void

    :cond_b8
    :goto_b8
    const-string p0, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    .line 8348
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
