.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InteractiveAppServiceConnection"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 1872
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 1874
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 1882
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1883
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1886
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1887
    monitor-exit p1

    return-void

    .line 1889
    :cond_1c
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 1890
    invoke-static {p2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/ITvInteractiveAppService;)V

    .line 1893
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object p2

    if-nez p2, :cond_57

    .line 1894
    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-direct {p2, v1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;)V
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_15c

    .line 1896
    :try_start_43
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p2

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_4f
    .catchall {:try_start_43 .. :try_end_4e} :catchall_15c

    goto :goto_57

    :catch_4f
    move-exception p2

    :try_start_50
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in registerCallback"

    .line 1898
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    :cond_57
    :goto_57
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c4

    .line 1903
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object p2

    .line 1904
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1905
    :goto_69
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 1906
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_15c

    .line 1909
    :try_start_79
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 1910
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_9a

    .line 1912
    :cond_8f
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 1914
    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_9d} :catch_a3
    .catchall {:try_start_79 .. :try_end_9d} :catchall_a1

    .line 1919
    :goto_9d
    :try_start_9d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_15c

    goto :goto_69

    :catchall_a1
    move-exception p0

    goto :goto_c0

    :catch_a3
    move-exception v4

    :try_start_a4
    const-string v5, "TvInteractiveAppManagerService"

    .line 1916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in notifyAppLinkInfo("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_a1

    goto :goto_9d

    .line 1919
    :goto_c0
    :try_start_c0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    throw p0

    .line 1924
    :cond_c4
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_117

    .line 1925
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1926
    :goto_d6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 1927
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_e6
    .catchall {:try_start_c0 .. :try_end_e6} :catchall_15c

    .line 1930
    :try_start_e6
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 1931
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f0} :catch_f6
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_f4

    .line 1936
    :goto_f0
    :try_start_f0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_15c

    goto :goto_d6

    :catchall_f4
    move-exception p0

    goto :goto_113

    :catch_f6
    move-exception v4

    :try_start_f7
    const-string v5, "TvInteractiveAppManagerService"

    .line 1933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in sendAppLinkCommand("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_f7 .. :try_end_112} :catchall_f4

    goto :goto_f0

    .line 1936
    :goto_113
    :try_start_113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    throw p0

    .line 1941
    :cond_117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_124
    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 1945
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result v3

    if-nez v3, :cond_124

    .line 1947
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 1951
    :cond_142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_146
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1952
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v1, v0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    goto :goto_146

    .line 1954
    :cond_15a
    monitor-exit p1

    return-void

    :catchall_15c
    move-exception p0

    monitor-exit p1
    :try_end_15e
    .catchall {:try_start_113 .. :try_end_15e} :catchall_15c

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1962
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1966
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1967
    :try_start_f
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    .line 1968
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz p1, :cond_3b

    const/4 v1, 0x1

    .line 1970
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 1971
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 1972
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/ITvInteractiveAppService;)V

    .line 1973
    invoke-static {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;)V

    .line 1975
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mUserId:I

    invoke-static {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 1977
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_3d

    throw p0

    .line 1963
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
