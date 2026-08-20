.class public final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 1813
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1963
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v2, p1

    move-wide v3, v8

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V

    return-wide v8
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1971
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v2, p1

    move-wide v3, v8

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V

    return-wide v8
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 2

    .line 1818
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    return-void
.end method

.method public addPowerSaveWhitelistApps(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1831
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$maddPowerSaveWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;Ljava/util/List;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 1833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 2010
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 5

    .line 1977
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1981
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 1983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    throw p0
.end method

.method public getAppIdTempWhitelist()[I
    .registers 1

    .line 1925
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getAppIdUserWhitelist()[I
    .registers 1

    .line 1921
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdUserWhitelistInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getAppIdWhitelist()[I
    .registers 1

    .line 1917
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .registers 1

    .line 1913
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .registers 3

    .line 1908
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1908
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetFullPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 3

    .line 1903
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1903
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetFullPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;
    .registers 3

    .line 1883
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1883
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetRemovedSystemPowerWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .registers 3

    .line 1893
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1893
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetSystemPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 3

    .line 1888
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1888
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetSystemPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserPowerWhitelist()[Ljava/lang/String;
    .registers 3

    .line 1898
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1898
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetUserPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .registers 5

    .line 1937
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/DeviceIdleController;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1941
    :cond_16
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .registers 5

    .line 1929
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/DeviceIdleController;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1933
    :cond_16
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2015
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 5

    .line 1841
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1845
    :try_start_10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmPowerSaveWhitelistAppsExceptIdle(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 1846
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_2d

    .line 1847
    :cond_25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot remove system whitelisted app"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_31

    .line 1850
    :cond_2d
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1851
    throw p0
.end method

.method public removeSystemPowerWhitelistApp(Ljava/lang/String;)V
    .registers 5

    .line 1858
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1862
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 1864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1865
    throw p0
.end method

.method public resetPreIdleTimeoutMode()V
    .registers 4

    .line 1999
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2003
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 2005
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    throw p0
.end method

.method public restoreSystemPowerWhitelistApp(Ljava/lang/String;)V
    .registers 5

    .line 1872
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1876
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 1878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1879
    throw p0
.end method

.method public setPreIdleTimeoutMode(I)I
    .registers 5

    .line 1988
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1992
    :try_start_10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 1994
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1995
    throw p0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1949
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v5, p1

    move-wide v6, v0

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V

    return-wide v0
.end method
