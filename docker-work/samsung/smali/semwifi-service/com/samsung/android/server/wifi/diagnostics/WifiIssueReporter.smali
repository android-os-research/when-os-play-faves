.class public Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;
.super Ljava/lang/Object;
.source "WifiIssueReporter.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;


# static fields
.field private static final DEFAULT_ACTION:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field static final DEFAULT_NETWORK_ISSUE_COUNT:I = 0x3

.field static final DEFAULT_NETWORK_ISSUE_DURATION_MINUTES:I = 0xb4

.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.salab.issuetracker"

.field static final DEFAULT_SAME_ISSUE_IGNORING_DURATION_HOURS:I = 0xc

.field static final HOURS_MS:J = 0x36ee80L

.field private static final INVALID_DATA:I = -0x1

.field static final KEY_ACTION:Ljava/lang/String; = "action"

.field static final KEY_FILTERED_ASSOC_REJECT_STATUS_CODES:Ljava/lang/String; = "filteredAssociationRejectedStatusCodes"

.field static final KEY_FILTERED_DISCONNECT_REASON:Ljava/lang/String; = "filteredDisconnectReasons"

.field static final KEY_FILTERED_SSID_LIST:Ljava/lang/String; = "filteredSsids"

.field static final KEY_GATHERING_PATTERN_IDS:Ljava/lang/String; = "gatheringPatterns"

.field static final KEY_NETWORK_ISSUE_COUNT:Ljava/lang/String; = "countForIgnoringSameNetworkIssue"

.field static final KEY_NETWORK_ISSUE_DURATION_MINUTES:Ljava/lang/String; = "durationMinsForIgnoringSameNetworkIssue"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final KEY_SAME_ISSUE_DURATION_HOURS:Ljava/lang/String; = "durationHoursForIgnoringSameIssue"

.field static final MINUTES_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "SemWifi.IssueReporter"


# instance fields
.field private actionName:Ljava/lang/String;

.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final context:Landroid/content/Context;

.field private countOfNetworkIssues:I

.field private durationOfIgnoringSameIssueMs:J

.field private durationOfNetworkIssueMs:J

.field private final filteredAssocRejectedStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredDisconnectReasons:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredSsids:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gatheringPatterns:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isStarted:Z

