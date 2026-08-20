.class public Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher;
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBoundServiceInfo:",
        "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;"
    }
.end annotation


# static fields
.field public static final D:Z

.field public static final RECONNECTION_TIMEOUT_THRESHOLD:J = 0x36ee80L

.field public static final RETRY_DELAY_MS:J = 0x3a98L

.field public static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field public final mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public final mNsHandler:Landroid/os/Handler;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mRegistered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcherImpl<",
            "TTBoundServiceInfo;>.MyServiceConnection;"
        }
    .end annotation
.end field

.field public final mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field public final mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$t0qAh1UEA_LOIy4Yd0Q8_IVsw2E(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uswI7cW5E5IuAwzr9Wxv3XBHti8(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->lambda$onServiceChanged$1(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNsHandler(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;",
            "Lcom/android/server/location/injector/Injector;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 85
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 92
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 116
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 119
    iput-object p6, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 120
    new-instance p1, Lcom/android/server/location/nsflp/NSConnectionRecord;

    invoke-direct {p1, p3}, Lcom/android/server/location/nsflp/NSConnectionRecord;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    return-void
.end method

.method public static synthetic lambda$onServiceChanged$1(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .registers 2

    .line 177
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->unbind()V

    .line 178
    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->bind()V

    return-void
.end method

.method public static synthetic lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method


# virtual methods
.method public checkServiceResolves()Z
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->hasMatchingService()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 196
    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 198
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_36

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "target service="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_36
    move-exception p1

    .line 198
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public declared-synchronized onServiceChanged()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 153
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 154
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceChanged(Z)V
    .registers 5

    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez p1, :cond_1b

    .line 170
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    :cond_1b
    const-string p1, "ServiceWatcher"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] chose new implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 174
    new-instance v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-direct {v1, p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    .line 175
    iput-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 176
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 181
    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register()V
    .registers 7

    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 133
    iput-boolean v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 134
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 138
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 5

    monitor-enter p0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 159
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 160
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 188
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 190
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_d
    move-exception v0

    .line 188
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized unregister()V
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->unregister()V

    .line 145
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 149
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
