.class public Lcom/android/server/tracing/TracingServiceProxy;
.super Lcom/android/server/SystemService;
.source "TracingServiceProxy.java"


# static fields
.field public static final INTENT_ACTION_NOTIFY_SESSION_STOLEN:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOLEN"

.field public static final INTENT_ACTION_NOTIFY_SESSION_STOPPED:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOPPED"

.field public static final MAX_CACHED_REPORTER_SERVICES:I = 0x8

.field public static final MAX_FILE_SIZE_BYTES_TO_PIPE:I = 0x400

.field public static final REPORT_BEGIN:I = 0x1

.field public static final REPORT_BIND_PERM_INCORRECT:I = 0x3

.field public static final REPORT_SVC_COMM_ERROR:I = 0x5

.field public static final REPORT_SVC_HANDOFF:I = 0x2

.field public static final REPORT_SVC_PERM_MISSING:I = 0x4

.field public static final TAG:Ljava/lang/String; = "TracingServiceProxy"

.field public static final TRACING_APP_ACTIVITY:Ljava/lang/String; = "com.android.traceur.StopTraceService"

.field public static final TRACING_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACING_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "tracing.proxy"


# instance fields
.field public final mCachedReporterServices:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;


# direct methods
.method public static synthetic $r8$lambda$Ed3-KDnHowImEFWPfsMVkuQO_Gs(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/tracing/TracingServiceProxy;->lambda$reportTrace$1(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i_wPpmGt-2r1yBCMpFQP46ltzHw(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyTraceur(Lcom/android/server/tracing/TracingServiceProxy;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->notifyTraceur(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportTrace(Lcom/android/server/tracing/TracingServiceProxy;Landroid/tracing/TraceReportParams;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Landroid/tracing/TraceReportParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/tracing/TracingServiceProxy$1;-><init>(Lcom/android/server/tracing/TracingServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    .line 116
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    return-void
.end method

.method public static synthetic lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Landroid/tracing/TraceReportParams;->usePipeForTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 189
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 190
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 191
    :try_start_10
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_41

    const/16 v4, 0x400

    .line 192
    :try_start_19
    invoke-virtual {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readNBytes(I)[B

    move-result-object v5

    .line 193
    array-length v6, v5

    if-eq v6, v4, :cond_2f

    .line 197
    invoke-virtual {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_37

    .line 198
    :try_start_23
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_41

    .line 199
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    const/4 v2, 0x0

    .line 200
    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    goto :goto_4b

    .line 194
    :cond_2f
    :try_start_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trace file too large when |usePipeForTesting| is set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 191
    :try_start_38
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    .line 190
    :try_start_42
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0

    .line 203
    :cond_4b
    :goto_4b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 204
    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    invoke-interface {p1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    const/16 v2, 0x1a8

    const/4 v3, 0x2

    .line 208
    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void
.end method

.method public static synthetic lambda$reportTrace$1(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 9

    if-eqz p2, :cond_13

    const/16 v0, 0x1a8

    const/4 v1, 0x5

    .line 212
    iget-wide v2, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    const-string p1, "TracingServiceProxy"

    const-string v0, "Failed to report trace"

    .line 214
    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_13
    :try_start_13
    iget-object p0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method


# virtual methods
.method public final getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    if-nez v0, :cond_35

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    new-instance p1, Lcom/android/server/tracing/TracingServiceProxy$2;

    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    const/16 v5, 0x21

    .line 232
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    new-instance v7, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;-><init>()V

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/tracing/TracingServiceProxy$2;-><init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 246
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    :cond_35
    return-object v0
.end method

.method public final hasBindServicePermission(Landroid/content/ComponentName;)Z
    .registers 7

    const-string v0, "Trace reporting service "

    const-string v1, "TracingServiceProxy"

    const/4 v2, 0x0

    .line 266
    :try_start_5
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_40

    .line 272
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_TRACE_REPORT_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not request "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission; instead requests "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3e
    const/4 p0, 0x1

    return p0

    .line 268
    :catch_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 253
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_35

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trace reporting service "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TracingServiceProxy"

    .line 255
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyTraceur(Z)V
    .registers 7

    const-string v0, "TracingServiceProxy"

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.traceur"

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.traceur.StopTraceService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_20

    const-string p1, "com.android.traceur.NOTIFY_SESSION_STOLEN"

    .line 136
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_25

    :cond_20
    const-string p1, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    .line 138
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_29} :catch_41

    .line 143
    :try_start_29
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_30} :catch_36
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 147
    :goto_30
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_41

    goto :goto_47

    :catchall_34
    move-exception p0

    goto :goto_3d

    :catch_36
    move-exception p0

    :try_start_37
    const-string p1, "Failed to notifyTraceSessionEnded"

    .line 145
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    goto :goto_30

    .line 147
    :goto_3d
    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw p0
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    const-string p1, "Failed to locate Traceur"

    .line 151
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    const-string/jumbo v1, "tracing.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final reportTrace(Landroid/tracing/TraceReportParams;)V
    .registers 11

    .line 156
    iget-wide v2, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/tracing/TraceReportParams;->reporterPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/tracing/TraceReportParams;->reporterClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->hasBindServicePermission(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_24

    const/16 v2, 0x1a8

    const/4 v3, 0x3

    .line 164
    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void

    :cond_24
    const-string v1, "android.permission.DUMP"

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 169
    invoke-virtual {p0, v0, v2}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_49

    if-nez v2, :cond_35

    goto :goto_49

    .line 176
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 178
    :try_start_39
    invoke-virtual {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_44

    .line 180
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw p0

    :cond_49
    :goto_49
    const/16 v3, 0x1a8

    const/4 v4, 0x4

    .line 172
    iget-wide v5, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v7, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void
.end method

.method public final reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;",
            "Landroid/tracing/TraceReportParams;",
            ")V"
        }
    .end annotation

    .line 187
    new-instance p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;-><init>(Landroid/tracing/TraceReportParams;)V

    invoke-interface {p1, p0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;-><init>(Landroid/tracing/TraceReportParams;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method