.field private final issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final lastNetworkIssueHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final lastReportedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final networkIssuePatternIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PW7LBNC6QtcsHnr0pTKQmKPTMWI(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;JLjava/lang/Long;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lambda$checkNetworkHistory$1(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qvA11pQd5KZEo8L44O-fNcnsi9I(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lambda$updateSettings$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 82
    iput-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    .line 88
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    .line 89
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    const-wide/32 p1, 0x2932e00

    .line 90
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    .line 91
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->networkIssuePatternIds:Ljava/util/Set;

    const-string p2, "ap"

    const-string p3, "disconnect"

    const-string v0, "connection"

    const-string v1, "dhcp"

    .line 92
    filled-new-array {p2, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-wide/32 p1, 0xa4cb80

    .line 93
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    const/4 p1, 0x3

    .line 94
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    const-string p1, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 95
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    const-string p1, "com.salab.issuetracker"

    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    return-void
.end method

.method private addHistory(Ljava/lang/String;J)V
    .registers 4

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private broadcastToIssueTracker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERRCODE"

    const/16 v2, -0x72

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERRPKG"

    const-string v2, "WIFI"

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERRNAME"

    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ERRMSG"

    .line 343
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :try_start_24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->context:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method private checkFilter(Ljava/lang/String;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 8

    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 231
    monitor-exit v0

    return v1

    .line 233
    :cond_e
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v2, "ssid"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p1, :cond_1e

    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 236
    monitor-exit v0

    return v1

    .line 239
    :cond_34
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v2, "locallyGenerated"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 240
    iget-object v2, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v4, "disconnectReason"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq p1, v3, :cond_5c

    if-eq v2, v3, :cond_5c

    if-nez p1, :cond_4c

    goto :goto_4e

    :cond_4c
    mul-int/lit8 v2, v2, -0x1

    .line 243
    :goto_4e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 244
    monitor-exit v0

    return v1

    .line 247
    :cond_5c
    iget-object p1, p2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string p2, "assocReason"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_74

    .line 249
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 250
    monitor-exit v0

    return v1

    .line 253
    :cond_74
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw p0
.end method

.method private checkNetworkHistory(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 190
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3, p4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;J)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 191
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->getDisconnectionEventCount(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_67

    .line 192
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastNetworkIssueHistory:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save network issue "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.IssueReporter"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 198
    :cond_67
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 199
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method

.method private checkReportHistory(JLjava/lang/String;)Z
    .registers 9

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->lastReportedHistory:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_46

    sub-long/2addr p1, v3

    .line 220
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_46

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already reported "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0x36ee80

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " hours ago"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.IssueReporter"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method private generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locallyGenerated"

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_18

    const-string v0, "\ube44\uc815\uc0c1\uc801\uc73c\ub85c \uc5f0\uacb0\uc744 \ub04a\uc5b4\uc84c\uc2b5\ub2c8\ub2e4.\n"

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_18
    const-string v0, "AP\uc5d0 \uc758\ud574 \uc5f0\uacb0\uc774 \ub04a\uc5b4\uc84c\uc2b5\ub2c8\ub2e4.\n"

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    const-string v0, "\uc5f0\uacb0 \ub04a\uae40 \ucf54\ub4dc: "

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "disconnectReason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bssid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateConnectionFailedDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0 \uc911 \uc5f0\uc18d\uc801\uc73c\ub85c \uc5f0\uacb0 \uc2e4\ud328\uac00 \ubc1c\uc0dd \ub418\uc5c8\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ssid"

    .line 319
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bssid"

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateDescription(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)[Ljava/lang/String;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 259
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v1, "patternId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v2, "categoryId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_168

    if-ne v1, v3, :cond_1e

    goto/16 :goto_168

    .line 265
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    sparse-switch v5, :sswitch_data_16a

    goto :goto_81

    :sswitch_4b
    const-string v5, "roaming"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_81

    :cond_54
    const/4 v3, 0x4

    goto :goto_81

    :sswitch_56
    const-string v5, "disconnect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_81

    :cond_5f
    move v3, v6

    goto :goto_81

    :sswitch_61
    const-string v5, "dhcp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto :goto_81

    :cond_6a
    move v3, v9

    goto :goto_81

    :sswitch_6c
    const-string v5, "ap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto :goto_81

    :cond_75
    move v3, v7

    goto :goto_81

    :sswitch_77
    const-string v5, "connection"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    goto :goto_81

    :cond_80
    move v3, v8

    :goto_81
    const/4 v5, 0x5

    packed-switch v3, :pswitch_data_180

    return-object v4

    .line 298
    :pswitch_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Roaming Wi-Fi network frequently"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateRoamingDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_136

    :pswitch_9f
    if-nez v1, :cond_b3

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Abnormal Wi-Fi disconnection (LCD ON)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c8

    :cond_b3
    if-ne v1, v9, :cond_c7

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Abnormal Wi-Fi disconnection (LCD OFF)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c8

    :cond_c7
    move-object v2, v4

    .line 275
    :goto_c8
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_136

    :pswitch_d0
    if-ne v1, v5, :cond_f1

    move-object p0, v4

    move-object v2, p0

    goto :goto_136

    :pswitch_d5
    if-ne v1, v6, :cond_e9

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AP rejected Wi-Fi connection"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ea

    :cond_e9
    move-object v2, v4

    .line 281
    :goto_ea
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateAbnormalDisconnectDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_136

    :cond_f1
    :pswitch_f1
    if-ne v1, v5, :cond_105

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Connection failed (Association Rejected)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_130

    :cond_105
    const/4 v3, 0x6

    if-ne v1, v3, :cond_11a

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Connection failed (Wrong password)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_130

    :cond_11a
    const/4 v3, 0x7

    if-ne v1, v3, :cond_12f

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Connection failed (Obtaining IP Address)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_130

    :cond_12f
    move-object v2, v4

    .line 295
    :goto_130
    iget-object p1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateConnectionFailedDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 304
    :goto_136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_143

    goto :goto_14a

    :cond_143
    new-array p1, v9, [Ljava/lang/String;

    aput-object v2, p1, v8

    aput-object p0, p1, v7

    return-object p1

    .line 305
    :cond_14a
    :goto_14a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unsupported pattern id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " category: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.IssueReporter"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    :goto_168
    return-object v4

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x2e3b8122 -> :sswitch_77
        0xc2f -> :sswitch_6c
        0x2f07f1 -> :sswitch_61
        0x1f9d589c -> :sswitch_56
        0x517a5c19 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_d5
        :pswitch_d0
        :pswitch_9f
        :pswitch_86
    .end packed-switch
.end method

.method private generateRoamingDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\ub450 BSSID \uac04 \ub85c\ubc0d\uc774 \ube48\ubc88\ud558\uac8c \uc2e4\ud589 \ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc774\ub984: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ssid"

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bssid"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDisconnectionEventCount(Ljava/lang/String;)I
    .registers 3

    const-string v0, "dhcp:7"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const-string v0, "dhcp:5"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    return p0

    .line 209
    :cond_14
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    return p0
.end method

.method private static getKey(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v2, "patternId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v1, "categoryId"

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkNetworkHistory$1(JLjava/lang/Long;)Z
    .registers 8

    .line 190
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    sub-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private synthetic lambda$updateSettings$0(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x20

    const/16 v1, 0x2e

    .line 136
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filtered ssid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifi.IssueReporter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateSettings(Landroid/os/Bundle;)Z
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const-string v1, "gatheringPatterns"

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_94

    .line 131
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->gatheringPatterns:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredSsids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const-string v1, "filteredSsids"

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 135
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    :cond_32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const-string v1, "filteredDisconnectReasons"

    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 144
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredDisconnectReasons:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const-string v1, "filteredAssociationRejectedStatusCodes"

    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 149
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->filteredAssocRejectedStatusCodes:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_9e

    const-string v0, "durationHoursForIgnoringSameIssue"

    const/16 v1, 0xc

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    .line 153
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfIgnoringSameIssueMs:J

    const-string v0, "durationMinsForIgnoringSameNetworkIssue"

    const/16 v1, 0xb4

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 155
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->durationOfNetworkIssueMs:J

    const-string v0, "countForIgnoringSameNetworkIssue"

    const/4 v1, 0x3

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->countOfNetworkIssues:I

    const-string v0, "action"

    const-string v1, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->actionName:Ljava/lang/String;

    const-string v0, "packageName"

    const-string v1, "com.salab.issuetracker"

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->targetPackageName:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_94
    :goto_94
    :try_start_94
    const-string p0, "SemWifi.IssueReporter"

    const-string p1, "gatheringPatterns should not be empty"

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 129
    monitor-exit v0

    return p0

    :catchall_9e
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_94 .. :try_end_a0} :catchall_9e

    throw p0
.end method


# virtual methods
.method public onIssueDetected(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V
    .registers 9

    .line 164
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->getKey(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkFilter(Ljava/lang/String;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 168
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 169
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkReportHistory(JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    return-void

    .line 172
    :cond_18
    iget-object v3, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v4, "patternId"

    const-string v5, "unknown"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v4, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    const-string v5, "ssid"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->networkIssuePatternIds:Ljava/util/Set;

    .line 175
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 176
    invoke-direct {p0, v0, v4, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->checkNetworkHistory(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_41

    return-void

    .line 179
    :cond_41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->generateDescription(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_48

    return-void

    :cond_48
    const/4 v3, 0x0

    .line 183
    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->broadcastToIssueTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->addHistory(Ljava/lang/String;J)V

    return-void
.end method

.method public startMonitoring(Landroid/os/Bundle;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->updateSettings(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->stopMonitoring()V

    return-void

    .line 104
    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    const-string v0, "SemWifi.IssueReporter"

    if-nez p1, :cond_1e

    const-string p1, "start"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    goto :goto_23

    :cond_1e
    const-string p0, "already started"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public stopMonitoring()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    const-string v1, "SemWifi.IssueReporter"

    if-eqz v0, :cond_14

    const-string v0, "stop"

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->issueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->unregisterDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$PatternMatchedListener;)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->isStarted:Z

    goto :goto_19

    :cond_14
    const-string p0, "already stopped"

    .line 119
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method
