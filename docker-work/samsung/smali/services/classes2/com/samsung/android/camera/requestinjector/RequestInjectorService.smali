.class public Lcom/samsung/android/camera/requestinjector/RequestInjectorService;
.super Lcom/samsung/android/camera/IRequestInjector$Stub;
.source "RequestInjectorService.java"


# static fields
.field public static final INTENT_ACTION_CLOSE:Ljava/lang/String; = "intentfilter.samsung.vtcamerasetting.closecamera"

.field public static final INTENT_ACTION_OPEN:Ljava/lang/String; = "intentfilter.samsung.vtcamerasetting.cameraobserver"

.field public static final INTENT_KEY_CAMERA_ID:Ljava/lang/String; = "camera_open_id"

.field public static final INTENT_KEY_CLOSE_PACKAGE_NAME:Ljava/lang/String; = "camera_close_package_name"

.field public static final INTENT_KEY_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field public static final INTENT_KEY_OPEN_PACKAGE_NAME:Ljava/lang/String; = "camera_open_package_name"

.field public static final PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String; = "com.samsung.android.vtcamerasettings"

.field public static final TAG:Ljava/lang/String; = "RequestInjectorService"


# instance fields
.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mExtraRequestMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mRequestInjectorLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Lcom/samsung/android/camera/CameraServiceWorker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public applyRequests([Landroid/os/PersistableBundle;)V
    .registers 14

    const-string v0, "Invalid request, no KEY_I32/KEY_U8"

    const-string v1, "Invalid request, no TAG_NAME"

    const-string v2, "  "

    const-string v3, "key.tagName"

    .line 178
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_bc

    if-eqz p1, :cond_af

    .line 183
    array-length v4, p1

    const/4 v5, 0x1

    if-lt v4, v5, :cond_af

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyRequests requests size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "RequestInjectorService"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v6, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 195
    :try_start_48
    array-length v6, p1

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v6, :cond_a3

    aget-object v9, p1, v7

    .line 197
    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v10, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9a

    const-string v11, "key.i32"

    .line 206
    invoke-virtual {v9, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    if-nez v11, :cond_97

    const-string v11, "key.u8"

    invoke-virtual {v9, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    if-eqz v9, :cond_8e

    goto :goto_97

    .line 207
    :cond_8e
    invoke-static {v10, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 208
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 203
    :cond_9a
    invoke-static {v10, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 204
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    :try_end_a6
    .catchall {:try_start_48 .. :try_end_a6} :catchall_aa

    .line 214
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_aa
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    throw p0

    .line 184
    :cond_af
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string p1, "Invalid request, null or 0 size"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 185
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_bc
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearRequests()V
    .registers 10

    .line 225
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6b

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 233
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_66

    .line 234
    :try_start_11
    iget-object v3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 238
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v7, "key.i32"

    .line 239
    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-eqz v7, :cond_40

    const-string v7, "key.i32"

    new-array v8, v6, [I

    .line 240
    invoke-virtual {v5, v7, v8}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_40
    const-string v7, "key.u8"

    .line 242
    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-eqz v7, :cond_4f

    const-string v7, "key.u8"

    new-array v6, v6, [I

    .line 243
    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 246
    :cond_4f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_53
    new-array v3, v6, [Landroid/os/PersistableBundle;

    .line 249
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/PersistableBundle;

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 250
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_63

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p0

    .line 250
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw p0

    .line 227
    :cond_6b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 8

    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a5

    :try_start_4
    const-string v1, "\n\tDump of Request Injector Service Activity"

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\t\tInterface v2 Hash:b05ff96f01de43f1b43fef6b50a2aa6a578c5be3"

    .line 327
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tTotal # of ExtraRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "key.tagName"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", i32 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "key.i32"

    .line 331
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const-string v5, "null"

    .line 332
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", u8 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "key.u8"

    .line 333
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v4, "null"

    .line 334
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 336
    :cond_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_4 .. :try_end_a0} :catchall_a2

    .line 337
    monitor-exit p0

    return-void

    :catchall_a2
    move-exception p1

    .line 336
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw p1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "b05ff96f01de43f1b43fef6b50a2aa6a578c5be3"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public final pkgInstalledOrNot(Ljava/lang/String;)Z
    .registers 3

    .line 87
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x4

    .line 90
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_35

    .line 91
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1d

    if-eqz p0, :cond_35

    :cond_1b
    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pkgInstalledOrNot "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestInjectorService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public sendAllExtraRequestsToRequestInjector()V
    .registers 4

    const-string v0, "RequestInjectorService"

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/PersistableBundle;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 265
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    .registers 11

    const-string v0, "RequestInjectorService"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 274
    :try_start_30
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_12c

    .line 275
    :try_start_33
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_36
    if-ge v3, v1, :cond_a2

    aget-object v4, p1, v3

    const-string v5, "RequestInjectorService"

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v5, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    const-string v5, "key.i32"

    .line 279
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_77

    const-string v5, "key.i32"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_88

    :cond_77
    const-string v5, "key.u8"

    .line 280
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_94

    const-string v5, "key.u8"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_94

    .line 281
    :cond_88
    iget-object v5, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string v6, "key.tagName"

    invoke-virtual {v4, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    .line 283
    :cond_94
    iget-object v5, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string v6, "key.tagName"

    invoke-virtual {v4, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 288
    :cond_a2
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    :goto_a8
    if-nez v1, :cond_dc

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_cd

    const-string p0, "RequestInjectorService"

    const-string p1, "Native camera service not available."

    .line 292
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string p1, "Native camera service not available."

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 294
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_33 .. :try_end_be} :catchall_129

    const-string p1, "RequestInjectorService"

    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    .line 319
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 320
    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_cd
    const-wide/16 v2, 0x64

    .line 298
    :try_start_cf
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d2} :catch_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_129

    .line 302
    :catch_d2
    :try_start_d2
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_129

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    goto :goto_a8

    .line 306
    :cond_dc
    :try_start_dc
    invoke-interface {v1, p1}, Landroid/hardware/ICameraService;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_e3

    goto :goto_117

    :cond_e3
    const-string p0, "RequestInjectorService"

    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    .line 307
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 310
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Fail to apply request. Please check log"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_f9} :catch_f9
    .catchall {:try_start_dc .. :try_end_f9} :catchall_129

    :catch_f9
    move-exception p0

    :try_start_fa
    const-string p1, "RequestInjectorService"

    const-string v1, "Fail to apply ExtraRequests to Request Injector"

    .line 313
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to apply ExtraRequests to Request Injector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 317
    :goto_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_fa .. :try_end_118} :catchall_129

    const-string p0, "RequestInjectorService"

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 319
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :catchall_129
    move-exception p0

    .line 317
    :try_start_12a
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    :try_start_12b
    throw p0
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12c

    :catchall_12c
    move-exception p0

    const-string p1, "RequestInjectorService"

    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    .line 319
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 321
    throw p0
.end method

.method public tryRegisterCameraOpenListener()V
    .registers 3

    const-string v0, "com.samsung.android.vtcamerasettings"

    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->pkgInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RequestInjectorService"

    if-eqz v0, :cond_29

    const-string v0, "VT Camera Setting exists. Register camera listener."

    .line 106
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;-><init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    goto :goto_33

    :cond_29
    const-string p0, "VT Camera Setting does not exist. Skip register camera listener."

    .line 166
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_33
    return-void
.end method
