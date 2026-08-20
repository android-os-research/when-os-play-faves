.class public Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;
.super Ljava/lang/Object;
.source "MultiControlManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/multicontrol/MultiControlManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiControlAppDeathChecker"
.end annotation


# static fields
.field public static final ACTION_MULTI_CONTROL_DIED:Ljava/lang/String; = "com.samsung.android.inputshare.action.ACTION_MULTI_CONTROL_DIED"

.field public static final RECEIVER_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mListener:Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;II)V
    .registers 5

    .line 450
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mListener:Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

    .line 452
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    .line 453
    iput p3, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mPid:I

    .line 454
    iput p4, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 459
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiControlAppDeathChecker - binderDied"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->resetMultiControlValue()V

    .line 462
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public final resetMultiControlValue()V
    .registers 4

    const-string/jumbo v0, "sendBroadcast - ACTION_MULTI_CONTROL_DIED"

    .line 472
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "in resetMultiControlValue"

    invoke-static {v1, v2}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->forceHideCursor(Z)V

    .line 475
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->setMultiControlOutOfFocus(Z)V

    .line 479
    :try_start_18
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 481
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->resetInputFilter()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_25

    .line 488
    :catch_25
    :cond_25
    :try_start_25
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.inputshare.action.ACTION_MULTI_CONTROL_DIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.inputshare"

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmContext(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception p0

    .line 493
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 466
    invoke-static {}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiControlAppDeathChecker - unlinkToDeath"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
