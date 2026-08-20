.class public final Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
.super Landroid/app/job/IJobScheduler$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobSchedulerStub"
.end annotation


# instance fields
.field public final mPersistCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static synthetic $r8$lambda$5QdusXbtTwDVPTJRLwMcG2yKy8o(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->lambda$getAllJobSnapshots$0(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 3009
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    .line 3014
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    return-void
.end method

.method private synthetic lambda$getAllJobSnapshots$0(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 3329
    new-instance v0, Landroid/app/job/JobSnapshot;

    .line 3330
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSatisfiedConstraintFlags()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3331
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/job/JobSnapshot;-><init>(Landroid/app/job/JobInfo;IZ)V

    .line 3329
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final canPersistJobs(II)Z
    .registers 6

    .line 3049
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3050
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 3052
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2d

    .line 3057
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 3060
    :goto_23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move p0, p1

    .line 3062
    :goto_2d
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public cancel(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3218
    :try_start_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v3, 0x1

    invoke-static {p0, v0, p1, v0, v3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;IIII)Z
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 3221
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    throw p0
.end method

.method public cancelAll()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3203
    :try_start_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelAll() called by app, callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 3208
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3209
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 3230
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, -0x1

    .line 3234
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8e

    move v1, v2

    move v3, v1

    .line 3236
    :goto_19
    array-length v4, p3

    if-ge v1, v4, :cond_62

    .line 3237
    aget-object v4, p3, v1

    const-string v5, "-h"

    .line 3238
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3239
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_2a
    const-string v5, "-a"

    .line 3241
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_3c

    :cond_33
    const-string v5, "--proto"

    .line 3243
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v3, 0x1

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 3245
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_62

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_62

    .line 3246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3253
    :cond_62
    array-length v2, p3

    if-ge v1, v2, :cond_8d

    .line 3254
    aget-object p3, p3, v1

    .line 3256
    :try_start_67
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_77} :catch_78

    goto :goto_8d

    .line 3259
    :catch_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8d
    :goto_8d
    move v2, v3

    .line 3265
    :cond_8e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v2, :cond_9a

    .line 3268
    :try_start_94
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternalProto(Ljava/io/FileDescriptor;I)V

    goto :goto_a6

    .line 3270
    :cond_9a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_aa

    .line 3274
    :goto_a6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_aa
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3275
    throw p0
.end method

.method public final enforceValidJobRequest(ILandroid/app/job/JobInfo;)V
    .registers 5

    .line 3020
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3021
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 3022
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3023
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p2

    const/high16 v0, 0xc0000

    .line 3025
    :try_start_19
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_70

    .line 3031
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_4c

    const-string p1, "android.permission.BIND_JOB_SERVICE"

    .line 3035
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    return-void

    .line 3036
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheduled service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not require android.permission.BIND_JOB_SERVICE permission"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3032
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot schedule job in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3029
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_87} :catch_87

    .line 3040
    :catch_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to schedule job for non-existent component: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3117
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 3118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueueing job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " work: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3121
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3123
    invoke-virtual {p0, v5, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 3124
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    if-nez v0, :cond_5f

    if-eqz p2, :cond_56

    .line 3131
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->enforceValidity()V

    .line 3132
    invoke-virtual {p0, p1, v5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 3134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3136
    :try_start_43
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_51

    .line 3139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_51
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3140
    throw p0

    .line 3128
    :cond_56
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "work is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3125
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t enqueue work for persisted jobs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    .line 3323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_30

    .line 3327
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3328
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3329
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 3332
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    .line 3333
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw p0

    .line 3325
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getAllJobSnapshots() is system internal use only."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPendingJobs()Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3180
    :try_start_8
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 3182
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_17
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3183
    throw p0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3192
    :try_start_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(II)Landroid/app/job/JobInfo;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 3194
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3195
    throw p0
.end method

.method public getStartedJobs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 3293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3d

    .line 3300
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3301
    :try_start_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 3302
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object p0

    .line 3303
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3304
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_24
    if-ltz v2, :cond_38

    .line 3305
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    if-eqz v3, :cond_35

    .line 3307
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 3310
    :cond_38
    monitor-exit v0

    return-object v1

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw p0

    .line 3295
    :cond_3d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "getStartedJobs() is system internal use only."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 3282
    new-instance v0, Lcom/android/server/job/JobSchedulerShellCommand;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 3283
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 3282
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3088
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3093
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3095
    invoke-virtual {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 3096
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3097
    invoke-virtual {p0, v0, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_42

    .line 3098
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3103
    :cond_42
    :goto_42
    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 3105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3107
    :try_start_49
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_57

    .line 3110
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_57
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3111
    throw p0
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3147
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "Caller uid "

    if-eqz v0, :cond_37

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " scheduling job: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on behalf of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz p2, :cond_7c

    .line 3156
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_62

    .line 3163
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 3165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3167
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5d

    .line 3170
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_5d
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3171
    throw p0

    .line 3159
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not permitted to schedule jobs for other apps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3153
    :cond_7c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Must specify a package for scheduleAsPackage()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateJobFlags(Landroid/app/job/JobInfo;I)V
    .registers 5

    const-wide/32 v0, 0xb98555f

    .line 3068
    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    .line 3067
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo;->enforceValidity(Z)V

    .line 3070
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_1f

    .line 3071
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    :cond_1f
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4e

    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_46

    .line 3078
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 3079
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Periodic jobs mustn\'t have FLAG_EXEMPT_FROM_APP_STANDBY. Job="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 3076
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Job has invalid flags"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    return-void
.end method
