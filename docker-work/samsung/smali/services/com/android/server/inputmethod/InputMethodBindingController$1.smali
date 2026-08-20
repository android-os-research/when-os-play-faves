.class public Lcom/android/server/inputmethod/InputMethodBindingController$1;
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

    .line 249
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 251
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 252
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 253
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmVisibleBound(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 254
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 256
    :cond_19
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 263
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 264
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 265
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
