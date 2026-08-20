.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I = 0x0

.field private static final DEBUG_ALLOW_ANY_STARTS:I = 0x0

.field private static NUM_READ_TOMBSTONE_RETRIES:I = 0x0

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field private static final TOMBSTONE_PREFIX:Ljava/lang/String; = "tombstone_"

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field private mDisableLogs:Z

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchDescription:Ljava/lang/String;

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPermissionTargetSystem:Z

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mRequestWatchdogBugreport:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWatchdogWaiting:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIgnoreCrashes(Lcom/android/commands/monkey/Monkey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreTimeouts(Lcom/android/commands/monkey/Monkey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKillProcessAfterError(Lcom/android/commands/monkey/Monkey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMatchDescription(Lcom/android/commands/monkey/Monkey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/monkey/Monkey;->mMatchDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/commands/monkey/Monkey;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestBugreport(Lcom/android/commands/monkey/Monkey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerbose(Lcom/android/commands/monkey/Monkey;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAbort(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReportProcessName(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAnrBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAnrTraces(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestAppCrashBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestDumpsysMemInfo(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestProcRank(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestWatchdogBugreport(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWatchdogWaiting(Lcom/android/commands/monkey/Monkey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 245
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    .line 249
    const/4 v0, 0x5

    sput v0, Lcom/android/commands/monkey/Monkey;->NUM_READ_TOMBSTONE_RETRIES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 163
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 171
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    .line 198
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 201
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 204
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 207
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 210
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 213
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 215
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 217
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 219
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 221
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    .line 224
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 227
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 229
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 237
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 243
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 251
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 253
    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 257
    new-instance v1, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 259
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    return-void
.end method

.method private checkInternalConfiguration()Z
    .registers 2

    .line 1013
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .registers 13

    .line 1295
    sget-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "tombstones":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_87

    array-length v2, v0

    if-nez v2, :cond_e

    goto/16 :goto_87

    .line 1304
    :cond_e
    const/4 v2, 0x0

    .line 1307
    .local v2, "result":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1308
    .local v3, "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v4, v0

    move v5, v1

    :goto_16
    if-ge v5, v4, :cond_84

    aget-object v6, v0, v5

    .line 1309
    .local v6, "t":Ljava/lang/String;
    const-string v7, "tombstone_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 1310
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1311
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v9, :cond_46

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 1313
    :cond_46
    const/4 v2, 0x1

    .line 1314
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v6, v9, v1

    invoke-static {v8, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->waitForTombstoneToBeWritten(Ljava/nio/file/Path;)V

    .line 1315
    sget-object v8, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "** New tombstone found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1316
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1315
    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1308
    .end local v6    # "t":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1322
    :cond_84
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1324
    return v2

    .line 1300
    .end local v2    # "result":Z
    .end local v3    # "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_87
    :goto_87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1301
    return v1
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "reportName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 485
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    if-eqz v0, :cond_5

    .line 486
    return-void

    .line 488
    :cond_5
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 490
    .local v0, "rt":Ljava/lang/Runtime;
    const/4 v1, 0x0

    .line 495
    .local v1, "logOutput":Ljava/io/Writer;
    :try_start_22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 497
    .local v3, "p":Ljava/lang/Process;
    iget-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v4, :cond_43

    .line 498
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    .line 500
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v4

    .line 503
    :cond_43
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 504
    .local v4, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 505
    .local v5, "inReader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 507
    .local v6, "inBuffer":Ljava/io/BufferedReader;
    :goto_51
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "s":Ljava/lang/String;
    if-eqz v7, :cond_7d

    .line 508
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5a} :catch_a9

    if-eqz v7, :cond_77

    .line 514
    :try_start_5c
    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 515
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_64} :catch_65
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_a9

    .line 520
    goto :goto_51

    .line 516
    :catch_65
    move-exception v7

    .line 517
    .local v7, "e":Ljava/io/IOException;
    :goto_66
    :try_start_66
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6d

    goto :goto_66

    .line 518
    :cond_6d
    sget-object v9, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 519
    goto :goto_7d

    .line 522
    .end local v7    # "e":Ljava/io/IOException;
    :cond_77
    sget-object v7, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v7, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 526
    :cond_7d
    :goto_7d
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 527
    .local v7, "status":I
    sget-object v9, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " status was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 529
    if-eqz v1, :cond_a8

    .line 530
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_a8} :catch_a9

    .line 535
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "inReader":Ljava/io/InputStreamReader;
    .end local v6    # "inBuffer":Ljava/io/BufferedReader;
    .end local v7    # "status":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_a8
    goto :goto_cf

    .line 532
    :catch_a9
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "// Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 534
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 536
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_cf
    return-void
.end method

.method private getBugreport(Ljava/lang/String;)V
    .registers 5
    .param p1, "reportName"    # Ljava/lang/String;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 555
    const-string v0, "[ ,:]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "bugreportName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private getMainApps()Z
    .registers 17

    move-object/from16 v1, p0

    .line 1063
    const/4 v2, 0x0

    :try_start_3
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1064
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_108

    .line 1065
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1067
    .local v5, "category":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_24

    .line 1068
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    :cond_24
    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 1071
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 1070
    move-object v7, v4

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 1071
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 1072
    .local v6, "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_eb

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_40

    goto/16 :goto_eb

    .line 1076
    :cond_40
    iget v7, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5d

    .line 1077
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// Selecting main activities from category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1079
    :cond_5d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1080
    .local v7, "NA":I
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_62
    if-ge v9, v7, :cond_104

    .line 1081
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1082
    .local v10, "r":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1083
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v12
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_78} :catch_11b

    const-string v13, ")"

    const-string v14, " (from package "

    if-eqz v12, :cond_b9

    .line 1084
    :try_start_7e
    iget v12, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v12, v8, :cond_aa

    .line 1085
    sget-object v12, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "//   + Using main activity "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1088
    :cond_aa
    iget-object v8, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e6

    .line 1091
    :cond_b9
    iget v8, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v12, 0x3

    if-lt v8, v12, :cond_e6

    .line 1092
    sget-object v8, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "//   - NOT USING main activity "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1080
    .end local v10    # "r":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_e6
    :goto_e6
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x2

    goto/16 :goto_62

    .line 1073
    .end local v7    # "NA":I
    .end local v9    # "a":I
    :cond_eb
    :goto_eb
    sget-object v7, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "// Warning: no activities found for category "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_103} :catch_11b

    .line 1074
    nop

    .line 1064
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "category":Ljava/lang/String;
    .end local v6    # "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_104
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 1101
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_108
    nop

    .line 1103
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_119

    .line 1104
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v3, "** No activities found to run, monkey aborted."

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1105
    return v2

    .line 1108
    :cond_119
    const/4 v0, 0x1

    return v0

    .line 1098
    :catch_11b
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v4, "** Failed talking with package manager!"

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1100
    return v2
.end method

.method private getSystemInterfaces()Z
    .registers 5

    .line 1022
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 1023
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1024
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1026
    return v1

    .line 1029
    :cond_11
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 1030
    if-nez v0, :cond_27

    .line 1031
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1033
    return v1

    .line 1036
    :cond_27
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 1037
    if-nez v0, :cond_3d

    .line 1038
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1040
    return v1

    .line 1044
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$ActivityController-IA;)V

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1045
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_50} :catch_52

    .line 1049
    nop

    .line 1051
    return v3

    .line 1046
    :catch_52
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1048
    return v1
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 955
    .local p1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, ""

    const/4 v1, 0x0

    .line 957
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 959
    :cond_e
    :goto_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "s":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 960
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 961
    .end local v3    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 962
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2a} :catch_4c
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4a

    goto :goto_e

    .line 969
    .end local v2    # "s":Ljava/lang/String;
    :cond_2b
    nop

    .line 971
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 974
    :goto_2f
    goto :goto_48

    .line 972
    :catch_30
    move-exception v2

    .line 973
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .end local v2    # "ioe":Ljava/io/IOException;
    goto :goto_2f

    .line 977
    :goto_48
    const/4 v0, 0x1

    return v0

    .line 969
    :catchall_4a
    move-exception v2

    goto :goto_82

    .line 965
    :catch_4c
    move-exception v2

    .line 966
    .restart local v2    # "ioe":Ljava/io/IOException;
    :try_start_4d
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_4a

    .line 967
    const/4 v3, 0x0

    .line 969
    if-eqz v1, :cond_81

    .line 971
    :try_start_66
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 974
    goto :goto_81

    .line 972
    :catch_6a
    move-exception v4

    .line 973
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 967
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_81
    :goto_81
    return v3

    .line 969
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_82
    if-eqz v1, :cond_9f

    .line 971
    :try_start_84
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 974
    goto :goto_9f

    .line 972
    :catch_88
    move-exception v3

    .line 973
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 976
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_9f
    :goto_9f
    throw v2
.end method

.method private loadPackageLists()Z
    .registers 5

    .line 986
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->hasValidPackages()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 988
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 990
    return v1

    .line 992
    :cond_1b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 993
    .local v0, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 994
    invoke-static {v2, v0}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 995
    return v1

    .line 997
    :cond_2b
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V

    .line 998
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 999
    .local v2, "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 1000
    invoke-static {v3, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1001
    return v1

    .line 1003
    :cond_42
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addInvalidPackages(Ljava/util/Set;)V

    .line 1004
    const/4 v1, 0x1

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 566
    const-string v0, "com.android.commands.monkey"

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v0}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "resultCode":I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 571
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .line 1444
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_9

    .line 1445
    const/4 v0, 0x0

    return-object v0

    .line 1447
    :cond_9
    aget-object v1, v1, v0

    .line 1448
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1449
    return-object v1
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .line 1375
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_9

    .line 1376
    return-object v3

    .line 1378
    :cond_9
    aget-object v0, v1, v0

    .line 1379
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1380
    return-object v3

    .line 1382
    :cond_14
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1383
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1384
    return-object v3

    .line 1386
    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_47

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_47

    .line 1387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_44

    .line 1388
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1389
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1391
    :cond_44
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1392
    return-object v0

    .line 1395
    :cond_47
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1396
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" mCurArgData=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" mNextArg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " argwas=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    sub-int/2addr v5, v2

    aget-object v2, v4, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" nextarg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1399
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 5

    .line 1408
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1409
    return-object v0

    .line 1411
    :cond_5
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_e

    .line 1412
    const/4 v0, 0x0

    return-object v0

    .line 1414
    :cond_e
    aget-object v0, v1, v0

    .line 1415
    .local v0, "data":Ljava/lang/String;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1416
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1417
    return-object v0
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "opt"    # Ljava/lang/String;

    .line 1430
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_a

    .line 1434
    .local v0, "result":J
    nop

    .line 1435
    return-wide v0

    .line 1431
    .end local v0    # "result":J
    :catch_a
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1433
    throw v0
.end method

.method private processOptions()Z
    .registers 9

    .line 800
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    .line 801
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 802
    return v1

    .line 807
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 808
    .local v0, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_10
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_300

    .line 809
    const-string v3, "-s"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 810
    const-string v3, "Seed"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    goto :goto_10

    .line 811
    :cond_28
    const-string v3, "-p"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 812
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 813
    :cond_38
    const-string v3, "-c"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 814
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 815
    :cond_4a
    const-string v3, "-v"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 816
    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_10

    .line 817
    :cond_58
    const-string v3, "--ignore-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 818
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_10

    .line 819
    :cond_63
    const-string v3, "--ignore-timeouts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 820
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto :goto_10

    .line 821
    :cond_6e
    const-string v3, "--ignore-security-exceptions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 822
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto :goto_10

    .line 823
    :cond_79
    const-string v3, "--monitor-native-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 824
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto :goto_10

    .line 825
    :cond_84
    const-string v3, "--ignore-native-crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 826
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto :goto_10

    .line 827
    :cond_8f
    const-string v3, "--kill-process-after-error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 828
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_10

    .line 829
    :cond_9b
    const-string v3, "--hprof"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 830
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_10

    .line 831
    :cond_a7
    const-string v3, "--match-description"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 832
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mMatchDescription:Ljava/lang/String;

    goto/16 :goto_10

    .line 833
    :cond_b7
    const-string v3, "--pct-touch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 834
    const/4 v3, 0x0

    .line 835
    .local v3, "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "touch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 836
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_ce
    const-string v3, "--pct-motion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 837
    const/4 v3, 0x1

    .line 838
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "motion events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 839
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_e5
    const-string v3, "--pct-trackball"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 840
    const/4 v3, 0x3

    .line 841
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "trackball events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 842
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_fc
    const-string v3, "--pct-rotation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 843
    const/4 v3, 0x4

    .line 844
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "screen rotation events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 845
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_113
    const-string v3, "--pct-syskeys"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 846
    const/16 v3, 0x8

    .line 847
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "system (key) operations percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 848
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_12b
    const-string v3, "--pct-nav"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 849
    const/4 v3, 0x6

    .line 850
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 851
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_142
    const-string v3, "--pct-majornav"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 852
    const/4 v3, 0x7

    .line 853
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "major nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 854
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_159
    const-string v3, "--pct-appswitch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 855
    const/16 v3, 0x9

    .line 856
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "app switch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 857
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_171
    const-string v3, "--pct-flip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 858
    const/16 v3, 0xa

    .line 859
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "keyboard flip percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 860
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_189
    const-string v3, "--pct-anyevent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a1

    .line 861
    const/16 v3, 0xb

    .line 862
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "any events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 863
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_1a1
    const-string v3, "--pct-pinchzoom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 864
    const/4 v3, 0x2

    .line 865
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "pinch zoom events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 866
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_1b8
    const-string v3, "--pct-permission"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 867
    const/4 v3, 0x5

    .line 868
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "runtime permission toggle events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    .line 869
    .end local v3    # "i":I
    goto/16 :goto_10

    :cond_1cf
    const-string v3, "--pkg-blacklist-file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 870
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_10

    .line 871
    :cond_1df
    const-string v3, "--pkg-whitelist-file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 872
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_10

    .line 873
    :cond_1ef
    const-string v3, "--throttle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 874
    const-string v3, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_10

    .line 875
    :cond_201
    const-string v3, "--randomize-throttle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    .line 876
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_10

    .line 877
    :cond_20d
    const-string v3, "--wait-dbg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    goto/16 :goto_10

    .line 879
    :cond_217
    const-string v3, "--dbg-no-events"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_223

    .line 880
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_10

    .line 881
    :cond_223
    const-string v3, "--port"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_236

    .line 882
    const-string v3, "Server port to listen on for commands"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v3, v5

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_10

    .line 883
    :cond_236
    const-string v3, "--setup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 884
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_10

    .line 885
    :cond_246
    const-string v3, "-f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 886
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 887
    :cond_259
    const-string v3, "--profile-wait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26b

    .line 888
    const-string v3, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_10

    .line 890
    :cond_26b
    const-string v3, "--device-sleep-time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27d

    .line 891
    const-string v3, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_10

    .line 893
    :cond_27d
    const-string v3, "--randomize-script"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_289

    .line 894
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_10

    .line 895
    :cond_289
    const-string v3, "--script-log"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_295

    .line 896
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_10

    .line 897
    :cond_295
    const-string v3, "--bugreport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    .line 898
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_10

    .line 899
    :cond_2a1
    const-string v3, "--periodic-bugreport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b5

    .line 900
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 901
    const-string v3, "Number of iterations"

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_10

    .line 902
    :cond_2b5
    const-string v3, "--permission-target-system"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c1

    .line 903
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    goto/16 :goto_10

    .line 904
    :cond_2c1
    const-string v3, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    .line 905
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 906
    return v1

    .line 907
    :cond_2cd
    const-string v3, "--disable-logs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e4

    .line 908
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v5, "** Monkey: all log disbled!"

    invoke-virtual {v3, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 909
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mDisableLogs:Z

    .line 910
    sput-boolean v1, Lcom/android/commands/monkey/Logger;->stdout:Z

    .line 911
    sput-boolean v1, Lcom/android/commands/monkey/Logger;->logcat:Z

    goto/16 :goto_10

    .line 913
    :cond_2e4
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 914
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 915
    return v1

    .line 918
    :cond_300
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V
    :try_end_307
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_307} :catch_349

    .line 923
    .end local v0    # "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "opt":Ljava/lang/String;
    nop

    .line 927
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_348

    .line 928
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "countStr":Ljava/lang/String;
    if-nez v0, :cond_31e

    .line 930
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Error: Count not specified"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 931
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 932
    return v1

    .line 936
    :cond_31e
    :try_start_31e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_324
    .catch Ljava/lang/NumberFormatException; {:try_start_31e .. :try_end_324} :catch_325

    .line 941
    goto :goto_348

    .line 937
    :catch_325
    move-exception v2

    .line 938
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: Count is not a number: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 939
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 940
    return v1

    .line 944
    .end local v0    # "countStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_348
    :goto_348
    return v2

    .line 919
    :catch_349
    move-exception v0

    .line 920
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 922
    return v1
.end method

.method private reportAnrTraces()V
    .registers 11

    .line 439
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 441
    goto :goto_7

    .line 440
    :catch_6
    move-exception v0

    .line 445
    :goto_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 446
    .local v0, "recentTraces":[Ljava/io/File;
    if-eqz v0, :cond_48

    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "mostRecent":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 449
    .local v2, "mostRecentMtime":J
    array-length v4, v0

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_2a

    aget-object v6, v0, v5

    .line 450
    .local v6, "trace":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 451
    .local v7, "mtime":J
    cmp-long v9, v7, v2

    if-lez v9, :cond_27

    .line 452
    move-wide v2, v7

    .line 453
    move-object v1, v6

    .line 449
    .end local v6    # "trace":Ljava/io/File;
    .end local v7    # "mtime":J
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 457
    :cond_2a
    if-eqz v1, :cond_48

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "anr traces"

    invoke-direct {p0, v5, v4}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .end local v1    # "mostRecent":Ljava/io/File;
    .end local v2    # "mostRecentMtime":J
    :cond_48
    return-void
.end method

.method private reportDumpsysMemInfo()V
    .registers 3

    .line 471
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private reportProcRank()V
    .registers 2

    .line 430
    const-string v0, "procrank"

    invoke-direct {p0, v0, v0}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .registers 22
    .param p1, "args"    # [Ljava/lang/String;

    .line 581
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v0, :cond_19

    aget-object v5, v2, v4

    .line 582
    .local v5, "s":Ljava/lang/String;
    const-string v6, "--wait-dbg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 583
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 581
    .end local v5    # "s":Ljava/lang/String;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 588
    :cond_19
    iput v3, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 589
    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 590
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 591
    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 594
    iput-object v2, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 595
    array-length v0, v2

    move v6, v3

    :goto_29
    if-ge v6, v0, :cond_4e

    aget-object v7, v2, v6

    .line 596
    .local v7, "a":Ljava/lang/String;
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " arg: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 595
    .end local v7    # "a":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 598
    :cond_4e
    iput v3, v1, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    const/16 v6, 0xc

    if-ge v0, v6, :cond_5e

    .line 602
    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 605
    .end local v0    # "i":I
    :cond_5e
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v0

    const/4 v7, -0x1

    if-nez v0, :cond_66

    .line 606
    return v7

    .line 609
    :cond_66
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 610
    return v7

    .line 614
    :cond_6d
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_83

    .line 615
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v8, "android.intent.category.MONKEY"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_83
    iget-wide v8, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_95

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 623
    :cond_95
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_f9

    .line 624
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Monkey: seed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->dump()V

    .line 626
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_f9

    .line 627
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 629
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":IncludeCategory: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_d4

    .line 634
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f9
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v0

    if-nez v0, :cond_101

    .line 635
    const/4 v0, -0x2

    return v0

    .line 638
    :cond_101
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v0

    if-nez v0, :cond_109

    .line 639
    const/4 v0, -0x3

    return v0

    .line 642
    :cond_109
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v0

    if-nez v0, :cond_111

    .line 643
    const/4 v0, -0x4

    return v0

    .line 646
    :cond_111
    new-instance v0, Ljava/util/Random;

    iget-wide v4, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 648
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-eqz v0, :cond_14b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_14b

    .line 650
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceScript;

    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    iget-wide v11, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v13, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-wide v14, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object v8, v0

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v17}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 652
    iget v6, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v6}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 654
    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto/16 :goto_20e

    .line 655
    :cond_14b
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_19d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_19d

    .line 656
    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v9, :cond_17a

    .line 657
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    iget-object v10, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    iget-wide v11, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v13, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-object v14, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    iget-wide v3, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    iget-boolean v15, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    move-object v8, v0

    move/from16 v19, v15

    move-wide v15, v6

    move-wide/from16 v17, v3

    invoke-direct/range {v8 .. v19}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 660
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto :goto_192

    .line 662
    :cond_17a
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    iget-object v7, v1, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    iget-wide v8, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v10, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-object v11, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-wide v12, v1, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    iget-wide v14, v1, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    iget-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    move-object v6, v0

    move/from16 v16, v3

    invoke-direct/range {v6 .. v16}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 666
    :goto_192
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v3, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 667
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_20e

    .line 668
    :cond_19d
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    if-eq v0, v7, :cond_1bb

    .line 670
    :try_start_1a1
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork;

    iget v3, v1, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1aa} :catch_1b1

    .line 674
    nop

    .line 675
    const v0, 0x7fffffff

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto :goto_20e

    .line 671
    :catch_1b1
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v4, "Error binding to network socket."

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 673
    const/4 v3, -0x5

    return v3

    .line 678
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1bb
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1da

    .line 679
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Seeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 681
    :cond_1da
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceRandom;

    iget-object v8, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    iget-object v9, v1, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/HashMap;

    iget-wide v10, v1, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    iget-boolean v12, v1, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    iget-boolean v13, v1, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/HashMap;JZZ)V

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 683
    iget v3, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f2
    if-ge v0, v6, :cond_207

    .line 686
    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_204

    .line 687
    iget-object v4, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v4, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v4, v0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 685
    :cond_204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f2

    .line 692
    .end local v0    # "i":I
    :cond_207
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    .line 696
    :goto_20e
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v0

    if-nez v0, :cond_218

    .line 697
    const/4 v3, -0x5

    return v3

    .line 702
    :cond_218
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_21f

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 706
    :cond_21f
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 707
    const/4 v3, 0x0

    .line 709
    .local v3, "crashedAtCycle":I
    :try_start_225
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I

    move-result v0
    :try_end_229
    .catchall {:try_start_225 .. :try_end_229} :catchall_38f

    move v4, v0

    .line 713
    .end local v3    # "crashedAtCycle":I
    .local v4, "crashedAtCycle":I
    new-instance v0, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v7, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 715
    nop

    .line 716
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 718
    monitor-enter p0

    .line 719
    :try_start_240
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v0, :cond_24a

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 721
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 723
    :cond_24a
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v0, :cond_276

    .line 724
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v3, "Print the anr report"

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 726
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 728
    :cond_276
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v0, :cond_289

    .line 729
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v3, "Print the watchdog report"

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 730
    const-string v0, "anr_watchdog_"

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 731
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 733
    :cond_289
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v0, :cond_2ae

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_crash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 735
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 737
    :cond_2ae
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v0, :cond_2b8

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 739
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 741
    :cond_2b8
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v0, :cond_2c4

    .line 742
    const-string v0, "Bugreport_"

    invoke-direct {v1, v0}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 743
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 745
    :cond_2c4
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v0, :cond_2ce

    .line 746
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 747
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 749
    :cond_2ce
    monitor-exit p0
    :try_end_2cf
    .catchall {:try_start_240 .. :try_end_2cf} :catchall_38c

    .line 751
    iget-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_2e1

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 753
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_2e1

    .line 754
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v3, "// Generated profiling reports in /data/misc"

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 759
    :cond_2e1
    :try_start_2e1
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v5}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 760
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v3, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_2ee
    .catch Landroid/os/RemoteException; {:try_start_2e1 .. :try_end_2ee} :catch_2ef

    .line 767
    goto :goto_2f6

    .line 761
    :catch_2ef
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    iget v3, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-lt v4, v3, :cond_2f6

    .line 765
    add-int/lit8 v4, v3, -0x1

    .line 770
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f6
    :goto_2f6
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_344

    .line 771
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":Dropped: keys="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " pointers="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " trackballs="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " flips="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " rotations="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 779
    :cond_344
    iget-object v0, v1, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 781
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    sub-int/2addr v0, v5

    if-ge v4, v0, :cond_37f

    .line 782
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** System appears to have crashed at event "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " using seed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v1, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 784
    return v4

    .line 786
    :cond_37f
    iget v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_38a

    .line 787
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v3, "// Monkey finished"

    invoke-virtual {v0, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 789
    :cond_38a
    const/4 v3, 0x0

    return v3

    .line 749
    :catchall_38c
    move-exception v0

    :try_start_38d
    monitor-exit p0
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_38c

    throw v0

    .line 713
    .end local v4    # "crashedAtCycle":I
    .restart local v3    # "crashedAtCycle":I
    :catchall_38f
    move-exception v0

    move-object v4, v0

    new-instance v0, Lcom/android/commands/monkey/MonkeyRotationEvent;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    iget-object v5, v1, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v6, v1, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v7, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    .line 715
    throw v4
.end method

.method private runMonkeyCycles()I
    .registers 14

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "eventCounter":I
    const/4 v1, 0x0

    .line 1123
    .local v1, "cycleCounter":I
    const/4 v2, 0x0

    .line 1124
    .local v2, "shouldReportAnrTraces":Z
    const/4 v3, 0x0

    .line 1125
    .local v3, "shouldReportDumpsysMemInfo":Z
    const/4 v4, 0x0

    .line 1126
    .local v4, "shouldAbort":Z
    const/4 v5, 0x0

    .line 1130
    .local v5, "systemCrashed":Z
    :goto_6
    if-nez v5, :cond_1ea

    :try_start_8
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v6, :cond_1ea

    .line 1131
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_1e3

    .line 1132
    :try_start_d
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_17

    .line 1133
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 1134
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1136
    :cond_17
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v6, :cond_1e

    .line 1137
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1138
    const/4 v2, 0x1

    .line 1140
    :cond_1e
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v6, :cond_42

    .line 1141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anr_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1142
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1144
    :cond_42
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    if-eqz v6, :cond_54

    .line 1145
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v8, "Print the watchdog report"

    invoke-virtual {v6, v8}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1146
    const-string v6, "anr_watchdog_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1147
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 1149
    :cond_54
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v6, :cond_78

    .line 1150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app_crash"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1151
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1153
    :cond_78
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v6, :cond_83

    .line 1154
    const-string v6, "Bugreport_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1155
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1157
    :cond_83
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v6, :cond_8a

    .line 1158
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1159
    const/4 v3, 0x1

    .line 1161
    :cond_8a
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_b9

    .line 1164
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v6

    if-eqz v6, :cond_b9

    if-lez v0, :cond_b9

    .line 1165
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, "** New native crash detected."

    invoke-virtual {v6, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1166
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v6, :cond_a7

    .line 1167
    const-string v6, "native_crash_"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1169
    :cond_a7
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v6, :cond_b6

    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v6, :cond_b6

    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v6, :cond_b4

    goto :goto_b6

    :cond_b4
    move v6, v7

    goto :goto_b7

    :cond_b6
    :goto_b6
    move v6, v8

    :goto_b7
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1172
    :cond_b9
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v6, :cond_be

    .line 1173
    const/4 v4, 0x1

    .line 1175
    :cond_be
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    if-eqz v6, :cond_c7

    .line 1176
    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 1177
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1179
    :cond_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_d .. :try_end_c8} :catchall_1e0

    .line 1183
    if-eqz v2, :cond_ce

    .line 1184
    const/4 v2, 0x0

    .line 1185
    :try_start_cb
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1188
    :cond_ce
    if-eqz v3, :cond_d4

    .line 1189
    const/4 v3, 0x0

    .line 1190
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1193
    :cond_d4
    if-eqz v4, :cond_f7

    .line 1194
    const/4 v4, 0x0

    .line 1195
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v7, "** Monkey aborted due to error."

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1196
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events injected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1197
    return v0

    .line 1203
    :cond_f7
    iget-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v6, :cond_101

    .line 1204
    add-int/lit8 v0, v0, 0x1

    .line 1205
    add-int/lit8 v1, v1, 0x1

    .line 1206
    goto/16 :goto_6

    .line 1209
    :cond_101
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v6, :cond_157

    rem-int/lit8 v6, v0, 0x64

    if-nez v6, :cond_157

    if-eqz v0, :cond_157

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    .line 1211
    .local v6, "calendarTime":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1212
    .local v9, "systemUpTime":J
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    //[calendar_time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " system_uptime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1214
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    // Sending event #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1217
    .end local v6    # "calendarTime":Ljava/lang/String;
    .end local v9    # "systemUpTime":J
    :cond_157
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v6}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v6

    .line 1218
    .local v6, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v6, :cond_1c5

    .line 1219
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v6, v7, v9, v10}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v7

    .line 1220
    .local v7, "injectCode":I
    if-nez v7, :cond_19c

    .line 1221
    sget-object v8, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, "    // Injection Failed"

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1222
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_17e

    .line 1223
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    goto :goto_1b8

    .line 1224
    :cond_17e
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v8, :cond_188

    .line 1225
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_1b8

    .line 1226
    :cond_188
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v8, :cond_192

    .line 1227
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_1b8

    .line 1228
    :cond_192
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v8, :cond_1b8

    .line 1229
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    goto :goto_1b8

    .line 1231
    :cond_19c
    const/4 v9, -0x1

    if-ne v7, v9, :cond_1a8

    .line 1232
    const/4 v5, 0x1

    .line 1233
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v9, "** Error: RemoteException while injecting event."

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_1b8

    .line 1234
    :cond_1a8
    const/4 v9, -0x2

    if-ne v7, v9, :cond_1b8

    .line 1235
    iget-boolean v9, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    xor-int/2addr v8, v9

    move v5, v8

    .line 1236
    if-eqz v5, :cond_1b8

    .line 1237
    sget-object v8, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v9, "** Error: SecurityException while injecting event."

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1242
    :cond_1b8
    :goto_1b8
    instance-of v8, v6, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v8, :cond_1c4

    .line 1243
    add-int/lit8 v0, v0, 0x1

    .line 1244
    iget-boolean v8, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v8, :cond_1c4

    .line 1245
    add-int/lit8 v1, v1, 0x1

    .line 1248
    .end local v7    # "injectCode":I
    :cond_1c4
    goto :goto_1de

    .line 1249
    :cond_1c5
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v7, :cond_1ea

    .line 1250
    add-int/lit8 v1, v1, 0x1

    .line 1251
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1253
    iget-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v7, :cond_1de

    .line 1254
    int-to-long v9, v1

    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_1de

    .line 1255
    iput-boolean v8, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z
    :try_end_1de
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_1de} :catch_1e3

    .line 1263
    .end local v6    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1de
    :goto_1de
    goto/16 :goto_6

    .line 1179
    :catchall_1e0
    move-exception v6

    :try_start_1e1
    monitor-exit p0
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    .end local v0    # "eventCounter":I
    .end local v1    # "cycleCounter":I
    .end local v2    # "shouldReportAnrTraces":Z
    .end local v3    # "shouldReportDumpsysMemInfo":Z
    .end local v4    # "shouldAbort":Z
    .end local v5    # "systemCrashed":Z
    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :try_start_1e2
    throw v6
    :try_end_1e3
    .catch Ljava/lang/RuntimeException; {:try_start_1e2 .. :try_end_1e3} :catch_1e3

    .line 1264
    .restart local v0    # "eventCounter":I
    .restart local v1    # "cycleCounter":I
    .restart local v2    # "shouldReportAnrTraces":Z
    .restart local v3    # "shouldReportDumpsysMemInfo":Z
    .restart local v4    # "shouldAbort":Z
    .restart local v5    # "systemCrashed":Z
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :catch_1e3
    move-exception v6

    .line 1265
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v7, "** Error: A RuntimeException occurred:"

    invoke-static {v7, v6}, Lcom/android/commands/monkey/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1eb

    .line 1266
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_1ea
    nop

    .line 1267
    :goto_1eb
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events injected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1268
    return v0
