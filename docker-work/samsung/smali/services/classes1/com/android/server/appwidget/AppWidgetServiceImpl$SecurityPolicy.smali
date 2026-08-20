.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecurityPolicy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 5035
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .registers 7

    .line 5146
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5150
    :cond_a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 5154
    :cond_13
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    return v1

    .line 5158
    :cond_1e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 5159
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result p3

    if-eq p3, p2, :cond_34

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p1, :cond_43

    .line 5160
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p1

    if-ne p1, p2, :cond_43

    :cond_34
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.BIND_APPWIDGET"

    .line 5161
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_43

    return v1

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 3

    .line 5111
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .registers 4

    .line 5076
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .registers 8

    const-string v0, "android.permission.BIND_REMOTEVIEWS"

    .line 5055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5057
    :try_start_6
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmPackageManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v3, 0x1000

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_66
    .catchall {:try_start_6 .. :try_end_12} :catchall_61

    const-string v3, "Service "

    if-eqz p0, :cond_44

    .line 5063
    :try_start_16
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_66

    .line 5064
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "does not require "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5060
    :cond_44
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not installed for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_61} :catch_66
    .catchall {:try_start_16 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p0

    .line 5071
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5072
    throw p0

    .line 5071
    :catch_66
    :goto_66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .registers 4

    .line 5043
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result p1

    .line 5045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5047
    :try_start_8
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 5049
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5050
    throw p0
.end method

.method public getGroupParent(I)I
    .registers 3

    .line 5221
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmSecurityPolicy(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result p0

    const/16 v0, -0xa

    if-eq p0, v0, :cond_f

    move p1, p0

    :cond_f
    return p1
.end method

.method public getProfileParent(I)I
    .registers 4

    .line 5208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5210
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 5212
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_22

    .line 5215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xa

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5216
    throw p0
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .registers 5

    .line 5116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_APPWIDGET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    .line 5119
    :catch_d
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .registers 5

    .line 5127
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5128
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mgetUidForPackage(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_35

    .line 5133
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5134
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mensureGroupStateLoadedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 5136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 5137
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmPackagesWithBindWidgetPermission(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    .line 5138
    monitor-exit v1

    return p0

    .line 5140
    :cond_2f
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw p0

    .line 5130
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCallerInstantAppLocked()Z
    .registers 7

    .line 5082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 5085
    :try_start_9
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmPackageManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 5086
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 5087
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmPackageManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    aget-object v4, v4, v3

    .line 5088
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5087
    invoke-interface {p0, v4, v0}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_32
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    .line 5093
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5094
    throw p0

    .line 5093
    :catch_32
    :cond_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public isEnabledGroupProfile(I)Z
    .registers 3

    .line 5038
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5039
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 5

    .line 5239
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne p0, p3, :cond_18

    if-eqz p2, :cond_18

    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 5240
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .registers 4

    .line 5226
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne p1, p2, :cond_10

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isInstantAppLocked(Ljava/lang/String;I)Z
    .registers 5

    .line 5099
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5101
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmPackageManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 5105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5106
    throw p0

    .line 5105
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isParentOrProfile(II)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 5174
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result p0

    if-ne p0, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final isProfileEnabled(I)Z
    .registers 4

    .line 5244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5246
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 5247
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_21

    if-nez p0, :cond_17

    goto :goto_1c

    .line 5251
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5252
    throw p0
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .registers 5

    .line 5179
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p2, v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 5183
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    if-eq v1, v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 5187
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_16

    .line 5232
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-ne p1, p2, :cond_16

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 5233
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isProviderWhiteListed(Ljava/lang/String;I)Z
    .registers 4

    .line 5192
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmDevicePolicyManagerInternal(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5196
    :cond_a
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 5201
    :cond_12
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmDevicePolicyManagerInternal(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    .line 5202
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    move-result-object p0

    .line 5204
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
