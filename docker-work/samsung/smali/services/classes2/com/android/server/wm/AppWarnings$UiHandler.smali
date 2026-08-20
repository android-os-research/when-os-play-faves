.class public final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UiHandler"
.end annotation


# static fields
.field public static final MSG_HIDE_DIALOGS_FOR_PACKAGE:I = 0x4

.field public static final MSG_HIDE_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x2

.field public static final MSG_SHOW_DEPRECATED_TARGET_SDK_DIALOG:I = 0x5

.field public static final MSG_SHOW_UNSUPPORTED_COMPILE_SDK_DIALOG:I = 0x3

.field public static final MSG_SHOW_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .registers 4

    .line 421
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 422
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 427
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_3f

    .line 444
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 445
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3f

    .line 440
    :cond_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 441
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V

    goto :goto_3f

    .line 436
    :cond_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3f

    .line 433
    :cond_30
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V

    goto :goto_3f

    .line 429
    :cond_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 430
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    :goto_3f
    return-void
.end method

.method public hideDialogsForPackage(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    .line 471
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .registers 2

    const/4 v0, 0x2

    .line 456
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x5

    .line 466
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x3

    .line 461
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
