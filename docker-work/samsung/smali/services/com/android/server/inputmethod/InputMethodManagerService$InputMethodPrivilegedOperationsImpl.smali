.class public final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field public final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 7366
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 7367
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7368
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    .registers 4

    .line 7508
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mapplyImeVisibility(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 7390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    .line 7391
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 7390
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 7393
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_14
    return-void
.end method

.method public hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 7436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    const/4 p0, 0x0

    .line 7437
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    .line 7439
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_10
    return-void
.end method

.method public notifyUserActionAsync()V
    .registers 2

    .line 7502
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mnotifyUserAction(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStylusHandwritingReady(II)V
    .registers 3

    .line 7514
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monStylusHandwritingReady(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    return-void
.end method

.method public reportFullscreenModeAsync(Z)V
    .registers 3

    .line 7400
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportFullscreenMode(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 3

    .line 7380
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportStartInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public resetStylusHandwriting(I)V
    .registers 2

    .line 7520
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetStylusHandwriting(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-void
.end method

.method public setImeWindowStatusAsync(II)V
    .registers 4

    .line 7374
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetImeWindowStatus(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    return-void
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 7409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7410
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    .line 7412
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_10
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 7423
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 p0, 0x0

    .line 7424
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    .line 7426
    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_10
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    .line 7493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshouldOfferSwitchingToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 7495
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_14
    return-void
.end method

.method public showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 7449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    const/4 p0, 0x0

    .line 7450
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    .line 7452
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_10
    return-void
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 7481
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 7483
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_14
    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    .line 7468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 7470
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_14
    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 4

    .line 7459
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateStatusIcon(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
