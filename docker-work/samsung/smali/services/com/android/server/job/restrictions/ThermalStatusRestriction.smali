.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# static fields
.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

.field public static final EXTRA_JOB_RESTRICTION:Ljava/lang/String; = "job_restriction"

.field public static final HIGHER_PRIORITY_THRESHOLD:I = 0x2

.field public static final LOWER_THRESHOLD:I = 0x1

.field public static final LOW_PRIORITY_THRESHOLD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ThermalStatusRestriction"

.field public static final UPPER_THRESHOLD:I = 0x3


# instance fields
.field public mForceRestricted:Z

.field public mSIOPTracker:Landroid/content/BroadcastReceiver;

.field public volatile mThermalStatus:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;II)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 140
    new-instance p1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mSIOPTracker:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mSIOPTracker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "Thermal status: "

    .line 136
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    return-void
.end method

.method public getThermalStatus()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 131
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7

    .line 101
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    .line 102
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 103
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    const/16 v3, 0x320

    if-eq v0, v3, :cond_22

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    const/16 v3, 0x321

    if-ne v0, v3, :cond_23

    :cond_22
    return v2

    .line 109
    :cond_23
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_60

    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    if-eqz v0, :cond_2e

    goto :goto_60

    .line 112
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 113
    iget v3, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v3, v1, :cond_4a

    .line 116
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-nez v1, :cond_49

    const/16 v1, 0x190

    if-ne v0, v1, :cond_48

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-nez p0, :cond_49

    :cond_48
    move v2, v4

    :cond_49
    return v2

    .line 120
    :cond_4a
    iget v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v1, v4, :cond_5f

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5a

    .line 123
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_5e

    :cond_5a
    const/16 p0, 0x64

    if-ne v0, p0, :cond_5f

    :cond_5e
    move v2, v4

    :cond_5f
    return v2

    :cond_60
    :goto_60
    return v4
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 65
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
