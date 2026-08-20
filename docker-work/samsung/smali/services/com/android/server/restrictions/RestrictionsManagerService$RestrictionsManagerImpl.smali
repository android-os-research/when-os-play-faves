.class public Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
.super Landroid/content/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/restrictions/RestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictionsManagerImpl"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/IDevicePolicyManager;

.field public final mUm:Landroid/os/IUserManager;

.field public final synthetic this$0:Lcom/android/server/restrictions/RestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->this$0:Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-direct {p0}, Landroid/content/IRestrictionsManager$Stub;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    .line 66
    # invokes: Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    invoke-static {p1, p2}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/os/IUserManager;

    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    const-string p2, "device_policy"

    .line 67
    # invokes: Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;
    invoke-static {p1, p2}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Landroid/app/admin/IDevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 132
    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_5b

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 135
    :try_start_c
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 136
    invoke-interface {p0, v5}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 142
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.content.action.REQUEST_LOCAL_APPROVAL"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v8, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, v8

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 147
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_4a

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_56

    .line 153
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_4a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5b

    .line 139
    :cond_4e
    :try_start_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot request permission without a restrictions provider registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p0

    .line 153
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0

    :cond_5b
    :goto_5b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 190
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 192
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_26

    .line 193
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    invoke-interface {p0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public hasRestrictionsProvider()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 81
    :try_start_d
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1a

    if-eqz p0, :cond_16

    const/4 v2, 0x1

    .line 83
    :cond_16
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1a
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    throw p0

    :cond_1f
    return v2
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_4b

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 168
    :try_start_10
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 172
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Restrictions provider does not match caller "

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.content.extra.RESPONSE_BUNDLE"

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_46

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4b

    .line 170
    :cond_3e
    :try_start_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No restrictions provider registered for user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p0

    :cond_4b
    :goto_4b
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 98
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_56

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 102
    :try_start_10
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    .line 103
    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_49

    const-string v5, "Package name does not match caller "

    .line 110
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.content.action.REQUEST_PERMISSION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.content.extra.PACKAGE_NAME"

    .line 115
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.content.extra.REQUEST_TYPE"

    .line 116
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.content.extra.REQUEST_ID"

    .line 117
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.content.extra.REQUEST_BUNDLE"

    .line 118
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object p0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_51

    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    .line 106
    :cond_49
    :try_start_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot request permission without a restrictions provider registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p0

    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw p0

    :cond_56
    :goto_56
    return-void
.end method
