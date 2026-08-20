.class public Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;
.super Landroid/database/ContentObserver;
.source "VtCameraProviderObserver.java"


# static fields
.field public static final INDEX_PACKAGE_NAME:I = 0x1

.field public static final INDEX_UID:I = 0x0

.field public static final MATCH_PATH_QUERY_ALLOWED_APP:Ljava/lang/String; = "AllowedAppInfo"

.field public static final PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String; = "com.samsung.android.vtcamerasettings"

.field public static final TAG:Ljava/lang/String; = "VtCameraProviderObserver"

.field public static final VT_CAMERA_SETTING_AUTHORITY:Ljava/lang/String; = "com.samsung.android.vtcamerasettings.VsetInfoProvider"

.field public static final VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public final mAllowedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mListMapLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.vtcamerasettings.VsetInfoProvider"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 68
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    .line 60
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "\n\tDump of Request Injector Allow List"

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tTotal # of allow list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 166
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public onChange(Z)V
    .registers 9

    const-string v0, "VtCameraProviderObserver"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VtCameraProviderObserver.onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VtCameraProviderObserver.onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 79
    :try_start_39
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_f5

    .line 81
    :try_start_3e
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "AllowedAppInfo"

    .line 82
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_54} :catch_d2
    .catchall {:try_start_3e .. :try_end_54} :catchall_f5

    if-eqz v0, :cond_cc

    .line 84
    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_cc

    .line 85
    :cond_5c
    :goto_5c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    const/4 v1, 0x0

    .line 86
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 87
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_5c

    :cond_75
    const-string v3, "VtCameraProviderObserver"

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to allow list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v3, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange: Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") to allow list"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catchall {:try_start_56 .. :try_end_c1} :catchall_c2

    goto :goto_5c

    :catchall_c2
    move-exception v1

    .line 81
    :try_start_c3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_cb

    :catchall_c7
    move-exception v0

    :try_start_c8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_cb
    throw v1

    :cond_cc
    if-eqz v0, :cond_f0

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_d2
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_f5

    goto :goto_f0

    :catch_d2
    move-exception v0

    :try_start_d3
    const-string v1, "VtCameraProviderObserver"

    const-string v2, "Unable to query from VT Camera setting provider"

    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to query from VT Camera setting provider, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 101
    :cond_f0
    :goto_f0
    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_f5

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->updateCameraService()V

    return-void

    :catchall_f5
    move-exception p0

    .line 101
    :try_start_f6
    monitor-exit p1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw p0
.end method

.method public final providerExistOrNot()Z
    .registers 7

    const-string v0, "VtCameraProviderObserver"

    .line 170
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "com.samsung.android.vtcamerasettings"

    const/16 v3, 0x8

    .line 173
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 174
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3a

    .line 176
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 177
    :cond_21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_56

    .line 178
    array-length v2, p0

    move v3, v1

    :goto_27
    if-ge v3, v2, :cond_56

    aget-object v4, p0, v3

    const-string v5, "com.samsung.android.vtcamerasettings.VsetInfoProvider"

    .line 179
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_3a
    const-string p0, "Provider exist, but not (updated-)system app."

    .line 183
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    goto :goto_56

    :catch_40
    move-exception p0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "providerExistOrNot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return v1
.end method

.method public tryRegisterContentObserver()V
    .registers 6

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->providerExistOrNot()Z

    move-result v0

    const-string v1, "VtCameraProviderObserver"

    if-eqz v0, :cond_2a

    .line 111
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "AllowedAppInfo"

    .line 112
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 111
    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "VT Camera provider exist. Observer registered."

    .line 114
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->onChange(Z)V

    goto :goto_34

    :cond_2a
    const-string p0, "VT Camera provider does not exist. Skip observer register."

    .line 119
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public updateCameraService()V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-nez v0, :cond_2d

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1e

    const-string p0, "VtCameraProviderObserver"

    const-string v0, "Native camera service not available."

    .line 133
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string v0, "Native camera service not available."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_1e
    const-wide/16 v2, 0x64

    .line 139
    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_23

    .line 143
    :catch_23
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2

    move-object v4, v2

    move v2, v0

    move-object v0, v4

    goto :goto_8

    .line 146
    :cond_2d
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_30
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->updateRequestInjectorAllowedList([Ljava/lang/String;)V

    const-string p0, "VtCameraProviderObserver"

    const-string v0, "Updating allowed package list for request injector is done"

    .line 149
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string v0, "Updating allowed package list for request injector is done"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4b} :catch_4e
    .catchall {:try_start_30 .. :try_end_4b} :catchall_4c

    goto :goto_6c

    :catchall_4c
    move-exception p0

    goto :goto_6e

    :catch_4e
    move-exception p0

    :try_start_4f
    const-string v0, "VtCameraProviderObserver"

    const-string v1, "Fail to update allowed package list for Request Injector"

    .line 152
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to update allowed package list for Request Injector"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 156
    :goto_6c
    monitor-exit v2

    return-void

    :goto_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_4c

    throw p0
.end method
