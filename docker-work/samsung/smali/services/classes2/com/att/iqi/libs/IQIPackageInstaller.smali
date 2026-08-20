.class public final Lcom/att/iqi/libs/IQIPackageInstaller;
.super Ljava/lang/Object;
.source "IQIPackageInstaller.java"


# static fields
.field public static final ACTION_IQI_PACKAGE_INSTALL_STATUS:Ljava/lang/String; = "com.att.iqi.action.ACTION_IQI_PACKAGE_INSTALL_STATUS"

.field public static final ACTION_UPDATE_IQI_PACKAGE:Ljava/lang/String; = "com.att.iqi.action.ACTION_UPDATE_IQI_PACKAGE"

.field public static final EXTRA_IQI_UPDATE_PACKAGE_URI:Ljava/lang/String; = "com.att.iqi.extra.IQI_PACKAGE_URI"

.field public static final PERMISSION_IQI_PACKAGE_INSTALLER:Ljava/lang/String; = "com.att.iqi.permission.IQI_PACKAGE_INSTALLER"

.field public static sInstance:Lcom/att/iqi/libs/IQIPackageInstaller;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final iqiManager:Lcom/att/iqi/lib/IQIManager;

.field public final mContext:Landroid/content/Context;

.field public mInstallationRequested:Z

.field public final mInstallationStatusReceiver:Landroid/content/BroadcastReceiver;

.field public mPackageUri:Ljava/lang/String;

.field public final mServiceStateListener:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

