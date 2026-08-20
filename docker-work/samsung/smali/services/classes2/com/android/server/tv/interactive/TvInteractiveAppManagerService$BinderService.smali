.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
.super Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    return-void
.end method


# virtual methods
.method public createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 10

    .line 1130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createBiInteractiveApp"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1136
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1138
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1140
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in createBiInteractiveApp"

    .line 1143
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1145
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1148
    throw p0
.end method

.method public createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 9

    .line 1508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1509
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createMediaView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1513
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1515
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    .line 1516
    invoke-interface {p0, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_2f

    :catchall_25
    move-exception p0

    goto :goto_34

    :catch_27
    move-exception p0

    :try_start_28
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in createMediaView"

    .line 1518
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    :goto_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1522
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1520
    :goto_34
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_25

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 1522
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw p0
.end method

.method public createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v1, p5

    .line 779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 781
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "createSession"

    invoke-static {v2, v10, v9, v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v13

    .line 783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 786
    :try_start_1a
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_13f

    .line 787
    :try_start_21
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_4b

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 790
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 791
    monitor-exit v16
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_136

    .line 837
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 793
    :cond_4b
    :try_start_4b
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1, v13}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v17

    .line 794
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v18, :cond_87

    const-string v1, "TvInteractiveAppManagerService"

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find state for iAppServiceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 798
    monitor-exit v16
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_136

    .line 837
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 800
    :cond_87
    :try_start_87
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v2

    .line 801
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-nez v1, :cond_c5

    .line 803
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 803
    invoke-static {v1, v2, v3, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 805
    new-instance v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v4, p2

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    .line 807
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v8

    goto :goto_c7

    :cond_c5
    move-object/from16 v19, v1

    .line 810
    :goto_c7
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 811
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 812
    monitor-exit v16
    :try_end_db
    .catchall {:try_start_87 .. :try_end_db} :catchall_136

    .line 837
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 816
    :cond_df
    :try_start_df
    new-instance v12, Landroid/os/Binder;

    invoke-direct {v12}, Landroid/os/Binder;-><init>()V

    .line 817
    new-instance v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_ec
    .catchall {:try_start_df .. :try_end_ec} :catchall_136

    const/16 v20, 0x0

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-wide/from16 v21, v14

    move-object v14, v11

    move v11, v13

    move-object v15, v12

    move-object/from16 v12, v20

    :try_start_ff
    invoke-direct/range {v1 .. v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;IIIILcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState-IA;)V

    .line 822
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v1

    if-eqz v1, :cond_128

    .line 828
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v19 .. v19}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    invoke-static {v1, v2, v15, v13}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_131

    .line 830
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v15, v13}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    goto :goto_131

    .line 833
    :cond_128
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1, v13}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 835
    :cond_131
    :goto_131
    monitor-exit v16
    :try_end_132
    .catchall {:try_start_ff .. :try_end_132} :catchall_13d

    .line 837
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_136
    move-exception v0

    move-wide/from16 v21, v14

    .line 835
    :goto_139
    :try_start_139
    monitor-exit v16
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_13d

    :try_start_13a
    throw v0
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_13b

    :catchall_13b
    move-exception v0

    goto :goto_142

    :catchall_13d
    move-exception v0

    goto :goto_139

    :catchall_13f
    move-exception v0

    move-wide/from16 v21, v14

    .line 837
    :goto_142
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    throw v0
.end method

