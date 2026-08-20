.class public Lcom/android/server/inputmethod/InputMethodBindingController$2;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodBindingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const-string v0, "IMMS.onServiceConnected"

    const-wide/16 v1, 0x20

    .line 276
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 277
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 278
    :try_start_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 279
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->create(Lcom/android/internal/view/IInputMethod;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;->updateCurrentMethodUid()V

    .line 282
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_57

    .line 285
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Service connected without a token!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 287
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 288
    monitor-exit v0

    return-void

    .line 291
    :cond_57
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiating attach with token: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmMethodMap(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/util/ArrayMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 293
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v3

    invoke-static {p2, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V

    .line 294
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getConfigChanges()I

    move-result p1

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result v5

    invoke-virtual {p2, v3, v4, p1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;IZ)V

    .line 296
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 297
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->reRequestCurrentClientSessionLocked()V

    .line 298
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->performOnCreateInlineSuggestionsRequestLocked()V

    .line 304
    :cond_d0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 305
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_a .. :try_end_da} :catchall_de

    .line 306
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_de
    move-exception p0

    .line 305
    :try_start_df
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 335
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 337
    :try_start_3
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCurIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 343
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V

    .line 345
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: mLastBindTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 348
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearInputShowRequestLocked()V

    .line 349
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 351
    :cond_89
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method public final updateCurrentMethodUid()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSettings(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const-wide/16 v3, 0x0

    .line 312
    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_45

    .line 315
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get UID for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    goto :goto_4a

    .line 318
    :cond_45
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    :goto_4a
    return-void
.end method
