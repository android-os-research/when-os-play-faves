.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternAbnormalRoaming.java"


# static fields
.field static final MAX_DURATION:J = 0x927c0L

.field static final MAX_TRIGGER_COUNT:I = 0x6

.field static final PDC3_CATEGORY_FREQ_ROAMING_TRIGGERED:I = 0x1

.field static final ROAMING_TYPE:Ljava/lang/String; = "dongle"

.field private static final TAG:Ljava/lang/String; = "PatternRoaming"

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mCategoryId:I

.field private mCount:I

.field private final roamingHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$07PxewslcHAdV2qHAipEZFfO7yc(JLandroid/util/Pair;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lambda$removeOldHistory$0(JLandroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lyc-XaKh2_rVkLK-ADHOY4K3dgA(Ljava/util/Set;Landroid/util/Pair;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lambda$matches$1(Ljava/util/Set;Landroid/util/Pair;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$matches$1(Ljava/util/Set;Landroid/util/Pair;)V
    .registers 2

    .line 85
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$removeOldHistory$0(JLandroid/util/Pair;)Z
    .registers 5

    .line 78
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private removeOldHistory()V
    .registers 5

    .line 77
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    sub-long/2addr v0, v2

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {p0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz v0, :cond_61

    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    if-nez v0, :cond_9

    goto :goto_61

    .line 99
    :cond_9
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "dongle"

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingType(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCount:I

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingTriggerCount(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object v0

    const-string v1, "Rev01"

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/16 v2, -0xc8

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rssi"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setRoamingRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const-string v2, "bssid"

    const-string v3, "unknown"

    .line 104
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const-string v1, "ssid"

    .line 105
    invoke-static {p0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_61
    :goto_61
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "roaming"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 7

    .line 58
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_d

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v1

    .line 62
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->removeOldHistory()V

    const-string v0, "roaming_type"

    const-string v2, ""

    .line 63
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "dongle"

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    :cond_23
    const-string v0, "bssid"

    .line 67
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    return v1

    .line 71
    :cond_32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->lastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    iget-wide v3, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x6

    if-lt p0, p1, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public matches()Z
    .registers 5

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 84
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 86
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCount:I

    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->roamingHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matched abnormal roaming issue cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalRoaming;->mCategoryId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PatternRoaming"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return v0
.end method
