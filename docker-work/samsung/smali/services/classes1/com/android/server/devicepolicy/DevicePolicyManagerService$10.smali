.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onProvisionFullyManagedDeviceStartedForDualDar(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$errorCode:[I

.field public final synthetic val$mutex:Ljava/lang/Object;

.field public final synthetic val$success:[Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;[Z[ILjava/lang/Object;)V
    .registers 5

    .line 22444
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:[Z

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$errorCode:[I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$mutex:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 22447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DevicePolicyManager"

    .line 22448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualDAR Managed Device Started Service onReceived is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22452
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "com.android.dualdar.started.provisioning_success"

    .line 22453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 22455
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:[Z

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    goto :goto_3f

    .line 22457
    :cond_30
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:[Z

    aput-boolean v0, p1, v0

    .line 22458
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$errorCode:[I

    const-string v1, "ERROR_CODE"

    const/4 v2, 0x5

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    aput p2, p1, v0

    .line 22461
    :goto_3f
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$mutex:Ljava/lang/Object;

    monitor-enter p1

    .line 22462
    :try_start_42
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$mutex:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 22463
    monitor-exit p1

    return-void

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_49

    throw p0
.end method