.end method

.method private showUsage()V
    .registers 4

    .line 1456
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1457
    .local v0, "usage":Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1458
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1462
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1463
    const-string v1, "              [--match-description TEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1465
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1467
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1468
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1469
    const-string v1, "              [--pct-permission PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1472
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1475
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1476
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1477
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1479
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1482
    const-string v1, "              [--periodic-bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    const-string v1, "              [--permission-target-system]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    const-string v1, "              [--disable-logs]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1485
    const-string v1, "              COUNT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1486
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1487
    return-void
.end method

.method private signalPersistentProcesses()V
    .registers 4

    .line 1277
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1279
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_12

    .line 1280
    const-wide/16 v0, 0x7d0

    :try_start_a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1281
    monitor-exit p0

    goto :goto_1c

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    .end local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :try_start_11
    throw v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_12

    .line 1284
    .restart local p0    # "this":Lcom/android/commands/monkey/Monkey;
    :catch_12
    move-exception v0

    goto :goto_1d

    .line 1282
    :catch_14
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1285
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    nop

    .line 1286
    :goto_1d
    return-void
.end method

.method private waitForTombstoneToBeWritten(Ljava/nio/file/Path;)V
    .registers 8
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 1333
    const/4 v0, 0x0

    .line 1336
    .local v0, "isWritten":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    sget v2, Lcom/android/commands/monkey/Monkey;->NUM_READ_TOMBSTONE_RETRIES:I

    if-ge v1, v2, :cond_25

    .line 1337
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_26

    .line 1339
    .local v2, "size":J
    const-wide/16 v4, 0x3e8

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_26

    .line 1340
    :goto_f
    goto :goto_12

    :catch_10
    move-exception v4

    goto :goto_f

    .line 1341
    :goto_12
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_22

    :try_start_18
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_26

    cmp-long v4, v4, v2

    if-nez v4, :cond_22

    .line 1343
    const/4 v0, 0x1

    .line 1344
    goto :goto_25

    .line 1336
    .end local v2    # "size":J
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1349
    .end local v1    # "i":I
    :cond_25
    :goto_25
    goto :goto_43

    .line 1347
    :catch_26
    move-exception v1

    .line 1348
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get tombstone file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1350
    .end local v1    # "e":Ljava/io/IOException;
    :goto_43
    if-nez v0, :cond_4d

    .line 1351
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v2, "Incomplete tombstone file."

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 1352
    return-void

    .line 1354
    :cond_4d
    return-void
.end method

.method private writeScriptLog(I)V
    .registers 7
    .param p1, "count"    # I

    .line 542
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    .line 543
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "scriptlog.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 544
    .local v0, "output":Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iteration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_48

    .line 549
    .end local v0    # "output":Ljava/io/Writer;
    goto :goto_52

    .line 547
    :catch_48
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :goto_52
    return-void
.end method
