.class public Lcom/android/server/tare/InternalResourceService;
.super Lcom/android/server/SystemService;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/InternalResourceService$ConfigObserver;,
        Lcom/android/server/tare/InternalResourceService$LocalService;,
        Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;,
        Lcom/android/server/tare/InternalResourceService$IrsHandler;
    }
.end annotation


# static fields
.field public static final ALARM_TAG_WEALTH_RECLAMATION:Ljava/lang/String; = "*tare.reclamation*"

.field public static final DEBUG:Z

.field public static final DEFAULT_UNUSED_RECLAMATION_PERCENTAGE:F = 0.1f

.field public static final MIN_UNUSED_TIME_MS:J = 0xf731400L

.field public static final MSG_NOTIFY_AFFORDABILITY_CHANGE_LISTENER:I = 0x0

.field public static final MSG_NOTIFY_STATE_CHANGE_LISTENERS:I = 0x3

.field public static final MSG_PROCESS_USAGE_EVENT:I = 0x2

.field public static final MSG_SCHEDULE_UNUSED_WEALTH_RECLAMATION_EVENT:I = 0x1

.field public static final PACKAGE_QUERY_FLAGS:I = 0x400c0000

.field public static final QUANTITATIVE_EASING_BATTERY_THRESHOLD:I = 0x32

.field public static final RECLAMATION_STARTUP_DELAY_MS:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "TARE-IRS"

.field public static final UNUSED_RECLAMATION_PERIOD_MS:J = 0x5265c00L


# instance fields
.field public final mAgent:Lcom/android/server/tare/Agent;

.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public volatile mBootPhase:I

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

.field public mCurrentBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public final mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

.field public volatile mExemptListLoaded:Z

.field public mExemptedApps:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public volatile mIsEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageToUidCache:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageToUidCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPkgCache:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mScribe:Lcom/android/server/tare/Scribe;

