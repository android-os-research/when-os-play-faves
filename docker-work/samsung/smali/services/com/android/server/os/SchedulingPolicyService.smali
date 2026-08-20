.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field public static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;

.field public static final PRIORITY_MAX:I = 0x3

.field public static final PRIORITY_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# instance fields
.field public mBoostedPid:I

.field public mClient:Landroid/os/IBinder;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$PDucROOB90iOhVGUziExDgBL_rw(Lcom/android/server/os/SchedulingPolicyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->lambda$new$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media.swcodec"

    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 44
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 66
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    const-string p0, "SchedulingPolicyService.<init>"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v0

    .line 69
    :try_start_3
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 70
    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 71
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x0

    .line 72
    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    .line 76
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method


# virtual methods
.method public final disableCpusetBoost(I)I
    .registers 10

    const-string v0, " back to group default"

    const-string v1, "SchedulingPolicyService"

    .line 185
    iget v2, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v3, -0x1

    .line 188
    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 189
    iget-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    const/4 v5, 0x0

    if-eqz v4, :cond_1b

    const/4 v6, 0x0

    .line 191
    :try_start_f
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v7, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    .line 194
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 195
    throw p1

    .line 194
    :catch_19
    :goto_19
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    :cond_1b
    if-ne v2, p1, :cond_4f

    .line 202
    :try_start_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p1, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_38

    goto :goto_4f

    .line 205
    :catch_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t move pid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return v5
.end method

.method public final enableCpusetBoost(ILandroid/os/IBinder;)I
    .registers 9

    const-string v0, "SchedulingPolicyService"

    .line 146
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_8

    return v2

    :cond_8
    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 154
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v3, :cond_1c

    const/4 v4, 0x0

    .line 156
    :try_start_10
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1a
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    .line 159
    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 160
    throw p1

    .line 159
    :catch_1a
    :goto_1a
    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 164
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V

    .line 169
    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 170
    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_45} :catch_46

    return v2

    :catch_46
    move-exception p1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed enableCpusetBoost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_5b
    iget-object p0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_60

    :catch_60
    return v1
.end method

.method public final isPermitted()Z
    .registers 3

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_c

    return v1

    .line 218
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x411

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x417

    if-eq p0, v0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    return v1
.end method

.method public requestCpusetBoost(ZLandroid/os/IBinder;)I
    .registers 7

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_14

    return v2

    .line 130
    :cond_14
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 131
    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_21

    goto :goto_3a

    .line 136
    :cond_21
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    .line 138
    :try_start_27
    aget p1, v0, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v1

    return p0

    .line 140
    :cond_2f
    aget p1, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_37
    move-exception p0

    .line 142
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    const-string p0, "SchedulingPolicyService"

    const-string/jumbo p1, "requestCpusetBoost: can\'t find media.codec process"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public requestPriority(IIIZ)I
    .registers 7

    .line 91
    invoke-virtual {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_6b

    const/4 p0, 0x1

    if-lt p3, p0, :cond_6b

    const/4 p0, 0x3

    if-gt p3, p0, :cond_6b

    .line 92
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p0

    if-eq p0, p1, :cond_14

    goto :goto_6b

    .line 97
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 p1, 0x411

    if-ne p0, p1, :cond_25

    if-nez p4, :cond_25

    .line 98
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    if-eq p0, p1, :cond_25

    return v0

    .line 101
    :cond_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 p1, 0x3ea

    const-string v1, "SchedulingPolicyService"

    if-eq p0, p1, :cond_4e

    if-nez p4, :cond_33

    const/4 p0, 0x4

    goto :goto_34

    :cond_33
    const/4 p0, 0x6

    .line 104
    :goto_34
    :try_start_34
    invoke-static {p2, p0}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_4e

    :catch_38
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed setThreadGroup: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4e
    :goto_4e
    const p0, 0x40000001    # 2.0000002f

    .line 113
    :try_start_51
    invoke-static {p2, p0, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_54} :catch_56

    const/4 p0, 0x0

    return p0

    :catch_56
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed setThreadScheduler: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return v0
.end method
