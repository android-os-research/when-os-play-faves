.class public final Lcom/android/server/am/ConnectionRecord;
.super Ljava/lang/Object;
.source "ConnectionRecord.java"


# static fields
.field public static final BIND_ORIG_ENUMS:[I

.field public static final BIND_PROTO_ENUMS:[I


# instance fields
.field public final activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/ActivityServiceConnectionsHolder<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final aliasComponent:Landroid/content/ComponentName;

.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final binding:Lcom/android/server/am/AppBindRecord;

.field public final clientIntent:Landroid/app/PendingIntent;

.field public final clientLabel:I

.field public final clientPackageName:Ljava/lang/String;

.field public final clientProcessName:Ljava/lang/String;

.field public final clientUid:I

.field public final conn:Landroid/app/IServiceConnection;

.field public final flags:I

.field public mProcStatsLock:Ljava/lang/Object;

.field public serviceDead:Z

.field public stringName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x11

    new-array v1, v0, [I

    .line 62
    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 81
    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x800000
        0x8
        0x10
        0x20
        0x40
        0x80
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        0x100
        0x1000
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/AppBindRecord;",
            "Lcom/android/server/wm/ActivityServiceConnectionsHolder<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;",
            "Landroid/app/IServiceConnection;",
            "II",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 117
    iput-object p2, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 118
    iput-object p3, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 119
    iput p4, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    .line 120
    iput p5, p0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    .line 121
    iput-object p6, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 122
    iput p7, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 123
    iput-object p8, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 124
    iput-object p9, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 125
    iput-object p10, p0, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "binding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v0, :cond_20

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 106
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "conn="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {p2}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " flags=0x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-nez v0, :cond_5

    return-void

    .line 255
    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    .line 257
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_29

    const-wide v1, 0x10500000002L

    .line 259
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_29
    const-wide v4, 0x20e00000003L

    .line 261
    iget v6, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    sget-object v7, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    sget-object v8, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 263
    iget-boolean v0, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-eqz v0, :cond_46

    const-wide v0, 0x20e00000003L

    const/16 v2, 0xf

    .line 264
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 266
    :cond_46
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz p0, :cond_56

    const-wide v0, 0x10900000004L

    .line 267
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 269
    :cond_56
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public hasFlag(I)Z
    .registers 2

    .line 129
    iget p0, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public notHasFlag(I)Z
    .registers 2

    .line 133
    iget p0, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr p0, p1

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public startAssociationIfNeeded()V
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c4

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    if-ne v1, v2, :cond_1e

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 143
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 144
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    if-nez v0, :cond_63

    const-string v0, "ActivityManager"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package in referenced service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 148
    :cond_63
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_92

    const-string v0, "ActivityManager"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inactive holder in referenced service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 152
    :cond_92
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    .line 153
    monitor-enter v1

    .line 154
    :try_start_a1
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 155
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 157
    monitor-exit v1

    goto :goto_c4

    :catchall_c1
    move-exception p0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_a1 .. :try_end_c3} :catchall_c1

    throw p0

    :cond_c4
    :goto_c4
    return-void
.end method

.method public stopAssociation()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_14

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 174
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    goto :goto_14

    :catchall_11
    move-exception p0

    .line 174
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 183
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ConnectionRecord{"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3a

    const-string v3, "CR "

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3a
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_45

    const-string v3, "DBG "

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_45
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_50

    const-string v3, "!FG "

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_50
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5c

    const-string v3, "IMPB "

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_5c
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_67

    const-string v3, "ABCLT "

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_67
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_72

    const-string v3, "OOM "

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_72
    iget v3, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_7c

    const-string v2, "WPRI "

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_7c
    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_87

    const-string v2, "IMP "

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_87
    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_91

    const-string v1, "WACT "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_91
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9d

    const-string v1, "FGSA "

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_9d
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a9

    const-string v1, "FGS "

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_a9
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b5

    const-string v1, "LACT "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_b5
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c1

    const-string v1, "SLTA "

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_c1
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_cd

    const-string v1, "VFGS "

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_cd
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d9

    const-string v1, "UI "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_d9
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_e5

    const-string v1, "!VIS "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_e5
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_f0

    const-string v1, "!PRCP "

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_f0
    iget v1, p0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_fb

    const-string v1, "CAPS "

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_fb
    iget-boolean v1, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-eqz v1, :cond_104

    const-string v1, "DEAD "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_104
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":@"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public trackProcState(II)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 166
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-void
.end method
