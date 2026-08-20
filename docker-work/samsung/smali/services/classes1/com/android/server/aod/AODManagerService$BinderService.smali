.class public final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 1143
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 1366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1367
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1370
    :try_start_11
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->-$$Nest$macquireDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 1372
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    throw p0
.end method

.method public addLogText(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1301
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$maddLogTextInternal(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1400
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmContext(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    .line 1402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump AODManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1402
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1407
    :cond_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1409
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    .line 1411
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_48
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    throw p0
.end method

.method public final enforceShell()V
    .registers 2

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$BinderService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1422
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveImageInfo()Ljava/lang/String;
    .registers 3

    .line 1169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1171
    :try_start_4
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mgetActiveImageInfoInternal(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    throw p0
.end method

.method public isAODState()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1181
    :try_start_4
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODSettingHelper(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    throw p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isSViewCoverBrightnessHigh()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmCoverController(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmCoverController(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->isSViewCoverBrightnessHigh()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_24

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 1256
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService$BinderService;->enforceShell()V

    .line 1431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1433
    :try_start_7
    new-instance v3, Lcom/android/server/aod/AODManagerShellCommand;

    move-object v0, p0

    iget-object v4, v0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v4}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmContext(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/aod/AODManagerShellCommand;-><init>(Landroid/content/Context;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_23

    .line 1436
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    throw v0
.end method

.method public readyToScreenTurningOn()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1313
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mreadyToScreenTurningOnInternal(Lcom/android/server/aod/AODManagerService;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1316
    throw p0
.end method

.method public registerAODDozeCallback(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw p0
.end method

.method public registerAODListener(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1324
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    throw p0
.end method

.method public releaseDoze(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 1379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1381
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mreleaseDozeInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    throw p0
.end method

.method public requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 1390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1392
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mrequestAODToastInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1395
    throw p0
.end method

.method public setLiveClockCommand(III[I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    if-nez p4, :cond_12

    .line 1283
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setLiveClockCommand dataArray is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1287
    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->-$$Nest$msetLiveClockCommandInternal(Lcom/android/server/aod/AODManagerService;III[I)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_1e
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 1291
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :catchall_1c
    move-exception p0

    goto :goto_39

    :catch_1e
    move-exception p0

    .line 1289
    :try_start_1f
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed setLiveClockCommand = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_1c

    goto :goto_18

    :goto_38
    return v2

    .line 1291
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1292
    throw p0
.end method

.method public setLiveClockImage(II[BLjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    if-nez p3, :cond_12

    .line 1265
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setLiveClockImage img_buf is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1269
    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->-$$Nest$msetLiveClockImageInternal(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_1e
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 1273
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :catchall_1c
    move-exception p0

    goto :goto_39

    :catch_1e
    move-exception p0

    .line 1271
    :try_start_1f
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed setLiveClockImage = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_1c

    goto :goto_18

    :goto_38
    return v2

    .line 1273
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    throw p0
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object/from16 v0, p0

    .line 1150
    :try_start_6
    iget-object v3, v0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    invoke-static/range {v3 .. v20}, Lcom/android/server/aod/AODManagerService;->-$$Nest$msetLiveClockInfoInternal(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I

    move-result v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_22

    .line 1152
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    throw v0
.end method

.method public setLiveClockNeedle([B)V
    .registers 4

    .line 1159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1161
    :try_start_4
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$msetLiveClockNeedleInternal(Lcom/android/server/aod/AODManagerService;[B)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    throw p0
.end method

.method public unregisterAODDozeCallback(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1357
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$munregisterAODDozeCallbackInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1360
    throw p0
.end method

.method public unregisterAODListener(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1335
    :try_start_9
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$munregisterAODListenerInternal(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 1337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    throw p0
.end method

.method public updateAODTspRect(IIIILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUidOrSystemApp(Lcom/android/server/aod/AODManagerService;)V

    .line 1241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1243
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mupdateAODTspRectInternal(Lcom/android/server/aod/AODManagerService;IIIILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 1245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1246
    throw p0
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mcheckSystemUidOrSystemUiUid(Lcom/android/server/aod/AODManagerService;)V

    .line 1190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1203
    :try_start_9
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetSUPPORT_DUAL_DISPLAY_TSP_NODE()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_db

    const-string v3, "/sys/class/sec/tsp2/input/enabled"

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_28

    :try_start_15
    const-string v2, "/sys/class/sec/tsp1/input/enabled"

    .line 1204
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_26

    :cond_24
    move v2, v6

    goto :goto_37

    :cond_26
    :goto_26
    move v2, v5

    goto :goto_37

    :cond_28
    const-string v2, "/sys/class/sec/tsp/input/enabled"

    .line 1206
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_26

    :goto_37
    if-eqz v2, :cond_cd

    const-string v2, "0"

    .line 1210
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1211
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v6}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;Z)V

    goto :goto_4c

    .line 1213
    :cond_47
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v5}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;Z)V

    .line 1216
    :goto_4c
    sget v2, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v7, 0x1f

    if-lt v2, v7, :cond_cd

    .line 1217
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmInputDeviceManager(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_cd

    .line 1219
    iget-object p3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p3}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;)Z

    move-result p3

    if-eqz p3, :cond_65

    const/16 p3, 0x16

    goto :goto_67

    :cond_65
    const/16 p3, 0x15

    .line 1220
    :goto_67
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_79

    const/16 p4, 0xb

    .line 1222
    iget-object p5, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p5}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmInputDeviceManager(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    move-result-object p5

    invoke-virtual {p5, p4, p3, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenEnabled(IIZ)I

    goto :goto_8a

    .line 1224
    :cond_79
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_80

    const/4 v5, 0x2

    .line 1225
    :cond_80
    iget-object p4, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p4}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmInputDeviceManager(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    move-result-object p4

    invoke-virtual {p4, v5, p3, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setTspEnabled(IIZ)I

    move p4, v5

    .line 1227
    :goto_8a
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeAODCommand: location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cmd="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", devid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsSingleTouchMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsSingleTouchMode(Lcom/android/server/aod/AODManagerService;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_15 .. :try_end_c9} :catchall_db

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1232
    :cond_cd
    :try_start_cd
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mwriteAODCommandInternal(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_cd .. :try_end_d7} :catchall_db

    .line 1234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_db
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    throw p0
.end method
