.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;,
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    }
.end annotation


# static fields
.field public static final BACKGROUND_JOBS_DELAY:J = 0xbb8L

.field public static final DEBUG:Z

.field public static final PROCESS_BACKGROUND_JOBS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdle"


# instance fields
.field public final mAllowInIdleJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDeviceIdleMode:Z

.field public final mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

.field public mDeviceIdleWhitelistAppIds:[I

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

.field public final mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveTempWhitelistAppIds:[I

.field public final mShouldRushEvaluation:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AAyA42Mb1SFBZ39q0JapWD5UEs4(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$dumpControllerStateLocked$1(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWjajMe5VwtSskM5Ni9VWOUtMXY(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$dumpControllerStateLocked$2(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VpJp4MpRi-UflASRMbPmKAqXjTU(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceIdleUpdateFunctor(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalDeviceIdleController(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTaskStateLocked(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 55
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.DeviceIdle"

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 8

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 67
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 80
    new-instance v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mShouldRushEvaluation:Ljava/util/function/Predicate;

    .line 130
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    .line 132
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    const-class p1, Lcom/android/server/DeviceIdleInternal;

    .line 134
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DeviceIdleInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 135
    invoke-interface {p1}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 137
    invoke-interface {p1}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 138
    new-instance p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    .line 139
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 140
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 141
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 142
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 143
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    .line 144
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$dumpControllerStateLocked$1(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const-string v0, "#"

    .line 240
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v0, " from "

    .line 242
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ": "

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    const-string v0, " RUNNABLE"

    goto :goto_2c

    :cond_2a
    const-string v0, " WAITING"

    .line 246
    :goto_2c
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-boolean v0, p2, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz v0, :cond_38

    const-string v0, " WHITELISTED"

    .line 250
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    :cond_38
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    const-string p0, " ALLOWED_IN_DOZE"

    .line 253
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 255
    :cond_45
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method private synthetic lambda$dumpControllerStateLocked$2(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    const-wide v0, 0x20b00000002L

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    .line 271
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 272
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 273
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 274
    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    .line 276
    iget-boolean v4, p2, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    .line 277
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 279
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 125
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 239
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000005L

    .line 263
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 265
    iget-boolean v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 267
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, p4, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 283
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 205
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    .line 198
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 197
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 219
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    .line 220
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_d
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    .line 228
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    .line 229
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setUidActiveLocked(IZ)V
    .registers 5

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eq p2, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_e

    return-void

    .line 182
    :cond_e
    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " going "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2a

    const-string v1, "active"

    goto :goto_2d

    :cond_2a
    const-string/jumbo v1, "inactive"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.DeviceIdle"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_39
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 186
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    .line 187
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 188
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iget-object p1, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_61

    .line 189
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {p1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_61
    return-void
.end method

.method public updateIdleMode(Z)V
    .registers 8

    .line 151
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    const/4 v2, 0x1

    if-eq v1, p1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 155
    :goto_b
    iput-boolean p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    .line 156
    sget-boolean v3, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "JobScheduler.DeviceIdle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2a
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    if-eqz p1, :cond_42

    .line 159
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    goto :goto_56

    .line 164
    :cond_42
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mShouldRushEvaluation:Ljava/util/function/Predicate;

    iget-object v5, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 165
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_5f

    if-eqz v1, :cond_5e

    .line 170
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onDeviceIdleStateChanged(Z)V

    :cond_5e
    return-void

    :catchall_5f
    move-exception p0

    .line 167
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public final updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;J)Z
    .registers 8

    .line 210
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 211
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 212
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 213
    iget-boolean p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eqz p0, :cond_2d

    if-nez v3, :cond_2d

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 214
    :cond_2d
    :goto_2d
    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeviceNotDozingConstraintSatisfied(JZZ)Z

    move-result p0

    return p0
.end method