.field public final mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$0WzwOHKU50UyxI6dsoLxMYjaEjc(Lcom/android/server/tare/InternalResourceService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tare/InternalResourceService;->lambda$scheduleUnusedWealthReclamationLocked$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6vievQs7vcv71frhGR6rTFzw8Zo(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->setupHeavyWork()V

    return-void
.end method

.method public static synthetic $r8$lambda$N8c3B6jo5FDHO_avWw11XwFYM0E(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->lambda$tearDownEverything$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/android/server/tare/InternalResourceService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->dumpInternal(Landroid/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->setupEverything()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->tearDownEverything()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "TARE"

    const/4 v1, 0x3

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    .line 137
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 141
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    .line 159
    new-instance v0, Lcom/android/server/tare/InternalResourceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$1;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/android/server/tare/InternalResourceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 222
    new-instance v0, Lcom/android/server/tare/InternalResourceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$3;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 253
    new-instance v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/InternalResourceService$IrsHandler;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    .line 254
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 256
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 257
    new-instance v1, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    invoke-direct {v1, p0}, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    .line 258
    new-instance v1, Lcom/android/server/tare/Analyst;

    invoke-direct {v1}, Lcom/android/server/tare/Analyst;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 259
    new-instance v2, Lcom/android/server/tare/Scribe;

    invoke-direct {v2, p0, v1}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 260
    new-instance v3, Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-direct {v3, p0}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 261
    new-instance v3, Lcom/android/server/tare/Agent;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/tare/Agent;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V

    iput-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    .line 263
    new-instance v1, Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    .line 265
    const-class p1, Lcom/android/server/tare/EconomyManagerInternal;

    new-instance v0, Lcom/android/server/tare/InternalResourceService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Resource Economy (economy) dump options:"

    .line 1108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h|--help] [package] ..."

    .line 1109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h | --help: print this help"

    .line 1110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [package] is an optional package name to limit the output to."

    .line 1111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$scheduleUnusedWealthReclamationLocked$0(JJ)V
    .registers 15

    .line 628
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_23

    const/4 v2, 0x3

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr p1, p3

    add-long/2addr v3, p1

    const-wide/32 v5, 0x1b7740

    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const-string v7, "*tare.reclamation*"

    .line 630
    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2b

    .line 635
    :cond_23
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2b
    return-void
.end method

.method private synthetic lambda$tearDownEverything$1()V
    .registers 3

    .line 753
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_13

    .line 755
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final adjustCreditSupplyLocked(Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v0

    .line 568
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    return-void

    :cond_f
    if-lez v4, :cond_18

    .line 573
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    goto :goto_29

    :cond_18
    if-eqz p1, :cond_29

    .line 575
    iget p1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    sub-long/2addr v0, v2

    .line 577
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    long-to-double v0, v0

    mul-double/2addr v4, v0

    double-to-long v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 579
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onCreditSupplyChanged()V

    return-void
.end method

.method public final dumpInternal(Landroid/util/IndentingPrintWriter;Z)V
    .registers 12

    .line 1115
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Is enabled: "

    .line 1116
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    iget-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Current battery level: "

    .line 1119
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    const-string v3, "Consumption limit (current/initial-satiated/current-satiated): "

    .line 1123
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "/"

    .line 1125
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "/"

    .line 1127
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v3

    const-string v5, "Goods remaining: "

    .line 1131
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " ("

    .line 1133
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    long-to-float v3, v3

    mul-float/2addr v3, v8

    long-to-float v1, v1

    div-float/2addr v3, v1

    .line 1134
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "% of current limit)"

    .line 1135
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Device wealth: "

    .line 1137
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getCakesInCirculationForLoggingLocked()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Exempted apps"

    .line 1141
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1142
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1144
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1145
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/CompleteEconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1148
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tare/Scribe;->dumpLocked(Landroid/util/IndentingPrintWriter;Z)V

    .line 1150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1151
    iget-object p2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p2, p1}, Lcom/android/server/tare/Agent;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 1153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1154
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Analyst;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1155
    monitor-exit v0

    return-void

    :catchall_c1
    move-exception p0

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_3 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 307
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object p0
.end method

.method public getConsumptionLimitLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 335
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCurrentBatteryLevel()I
    .registers 1

    .line 642
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getInitialSatiatedConsumptionLimitLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 346
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 322
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 323
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 324
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_28

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 325
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_28

    .line 326
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 329
    :cond_2b
    monitor-exit v1

    return-object v0

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMinBalanceLocked(ILjava/lang/String;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 340
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide p0

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public final getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_24

    .line 650
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 652
    array-length v0, v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1e

    aget-object v3, v1, v2

    .line 653
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 655
    :cond_1e
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public getUid(ILjava/lang/String;)I
    .registers 7

    .line 350
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 353
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p2, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 356
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 357
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 361
    iget-boolean p0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return p0
.end method

.method public isPackageExempted(ILjava/lang/String;)Z
    .registers 3

    .line 365
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 366
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_b
    move-exception p0

    .line 367
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isSystem(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "android"

    .line 371
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 374
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    return p0
.end method

.method public final loadInstalledPackageListLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 664
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 665
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 666
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 667
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    aget v3, v0, v2

    .line 668
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x400c0000    # 2.1875f

    .line 669
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 668
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public maybePerformQuantitativeEasingLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    .line 535
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_5f

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_13

    goto :goto_5f

    .line 539
    :cond_13
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 542
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 543
    invoke-virtual {v4}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v4

    .line 542
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_5f

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Increasing consumption limit from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {v2, v3}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    .line 545
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onBatteryLevelChanged()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    .line 380
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Analyst;->noteBatteryLevelChange(I)V

    .line 381
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    if-le v1, v2, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1b

    .line 383
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Agent;->distributeBasicIncomeLocked(I)V

    goto :goto_1f

    :cond_1b
    if-ne v1, v2, :cond_1f

    .line 386
    monitor-exit v0

    return-void

    .line 388
    :cond_1f
    :goto_1f
    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    .line 389
    invoke-virtual {p0, v3}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    .line 390
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 275
    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_1b

    .line 278
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->start()V

    const-string p1, "deviceidle"

    .line 280
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 279
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->setupEverything()V

    goto :goto_43

    :cond_1b
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_43

    .line 283
    iget-boolean p1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    if-nez p1, :cond_43

    .line 284
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 286
    :try_start_26
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 287
    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_36
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    goto :goto_3c

    :catchall_34
    move-exception p0

    goto :goto_41

    :catch_36
    move-exception v0

    :try_start_37
    const-string v1, "TARE-IRS"

    .line 290
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 293
    monitor-exit p1

    goto :goto_43

    :goto_41
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_34

    throw p0

    :cond_43
    :goto_43
    return-void
.end method

.method public onDeviceStateChanged()V
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onDeviceStateChangedLocked()V

    .line 396
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onExemptionListChanged()V
    .registers 13

    .line 400
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_f
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    .line 403
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_9f

    .line 405
    :try_start_16
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_97
    .catchall {:try_start_16 .. :try_end_23} :catchall_9f

    .line 412
    :try_start_23
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_29
    if-ltz v4, :cond_42

    .line 413
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 414
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 415
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_3c
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 419
    :cond_42
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_47
    const/4 v6, 0x0

    if-ltz v4, :cond_6c

    .line 420
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 421
    array-length v8, v0

    move v9, v6

    :goto_52
    if-ge v9, v8, :cond_69

    aget v10, v0, v9

    .line 425
    invoke-virtual {p0, v10, v7}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_5e

    move v11, v5

    goto :goto_5f

    :cond_5e
    move v11, v6

    :goto_5f
    if-eqz v11, :cond_66

    .line 427
    iget-object v11, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v11, v10, v7}, Lcom/android/server/tare/Agent;->onAppExemptedLocked(ILjava/lang/String;)V

    :cond_66
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    :cond_69
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 431
    :cond_6c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_71
    if-ltz v3, :cond_95

    .line 432
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 433
    array-length v7, v0

    move v8, v6

    :goto_7b
    if-ge v8, v7, :cond_92

    aget v9, v0, v8

    .line 437
    invoke-virtual {p0, v9, v4}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_87

    move v10, v5

    goto :goto_88

    :cond_87
    move v10, v6

    :goto_88
    if-eqz v10, :cond_8f

    .line 439
    iget-object v10, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v10, v9, v4}, Lcom/android/server/tare/Agent;->onAppUnexemptedLocked(ILjava/lang/String;)V

    :cond_8f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_92
    add-int/lit8 v3, v3, -0x1

    goto :goto_71

    .line 443
    :cond_95
    monitor-exit v1

    return-void

    :catch_97
    move-exception p0

    const-string v0, "TARE-IRS"

    .line 408
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    monitor-exit v1

    return-void

    :catchall_9f
    move-exception p0

    .line 443
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_23 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public onPackageAdded(ILjava/lang/String;)V
    .registers 8

    .line 447
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 450
    :try_start_4
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x400c0000    # 2.1875f

    .line 451
    invoke-virtual {v1, p2, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_33

    .line 456
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 457
    :try_start_f
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, p2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 458
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_30

    .line 459
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 460
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 463
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tare/Agent;->grantBirthrightLocked(ILjava/lang/String;)V

    .line 464
    monitor-exit v3

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_2d

    throw p0

    :catchall_30
    move-exception p0

    .line 458
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0

    :catch_33
    move-exception p0

    const-string p1, "TARE-IRS"

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM couldn\'t find newly added package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onPackageForceStopped(ILjava/lang/String;)V
    .registers 3

    .line 468
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 470
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .registers 7

    .line 474
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 476
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 477
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    .line 478
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 479
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    const/4 p1, 0x0

    .line 480
    :goto_16
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_41

    .line 481
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 482
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, v0, :cond_3e

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 483
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 484
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_41

    :cond_3e
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 488
    :cond_41
    :goto_41
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/tare/Agent;->onPackageRemovedLocked(ILjava/lang/String;)V

    .line 489
    monitor-exit v2

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw p0

    :catchall_4b
    move-exception p0

    .line 477
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public onStart()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    const-string/jumbo v1, "tare"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUidStateChanged(I)V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_20

    const-string p0, "TARE-IRS"

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t have packages for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 498
    :cond_20
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tare/Agent;->onAppStatesChangedLocked(ILandroid/util/ArraySet;)V

    .line 500
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onUserAdded(I)V
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x400c0000    # 2.1875f

    .line 506
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 505
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    .line 508
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 7

    .line 512
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_3b

    .line 515
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 516
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_38

    .line 517
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 519
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3b

    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 523
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tare/Agent;->onUserRemovedLocked(ILjava/util/List;)V

    .line 524
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V
    .registers 6

    .line 554
    sget-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " affordability changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    .line 555
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_29
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 559
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 560
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 561
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 562
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 584
    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 587
    :cond_5
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 588
    sget-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v0, :cond_3d

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-static {p1, v3}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARE-IRS"

    .line 589
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 594
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_89

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_64

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_64

    const/16 v1, 0x17

    if-eq v0, v1, :cond_75

    const/16 v1, 0x18

    if-eq v0, v1, :cond_75

    goto :goto_98

    .line 615
    :cond_64
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const/high16 p2, -0x80000000

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_98

    .line 610
    :cond_6c
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const p2, -0x7ffffffc

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_98

    .line 603
    :cond_75
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 604
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 605
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    .line 604
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    goto :goto_98

    .line 596
    :cond_89
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 597
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    .line 596
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_98
    return-void
.end method

.method public final registerListeners()V
    .registers 13

    .line 674
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 675
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 676
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 679
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 680
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 681
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 682
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 683
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 685
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 687
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 688
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 690
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 692
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 693
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public final scheduleUnusedWealthReclamationLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 623
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v4

    const-wide/16 v0, 0x7530

    add-long/2addr v0, v4

    .line 624
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 625
    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getLastReclamationTimeLocked()J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    .line 624
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 626
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/InternalResourceService;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setupEverything()V
    .registers 4

    .line 730
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_31

    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-nez v0, :cond_b

    goto :goto_31

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->registerListeners()V

    .line 735
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    .line 736
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 737
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 738
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    :goto_31
    return-void
.end method

.method public final setupHeavyWork()V
    .registers 6

    .line 698
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->loadInstalledPackageListLocked()V

    .line 700
    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-lt v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_76

    if-nez v1, :cond_27

    .line 702
    :try_start_11
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f
    .catchall {:try_start_11 .. :try_end_1e} :catchall_76

    goto :goto_25

    :catch_1f
    move-exception v1

    :try_start_20
    const-string v2, "TARE-IRS"

    .line 705
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    :goto_25
    iput-boolean v3, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 709
    :cond_27
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_41

    .line 711
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked()V

    .line 712
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 713
    invoke-virtual {v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v2

    .line 712
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    goto :goto_71

    .line 715
    :cond_41
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->loadFromDiskLocked()V

    .line 716
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 717
    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 718
    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 719
    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_71

    .line 721
    :cond_66
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 722
    invoke-virtual {v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v2

    .line 721
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 725
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    .line 726
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_20 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final tearDownEverything()V
    .registers 4

    .line 742
    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_8
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->tearDownLocked()V

    .line 747
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Lcom/android/server/tare/Analyst;->tearDown()V

    .line 748
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Lcom/android/server/tare/EconomicPolicy;->tearDown()V

    .line 749
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    .line 750
    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 751
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->tearDownLocked()V

    .line 760
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->clear()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 763
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 764
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 765
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_5c

    .line 766
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 767
    :try_start_52
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 768
    monitor-exit v1

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw p0

    :catchall_5c
    move-exception p0

    .line 765
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method
