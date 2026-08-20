.class public Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;
.super Landroid/os/Handler;
.source "WifiIssueDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;,
        Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;
    }
.end annotation


# static fields
.field private static final CMD_REPORT:I = 0x1

.field private static final CMD_WRITE_FILE:I = 0x2

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/issue_detector.conf"

.field static final MAX_LIST_SIZE:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "WifiIssueDetector"


# instance fields
.field private final historyReportIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mLogLock:Ljava/lang/Object;

.field private final mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatternMatchedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatternMatchesLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DDNvUVPUG-HSglBcEmGKqmnge5I(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$dump$0(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P6vKK314feA0y5SfgAtH3-FY47E(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$saveHistory$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uYvZTmKhAf8NVLX3ORWPXa0k-Yw(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x32

    goto :goto_b

    :cond_9
    const/16 v0, 0xc8

    :goto_b
    sput v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V
    .registers 4

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    .line 61
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    .line 62
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->historyReportIds:Ljava/util/Set;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 71
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p3, 0x320

    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;

    .line 88
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->registerIssuePattern(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;)V

    goto :goto_93

    .line 91
    :cond_a3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->loadHistory()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    return-void
.end method

.method private addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    if-lt v1, v2, :cond_13

    .line 327
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private addToHistoryDump(Ljava/lang/String;)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    if-lt v1, v2, :cond_13

    .line 316
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    const/4 p1, 0x2

    .line 320
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->removeMessages(I)V

    const-wide/16 v0, 0xbb8

    .line 321
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_23
    move-exception p0

    .line 319
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method private attemptIssueDetection(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 7

    .line 209
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 212
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter p2

    .line 213
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 214
    monitor-exit p2

    return v0

    .line 216
    :cond_15
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_9f

    .line 218
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getPatternId()Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getBigDataParams()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_87

    const-string v1, "patternId"

    .line 222
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    const-string v1, "categoryId"

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "feature"

    .line 227
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->sendBroadcastIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 232
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    const-string v2, "WifiIssueDetector"

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addToHistoryDump(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;

    .line 241
    invoke-interface {v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;->onReportAdded(I)V

    goto :goto_61

    .line 243
    :cond_71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;

    .line 244
    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;->onIssueDetected(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    goto :goto_77

    :cond_87
    const-string p0, "WifiIssueDetector"

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pattern matched! pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_9f
    move-exception p0

    .line 216
    :try_start_a0
    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method private attemptReport(ILandroid/os/Bundle;)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const-string v0, "htime"

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_e
    const-string v0, "time"

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-wide/16 v1, 0x0

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;J)V

    goto :goto_34

    .line 143
    :cond_2f
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;)V

    .line 146
    :goto_34
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiIssueDetector"

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->historyReportIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 149
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->addToHistoryDump(Ljava/lang/String;)V

    .line 152
    :cond_62
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_68
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;

    .line 153
    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;->onReportAdded(I)V

    goto :goto_68

    .line 156
    :cond_78
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 157
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;

    .line 158
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->attemptIssueDetection(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result p2

    if-eqz p2, :cond_94

    :cond_a6
    return-void
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 3

    .line 186
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Ljava/lang/String;)V
    .registers 3

    .line 190
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$saveHistory$2(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 2

    .line 283
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private loadHistory()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/issue_detector.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 271
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x186a0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2f

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2a

    const-string p0, "WifiIssueDetector"

    const-string v0, "failed to remove all history"

    .line 273
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 277
    :cond_2f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->readFromFile()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private readFromFile()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    :try_start_5
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/data/misc/wifi/issue_detector.conf"

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_32

    .line 292
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->MAX_LIST_SIZE:I

    if-lt v2, v3, :cond_20

    const/4 v2, 0x0

    .line 294
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    :cond_20
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_28

    goto :goto_e

    .line 298
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_32

    goto :goto_3c

    :catchall_28
    move-exception v1

    .line 290
    :try_start_29
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    .line 299
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-object p0
.end method

.method private saveHistory()V
    .registers 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 284
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->writeLogToFile(Ljava/lang/String;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 284
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private sendBroadcastIssueDetected(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.ISSUE_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "bigdataFeature"

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "patternId"

    .line 256
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "categoryId"

    .line 257
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    :try_start_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "com.samsung.permission.WIFI_DIAGNOSTICS_PROVIDER"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_3f

    .line 263
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Send broadcast before boot - action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiIssueDetector"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method private writeLogToFile(Ljava/lang/String;)V
    .registers 4

    const-string p0, "WifiIssueDetector"

    const-string v0, "write history to file"

    .line 305
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_7
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v0, "/data/misc/wifi/issue_detector.conf"

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_21

    .line 307
    :try_start_10
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 308
    :try_start_13
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_21

    goto :goto_2b

    :catchall_17
    move-exception p1

    .line 306
    :try_start_18
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p0

    :try_start_1d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    .line 309
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "SemWifiIssueDetector:"

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 187
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2f

    const-string v1, "SemWifiIssueDetectorHistory:"

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchesLogs:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 191
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw p0

    :catchall_2f
    move-exception p0

    .line 187
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getRawData(I)Ljava/lang/String;
    .registers 7

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_11
    if-ltz v2, :cond_2f

    .line 199
    iget-object v4, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mLogs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 204
    :cond_2f
    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_39

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_39
    move-exception p0

    .line 204
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled command "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiIssueDetector"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 121
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->saveHistory()V

    goto :goto_30

    .line 114
    :cond_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 115
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_30

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->attemptReport(ILandroid/os/Bundle;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;)V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method registerIssuePattern(Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getAssociatedReportIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 101
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatterns:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_36
    return-void
.end method

.method public report(ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;)V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->mPatternMatchedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
