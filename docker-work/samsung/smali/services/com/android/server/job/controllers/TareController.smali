.class public Lcom/android/server/job/controllers/TareController;
.super Lcom/android/server/job/controllers/StateController;
.source "TareController.java"


# static fields
.field public static final BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "JobScheduler.TARE"


# instance fields
.field public final mAffordabilityCache:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field public mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7kHOe_f8gV7qU-qyA2ctzaXzmF0(Lcom/android/server/job/controllers/TareController;ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/TareController;->lambda$new$0(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Bbeoly53y-qQr2fK0b4nYMe4dA(Lcom/android/server/job/controllers/TareController;Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/TareController;->lambda$dumpControllerStateLocked$3(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeIDVQIba_pFoMgPNvikM6MqIsk(Lcom/android/server/job/controllers/TareController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/TareController;->lambda$onConstantsUpdatedLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$f9Aq5NPseQLtcQ9JRfiKN556Y9k(Lcom/android/server/job/controllers/TareController;JLcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/TareController;->lambda$onConstantsUpdatedLocked$1(JLcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 15

    .line 52
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    const-string v3, "JobScheduler.TARE"

    .line 53
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    .line 61
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000004

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v8, 0x1d4c0

    const v10, 0x60000005

    invoke-direct {v7, v10, v2, v8, v9}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 62
    invoke-static {v3, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 74
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/32 v7, 0xea60

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 75
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 86
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 87
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 99
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v7, 0x7530

    invoke-direct {v3, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 100
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 109
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v4, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v4, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 110
    invoke-static {v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 122
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const-wide/16 v11, 0x3e8

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 123
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 132
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v4, 0x60000002

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v10, 0x60000003

    invoke-direct {v9, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 133
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 145
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 146
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 158
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const/high16 v9, 0x60000000

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v13, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    const v14, 0x60000001

    invoke-direct {v13, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 159
    invoke-static {v3, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 172
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 173
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 182
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v9, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v9, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v9, v14, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 183
    invoke-static {v3, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 195
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v14, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 196
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 205
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v3, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v7, v8}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 206
    invoke-static {v3, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 218
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    new-instance v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-direct {v1, v10, v2, v11, v12}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;-><init>(IIJ)V

    .line 219
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 4

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 233
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 241
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 245
    new-instance p1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/TareController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 296
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 306
    iput-object p2, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 307
    iput-object p3, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 308
    const-class p1, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 309
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p1, p1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    iput-boolean p1, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    return-void
.end method

.method public static getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3

    .line 557
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_47

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_43

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_37

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    invoke-static {p0}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.TARE"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_37
    const p0, 0x60000001

    return p0

    :cond_3b
    const p0, 0x60000003

    return p0

    :cond_3f
    :goto_3f
    const p0, 0x60000005

    return p0

    :cond_43
    const p0, 0x60000007

    return p0

    :cond_47
    const p0, 0x60000009

    return p0
.end method

.method private synthetic lambda$dumpControllerStateLocked$3(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 6

    .line 718
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 720
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, ":"

    .line 721
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_18
    if-ge p2, v0, :cond_36

    .line 727
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ": "

    .line 728
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 731
    :cond_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_39
    return-void
.end method

.method private synthetic lambda$new$0(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V
    .registers 11

    .line 247
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 248
    sget-boolean v2, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v2, :cond_37

    const-string v2, "JobScheduler.TARE"

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " affordability for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_37
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 255
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_4e

    .line 257
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 258
    iget-object v4, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    :cond_4e
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 263
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_b0

    .line 265
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_b0

    .line 267
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    const/4 p3, 0x0

    move v3, p3

    .line 268
    :goto_6e
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_a5

    .line 269
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    if-nez p4, :cond_85

    .line 274
    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_83

    goto :goto_85

    :cond_83
    move v5, p3

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v5, 0x1

    .line 273
    :goto_86
    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 275
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_8f
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 279
    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 278
    invoke-virtual {p0, v4, v0, v1, v5}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 280
    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 283
    :cond_a5
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_b0

    .line 284
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 288
    :cond_b0
    monitor-exit v2

    return-void

    :catchall_b2
    move-exception p0

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_3a .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$1(JLcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 407
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 408
    invoke-virtual {p3, p1, p2, v1}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 409
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    goto :goto_24

    .line 412
    :cond_c
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 411
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 414
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 415
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 413
    :goto_21
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    :goto_24
    return-void
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$2()V
    .registers 6

    .line 404
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 406
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/TareController;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 418
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method


# virtual methods
.method public final addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 453
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 455
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_1c

    .line 457
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 460
    :cond_1c
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_2c

    .line 462
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 463
    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_2c
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 466
    iget-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/android/server/tare/EconomyManagerInternal;->registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    :cond_39
    return-void
.end method

.method public final canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 576
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_56

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_56

    .line 585
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 586
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object v1, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 588
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_37

    .line 590
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 591
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 594
    :cond_37
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 595
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 598
    :cond_48
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/tare/EconomyManagerInternal;->canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    .line 599
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0

    :cond_56
    :goto_56
    return v1
.end method

.method public final canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 605
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 608
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 611
    :cond_e
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_4a

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_4a

    .line 617
    :cond_23
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    .line 621
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_43

    .line 622
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    .line 624
    :cond_43
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public canScheduleEJ(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 425
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 428
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_15

    .line 429
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    .line 431
    :cond_15
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const-string p2, "Is enabled: "

    .line 712
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 713
    iget-boolean p2, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Affordability cache:"

    .line 715
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 717
    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/TareController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, v0}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 734
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBillName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;
    .registers 3

    .line 671
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "EJ_MAX_START_BILL"

    return-object p0

    .line 674
    :cond_b
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "EJ_MAX_RUNNING_BILL"

    return-object p0

    .line 677
    :cond_16
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "EJ_HIGH_START_BILL"

    return-object p0

    .line 680
    :cond_21
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "EJ_HIGH_RUNNING_BILL"

    return-object p0

    .line 683
    :cond_2c
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "HIGH_START_BILL"

    return-object p0

    .line 686
    :cond_37
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "HIGH_RUNNING_BILL"

    return-object p0

    .line 689
    :cond_42
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "DEFAULT_START_BILL"

    return-object p0

    .line 692
    :cond_4d
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const-string p0, "DEFAULT_RUNNING_BILL"

    return-object p0

    .line 695
    :cond_58
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    const-string p0, "LOW_START_BILL"

    return-object p0

    .line 698
    :cond_63
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    const-string p0, "LOW_RUNNING_BILL"

    return-object p0

    .line 701
    :cond_6e
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const-string p0, "MIN_START_BILL"

    return-object p0

    .line 704
    :cond_79
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1, p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    const-string p0, "MIN_RUNNING_BILL"

    return-object p0

    .line 707
    :cond_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_BILL ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 442
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    if-nez v0, :cond_9

    .line 443
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 445
    :cond_9
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 446
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object p0

    .line 445
    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/tare/EconomyManagerInternal;->getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/job/controllers/JobStatus;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 497
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/16 v1, 0x1f4

    if-eqz v0, :cond_1e

    .line 498
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 499
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 501
    :cond_19
    sget-object v0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_6b

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_65

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x190

    if-eq v0, v2, :cond_59

    if-eq v0, v1, :cond_53

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.TARE"

    .line 521
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 506
    :cond_53
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 509
    :cond_59
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 512
    :cond_5f
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 515
    :cond_65
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 518
    :cond_6b
    sget-object p1, Lcom/android/server/job/controllers/TareController;->BILL_JOB_START_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_70
    return-object p0
.end method

.method public final getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .registers 4

    .line 531
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    const/16 v0, 0x1f4

    if-nez p0, :cond_4d

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_d

    goto :goto_4d

    .line 538
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_4a

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_47

    const/16 v1, 0x12c

    if-eq p0, v1, :cond_44

    const/16 v1, 0x190

    if-eq p0, v1, :cond_41

    if-eq p0, v0, :cond_3e

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got unexpected priority: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.TARE"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 540
    :cond_3e
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 542
    :cond_41
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 551
    :cond_44
    :goto_44
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_DEFAULT:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 544
    :cond_47
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_LOW:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 546
    :cond_4a
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MIN:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 532
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    if-ne p0, v0, :cond_56

    .line 533
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_MAX_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0

    .line 535
    :cond_56
    sget-object p0, Lcom/android/server/job/controllers/TareController;->BILL_JOB_RUNNING_HIGH_EXPEDITED:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0
.end method

.method public final hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 629
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_49

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_49

    .line 638
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result p0

    return p0

    .line 642
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 643
    :goto_32
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 644
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 645
    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->canAffordBillLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v4

    if-eqz v4, :cond_45

    return v1

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_48
    return v2

    :cond_49
    :goto_49
    return v1
.end method

.method public final isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 437
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 315
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->hasEnoughWealthLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTareWealthConstraintSatisfied(JZ)Z

    .line 318
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->canAffordExpeditedBillLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    move p2, v2

    .line 317
    :goto_1d
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/TareController;->setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object p2

    .line 321
    :goto_24
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 322
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_36
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 384
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    .line 385
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 386
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-interface {v0, p2, p3, v1, v2}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 389
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-eqz p2, :cond_3b

    const/4 p3, 0x0

    .line 391
    :goto_29
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_3b

    .line 392
    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_29

    :cond_3b
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eq v0, v1, :cond_16

    .line 401
    iput-boolean v1, p0, Lcom/android/server/job/controllers/TareController;->mIsEnabled:Z

    .line 403
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/TareController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 330
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 332
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const-string v3, "JobScheduler.TARE"

    if-nez v2, :cond_1a

    const-string v2, "Job is being prepared but doesn\'t have a pre-existing billToJobMap"

    .line 334
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_1a
    const/4 v4, 0x0

    .line 336
    :goto_1b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 337
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 340
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getRunningBill(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 342
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 343
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v2

    const/16 v4, 0x28

    if-ne v2, v4, :cond_64

    .line 344
    sget-boolean v0, Lcom/android/server/job/controllers/TareController;->DEBUG:Z

    if-eqz v0, :cond_5e

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is top started job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_5e
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 350
    :cond_64
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 351
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V

    :goto_75
    return-void
.end method

.method public final removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 474
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 476
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_3a

    .line 478
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_26

    .line 479
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 480
    :cond_26
    iget-object p1, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 484
    iget-object p0, p0, Lcom/android/server/job/controllers/TareController;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 485
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_3a

    .line 487
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-void
.end method

.method public final setExpeditedTareApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    .line 658
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobTareApproved(JZ)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 659
    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 660
    iget-object p2, p0, Lcom/android/server/job/controllers/TareController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p4, :cond_1d

    .line 661
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 662
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 359
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 361
    invoke-static {p1}, Lcom/android/server/job/controllers/TareController;->getRunningActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/job/controllers/TareController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getPossibleStartBills(Lcom/android/server/job/controllers/JobStatus;)Landroid/util/ArraySet;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/android/server/job/controllers/TareController;->mRegisteredBillsAndJobs:Landroid/util/SparseArrayMap;

    .line 366
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_35

    const-string v0, "JobScheduler.TARE"

    const-string v3, "Job was just unprepared but didn\'t have a pre-existing billToJobMap"

    .line 368
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_35
    move v3, v1

    .line 370
    :goto_36
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 371
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/TareController;->removeJobFromBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 374
    :cond_48
    :goto_48
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 375
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TareController;->addJobToBillList(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_5a
    return-void
.end method
