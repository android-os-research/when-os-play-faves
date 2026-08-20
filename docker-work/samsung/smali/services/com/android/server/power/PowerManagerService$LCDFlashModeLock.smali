.class public Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LCDFlashModeLock"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 8326
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 8327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8328
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    if-eqz p2, :cond_11

    const/4 p1, 0x0

    .line 8331
    :try_start_a
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_11

    .line 8334
    :catch_e
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binderDied()V

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 8339
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "PowerManagerService"

    const-string v2, "LCDFlashModeLock : binderDied"

    .line 8340
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8341
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetLCDFlashModeInternal(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V

    .line 8342
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$minitLCDFlashMode(Lcom/android/server/power/PowerManagerService;)V

    .line 8343
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method
