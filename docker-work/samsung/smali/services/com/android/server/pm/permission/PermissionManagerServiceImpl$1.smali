.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$4ZU8kX3OTOWSR2BeFJXv4pmZczs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->lambda$onPermissionRevoked$1(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Ix503j6rCPxSTiPe8XLMGU_n14(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->lambda$onGidsChanged$0(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V

    return-void
.end method

.method public static synthetic lambda$onGidsChanged$0(II)V
    .registers 3

    const-string/jumbo v0, "permission grant or revoke changed gids"

    .line 365
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPermissionRevoked$1(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 391
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->isAppBackupAndRestoreRunning(I)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    .line 395
    :cond_f
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-nez p3, :cond_1c

    const-string/jumbo p1, "permissions revoked"

    .line 397
    invoke-static {p0, p4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    goto :goto_1f

    .line 399
    :cond_1c
    invoke-static {p0, p4, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public final isAppBackupAndRestoreRunning(I)Z
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 410
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 411
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    .line 413
    :goto_27
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "user_setup_personalization_state"

    .line 413
    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_38
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_38} :catch_43

    if-ne p0, v2, :cond_3c

    move p0, v2

    goto :goto_3d

    :cond_3c
    move p0, v1

    :goto_3d
    if-nez v0, :cond_41

    if-eqz p0, :cond_42

    :cond_41
    move v1, v2

    :cond_42
    return v1

    :catch_43
    move-exception p0

    .line 419
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check if the user is in restore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onGidsChanged(II)V
    .registers 4

    .line 365
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 2

    .line 376
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 2

    .line 449
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionUpdated()V

    .line 450
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3

    .line 369
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 372
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRemoved()V
    .registers 2

    .line 438
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .registers 13

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    if-eqz p4, :cond_16

    return-void

    .line 389
    :cond_16
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p4

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 3

    .line 430
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 6

    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionUpdated([IZ)V

    const/4 p2, 0x0

    .line 443
    :goto_4
    array-length v0, p1

    if-ge p2, v0, :cond_1d

    .line 444
    aget v0, p1, p2

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method