.method public destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1157
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "destroyBiInteractiveApp"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1162
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1164
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1166
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->destroyBiInteractiveApp(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in destroyBiInteractiveApp"

    .line 1168
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1172
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1170
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1172
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    throw p0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 11

    .line 1406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1407
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p5

    .line 1409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1411
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1413
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1415
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->dispatchSurfaceChanged(III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in dispatchSurfaceChanged"

    .line 1418
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1422
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1420
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1422
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    throw p0
.end method

.method public getTvInteractiveAppServiceList(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInteractiveAppServiceList"

    .line 646
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 650
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_62

    .line 651
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 652
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fputmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Z)V

    .line 655
    :cond_2f
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 656
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 658
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 660
    :cond_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_5f

    .line 663
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_5f
    move-exception p0

    .line 661
    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    .line 663
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw p0
.end method

.method public notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V
    .registers 9

    .line 1451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1453
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyAdResponse"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1457
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1459
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1461
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyAdResponse(Landroid/media/tv/AdResponse;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyAdResponse"

    .line 1463
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1467
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1465
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1467
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    throw p0
.end method

.method public notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V
    .registers 9

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1430
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1431
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyBroadcastInfoResponse"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1435
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1437
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1439
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyBroadcastInfoResponse"

    .line 1441
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1445
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1443
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1445
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    throw p0
.end method

.method public notifyContentAllowed(Landroid/os/IBinder;I)V
    .registers 8

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 986
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 987
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyContentAllowed"

    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 991
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 993
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 995
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyContentAllowed()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyContentAllowed"

    .line 997
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1001
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 999
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1001
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw p0
.end method

.method public notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1009
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyContentBlocked"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1011
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1013
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1015
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1017
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyContentBlocked(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyContentBlocked"

    .line 1019
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1023
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1021
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1023
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    throw p0
.end method

.method public notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10

    .line 1357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1358
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1359
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "notifyError"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1363
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1365
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1366
    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1367
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyError"

    .line 1369
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1373
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1371
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1373
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    throw p0
.end method

.method public notifySignalStrength(Landroid/os/IBinder;II)V
    .registers 9

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1031
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifySignalStrength"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1035
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 1037
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1039
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifySignalStrength(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifySignalStrength"

    .line 1041
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 1045
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1043
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 1045
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    throw p0
.end method

.method public notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 10

    .line 892
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 893
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "notifyTrackSelected"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 896
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 898
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 900
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 902
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTrackSelected(ILjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyTrackSelected"

    .line 904
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 908
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 906
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 908
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    throw p0
.end method

.method public notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .line 919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 920
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "notifyTracksChanged"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 925
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 927
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 929
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTracksChanged(Ljava/util/List;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyTracksChanged"

    .line 931
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 935
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 933
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 935
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    throw p0
.end method

.method public notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 9

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "notifyTuned"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 871
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 873
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 875
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyTuned(Landroid/net/Uri;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyTuned"

    .line 877
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 881
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 879
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 881
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw p0
.end method

.method public notifyVideoAvailable(Landroid/os/IBinder;I)V
    .registers 8

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 943
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyVideoAvailable"

    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 947
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 949
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 951
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyVideoAvailable()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyVideoAvailable"

    .line 953
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 957
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 955
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 957
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    throw p0
.end method

.method public notifyVideoUnavailable(Landroid/os/IBinder;II)V
    .registers 9

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 964
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "notifyVideoUnavailable"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 969
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 971
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 973
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->notifyVideoUnavailable(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2d
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p0

    :try_start_2e
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyVideoUnavailable"

    .line 975
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    .line 979
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 977
    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    :try_start_3b
    throw p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 979
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    throw p0
.end method

.method public registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 669
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerAppLinkInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p3

    .line 669
    invoke-static {v1, v2, v3, v6, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v8

    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 673
    :try_start_2c
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_af
    .catchall {:try_start_2c .. :try_end_33} :catchall_ad

    .line 674
    :try_start_33
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v12

    .line 675
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v1, :cond_60

    const-string v0, "TvInteractiveAppManagerService"

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to registerAppLinkInfo - unknown TIAS id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_aa

    .line 699
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 681
    :cond_60
    :try_start_60
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 682
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    const/4 v14, 0x1

    if-nez v1, :cond_92

    .line 684
    new-instance v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v6, 0x0

    move-object v1, v15

    move-object v3, v13

    move-object/from16 v4, p1

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    .line 686
    invoke-static {v15, v7, v14}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 687
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v13, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_a8

    .line 689
    :cond_92
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 690
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_a8

    .line 692
    :cond_a0
    invoke-static {v1, v7, v14}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 693
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v13, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 695
    :goto_a8
    monitor-exit v11

    goto :goto_b7

    :catchall_aa
    move-exception v0

    monitor-exit v11
    :try_end_ac
    .catchall {:try_start_60 .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v0
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_ad} :catch_af
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception v0

    goto :goto_bb

    :catch_af
    move-exception v0

    :try_start_b0
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in registerAppLinkInfo"

    .line 697
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    .line 699
    :goto_b7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_bb
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v0
.end method

.method public registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .registers 7

    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1475
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "registerCallback"

    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1479
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3b

    .line 1480
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 1481
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "TvInteractiveAppManagerService"

    const-string p1, "client process has already died"

    .line 1482
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_38

    .line 1486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_38
    move-exception p0

    .line 1484
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 1486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    throw p0
.end method

.method public relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 8

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1529
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutMediaView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1533
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    .line 1535
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    .line 1536
    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->relayoutMediaView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_30

    :catchall_26
    move-exception p0

    goto :goto_35

    :catch_28
    move-exception p0

    :try_start_29
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in relayoutMediaView"

    .line 1538
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1542
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1540
    :goto_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_26

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 1542
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    throw p0
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 7

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 847
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 851
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_29

    .line 852
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 853
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    .line 853
    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    throw p0
.end method

.method public removeMediaView(Landroid/os/IBinder;I)V
    .registers 7

    .line 1548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeMediaView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1553
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    .line 1555
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    .line 1556
    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->removeMediaView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_30

    :catchall_26
    move-exception p0

    goto :goto_35

    :catch_28
    move-exception p0

    :try_start_29
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in removeMediaView"

    .line 1558
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1562
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1560
    :goto_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_26

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 1562
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw p0
.end method

.method public resetInteractiveApp(Landroid/os/IBinder;I)V
    .registers 8

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1105
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "resetInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1110
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1112
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1114
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->resetInteractiveApp()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in reset"

    .line 1116
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1120
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1118
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1120
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    throw p0
.end method

.method public sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 16

    .line 741
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "sendAppLinkCommand"

    .line 741
    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 745
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_96
    .catchall {:try_start_15 .. :try_end_1c} :catchall_94

    .line 746
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v3

    .line 747
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v4, :cond_49

    const-string p0, "TvInteractiveAppManagerService"

    .line 749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to sendAppLinkCommand - unknown TIAS id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_91

    .line 771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 753
    :cond_49
    :try_start_49
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 754
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-nez v4, :cond_79

    .line 756
    new-instance v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v9, 0x0

    move-object v4, v11

    move-object v6, v10

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    .line 758
    invoke-static {v11, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/os/Bundle;)V

    .line 759
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v10, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_8f

    .line 761
    :cond_79
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 762
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    goto :goto_8f

    .line 764
    :cond_87
    invoke-static {v4, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/os/Bundle;)V

    .line 765
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v10, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 767
    :goto_8f
    monitor-exit v2

    goto :goto_9e

    :catchall_91
    move-exception p0

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_49 .. :try_end_93} :catchall_91

    :try_start_93
    throw p0
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_94} :catch_96
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p0

    goto :goto_a2

    :catch_96
    move-exception p0

    :try_start_97
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendAppLinkCommand"

    .line 769
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_94

    .line 771
    :goto_9e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_a2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw p0
.end method

.method public sendCurrentChannelLcn(Landroid/os/IBinder;II)V
    .registers 9

    .line 1231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1232
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentChannelLcn"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1237
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1239
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1241
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentChannelLcn(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentChannelLcn"

    .line 1243
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1247
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1245
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1247
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    throw p0
.end method

.method public sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 9

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentChannelUri"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1212
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1214
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1216
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentChannelUri(Landroid/net/Uri;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentChannelUri"

    .line 1218
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1222
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1220
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1222
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    throw p0
.end method

.method public sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    .line 1306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1307
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentTvInputId"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1312
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1314
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1316
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendCurrentTvInputId(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentTvInputId"

    .line 1318
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1320
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw p0
.end method

.method public sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .registers 10

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1333
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendSigningResult"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1338
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1340
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1342
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendSigningResult(Ljava/lang/String;[B)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendSigningResult"

    .line 1344
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1346
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw p0
.end method

.method public sendStreamVolume(Landroid/os/IBinder;FI)V
    .registers 9

    .line 1256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1257
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendStreamVolume"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1262
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1264
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1266
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendStreamVolume(F)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendStreamVolume"

    .line 1268
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1272
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1270
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1272
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw p0
.end method

.method public sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1282
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendTrackInfoList"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1287
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1289
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1291
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->sendTrackInfoList(Ljava/util/List;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendTrackInfoList"

    .line 1293
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1297
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1295
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1297
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    throw p0
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 9

    .line 1379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1380
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1385
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_42

    .line 1387
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1389
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->setSurface(Landroid/view/Surface;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_40

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p3, "error in setSurface"

    .line 1391
    invoke-static {p1, p3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    if-eqz p2, :cond_3c

    .line 1397
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1399
    :cond_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1393
    :goto_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2c

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    if-eqz p2, :cond_48

    .line 1397
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1399
    :cond_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    throw p0
.end method

.method public setTeletextAppEnabled(Landroid/os/IBinder;ZI)V
    .registers 9

    .line 1181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1182
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setTeletextAppEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1187
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1189
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1191
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->setTeletextAppEnabled(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in setTeletextAppEnabled"

    .line 1193
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1197
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1195
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1197
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    throw p0
.end method

.method public startInteractiveApp(Landroid/os/IBinder;I)V
    .registers 8

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1055
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1060
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1062
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1064
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->startInteractiveApp()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in start"

    .line 1066
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1070
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1068
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1070
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw p0
.end method

.method public stopInteractiveApp(Landroid/os/IBinder;I)V
    .registers 8

    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1080
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopInteractiveApp"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1085
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3d

    .line 1087
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p1

    .line 1089
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->stopInteractiveApp()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in stop"

    .line 1091
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 1095
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1093
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1095
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw p0
.end method

.method public unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 705
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterAppLinkInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p3

    .line 705
    invoke-static {v1, v2, v3, v6, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v8

    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 709
    :try_start_2c
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_af
    .catchall {:try_start_2c .. :try_end_33} :catchall_ad

    .line 710
    :try_start_33
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v12

    .line 711
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v1, :cond_60

    const-string v0, "TvInteractiveAppManagerService"

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to unregisterAppLinkInfo - unknown TIAS id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_aa

    .line 735
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 717
    :cond_60
    :try_start_60
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 718
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    const/4 v14, 0x0

    if-nez v1, :cond_92

    .line 720
    new-instance v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v6, 0x0

    move-object v1, v15

    move-object v3, v13

    move-object/from16 v4, p1

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState-IA;)V

    .line 722
    invoke-static {v15, v7, v14}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 723
    invoke-static {v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v13, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_a8

    .line 725
    :cond_92
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 726
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_a8

    .line 728
    :cond_a0
    invoke-static {v1, v7, v14}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V

    .line 729
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v13, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 731
    :goto_a8
    monitor-exit v11

    goto :goto_b7

    :catchall_aa
    move-exception v0

    monitor-exit v11
    :try_end_ac
    .catchall {:try_start_60 .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v0
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_ad} :catch_af
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception v0

    goto :goto_bb

    :catch_af
    move-exception v0

    :try_start_b0
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in unregisterAppLinkInfo"

    .line 733
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    .line 735
    :goto_b7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_bb
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    throw v0
.end method

.method public unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .registers 7

    .line 1492
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    .line 1492
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1496
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_31

    .line 1497
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 1498
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1499
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2e

    .line 1501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 1499
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 1501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    throw p0
.end method