.field public final mUpdatePackageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetiqiManager(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->iqiManager:Lcom/att/iqi/lib/IQIManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageUri(Lcom/att/iqi/libs/IQIPackageInstaller;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mPackageUri:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateListener(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mServiceStateListener:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPackageUri(Lcom/att/iqi/libs/IQIPackageInstaller;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mPackageUri:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFailTimes(Lcom/att/iqi/libs/IQIPackageInstaller;)I
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->getFailTimes()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestPackageInstall(Lcom/att/iqi/libs/IQIPackageInstaller;)V
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->requestPackageInstall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresumePackage(Lcom/att/iqi/libs/IQIPackageInstaller;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->resumePackage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetFailTimes(Lcom/att/iqi/libs/IQIPackageInstaller;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->setFailTimes(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInstallationRequested(Lcom/att/iqi/libs/IQIPackageInstaller;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->setInstallationRequested(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuspendPackage(Lcom/att/iqi/libs/IQIPackageInstaller;)V
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->suspendPackage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwasInstallationRequested(Lcom/att/iqi/libs/IQIPackageInstaller;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->wasInstallationRequested()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/IQIPackageInstaller;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mInstallationRequested:Z

    .line 82
    new-instance v0, Lcom/att/iqi/libs/IQIPackageInstaller$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIPackageInstaller$1;-><init>(Lcom/att/iqi/libs/IQIPackageInstaller;)V

    iput-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mUpdatePackageReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v1, Lcom/att/iqi/libs/IQIPackageInstaller$2;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIPackageInstaller$2;-><init>(Lcom/att/iqi/libs/IQIPackageInstaller;)V

    iput-object v1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mServiceStateListener:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    .line 108
    new-instance v1, Lcom/att/iqi/libs/IQIPackageInstaller$3;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIPackageInstaller$3;-><init>(Lcom/att/iqi/libs/IQIPackageInstaller;)V

    iput-object v1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mInstallationStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mContext:Landroid/content/Context;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.att.iqi.action.ACTION_UPDATE_IQI_PACKAGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "com.att.iqi.permission.IQI_PACKAGE_INSTALLER"

    .line 72
    invoke-virtual {p1, v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.ACTION_IQI_PACKAGE_INSTALL_STATUS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 76
    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->iqiManager:Lcom/att/iqi/lib/IQIManager;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 238
    sget-object v0, Lcom/att/iqi/libs/IQIPackageInstaller;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/IQIPackageInstaller;->sInstance:Lcom/att/iqi/libs/IQIPackageInstaller;

    if-nez v1, :cond_19

    .line 240
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Starting PackageInstaller"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 241
    :cond_12
    new-instance v1, Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIPackageInstaller;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/att/iqi/libs/IQIPackageInstaller;->sInstance:Lcom/att/iqi/libs/IQIPackageInstaller;

    .line 243
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method


# virtual methods
.method public final createPackageInstallSession(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_6
    const-string v2, "iqi_package"

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, p2

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_4e

    .line 191
    :try_start_11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_42

    .line 193
    :try_start_19
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->getPackageSize(Ljava/lang/String;Landroid/content/ContentResolver;)I

    move-result v2

    .line 194
    new-array v2, v2, [B

    .line 197
    :goto_1f
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_2a

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p2, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1f

    .line 200
    :cond_2a
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->deletePackage(Ljava/lang/String;Landroid/content/ContentResolver;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_36

    .line 201
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    if-eqz p2, :cond_5a

    :try_start_32
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_4e

    goto :goto_5a

    :catchall_36
    move-exception p0

    if-eqz v1, :cond_41

    .line 190
    :try_start_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    :try_start_3e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    throw p0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    if-eqz p2, :cond_4d

    :try_start_45
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p0

    .line 202
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "Unable to retrieve package from provider"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final deletePackage(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 216
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    return-void
.end method

.method public final getFailTimes()I
    .registers 3

    .line 220
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p0

    const-string/jumbo v0, "update_failures"

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPackageSize(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string p0, "_size"

    .line 207
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    .line 209
    :try_start_f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 211
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 212
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_1b
    move-exception p1

    if-eqz p0, :cond_26

    .line 208
    :try_start_1e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw p1
.end method

.method public final installPackage(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    const/4 v3, 0x2

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequireUserAction(I)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->createPackageInstallSession(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V

    .line 144
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.ACTION_IQI_PACKAGE_INSTALL_STATUS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 146
    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 155
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string p0, "Submitted package installation request to PackageInstaller"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4c} :catch_5f
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4d

    goto :goto_6b

    :catchall_4d
    move-exception p0

    if-eqz v0, :cond_6b

    .line 160
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_5b

    const-string p1, "Abandon session update"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_5b
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    goto :goto_6b

    :catch_5f
    move-exception p0

    .line 157
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "Couldn\'t install package"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public final requestPackageInstall()V
    .registers 2

    .line 167
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Package update installation requested"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mPackageUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->installPackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mPackageUri:Ljava/lang/String;

    return-void
.end method

.method public final resumePackage(I)V
    .registers 4

    .line 178
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Attempting to resume the broker service..."

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 179
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.att.iqi.extra.INSTALL_FAIL_STATUS"

    .line 180
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->getFailTimes()I

    move-result p0

    const-string p1, "com.att.iqi.extra.INSTALL_FAIL_TIMES"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    invoke-static {}, Lcom/att/iqi/libs/IQIServiceBroker;->getPublicInterface()Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    move-result-object p0

    const/4 p1, 0x6

    invoke-interface {p0, p1, v0}, Lcom/att/iqi/libs/IIQIServiceBrokerPub;->postMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final setFailTimes(I)V
    .registers 3

    .line 225
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p0

    const-string/jumbo v0, "update_failures"

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized setInstallationRequested(Z)V
    .registers 2

    monitor-enter p0

    .line 230
    :try_start_1
    iput-boolean p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mInstallationRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 231
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final suspendPackage()V
    .registers 3

    .line 173
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "Attempting to suspend the broker service..."

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 174
    :cond_b
    invoke-static {}, Lcom/att/iqi/libs/IQIServiceBroker;->getPublicInterface()Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/att/iqi/libs/IIQIServiceBrokerPub;->postMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final declared-synchronized wasInstallationRequested()Z
    .registers 2

    monitor-enter p0

    .line 234
    :try_start_1
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller;->mInstallationRequested:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
