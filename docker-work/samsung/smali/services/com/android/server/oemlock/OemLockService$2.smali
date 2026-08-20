.class public Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceManageCarrierOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    :try_start_9
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->getLockName()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

.method public isDeviceOemUnlocked()Z
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/oemlock/OemLockService;)V

    const-string/jumbo p0, "ro.boot.flash.locked"

    .line 218
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public isOemUnlockAllowed()Z
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 207
    :goto_24
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0, v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceManageCarrierOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    :try_start_9
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0
.end method

.method public isOemUnlockAllowedByUser()Z
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceManageUserOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    :try_start_9
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceManageCarrierOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 135
    :try_start_e
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw p0
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .registers 5

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceManageUserOemUnlockPermission(Lcom/android/server/oemlock/OemLockService;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    :try_start_15
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$misOemUnlockAllowedByAdmin(Lcom/android/server/oemlock/OemLockService;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 171
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 175
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 176
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0, p1}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_4b

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 172
    :cond_3b
    :try_start_3b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Carrier does not allow OEM unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin does not allow OEM unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw p0
.end method
