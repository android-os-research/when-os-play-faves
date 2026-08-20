.class public Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternScanProblem.java"


# static fields
.field static final MAX_MEASURE_REPORT_SIZE:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_MEASURE_TIME_MS:J = 0xea60L

.field private static final PDC2_CATEGORY_ID_SCAN_FAIL:I = 0x8

.field private static final VERSION:Ljava/lang/String; = "Rev03"


# instance fields
.field private mLastReason:I

.field private mLastScanFailReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private final mScanFailTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    return-void
.end method

.method private addScanFailedReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
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

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0x191

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v0, 0x2

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    .line 41
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 4

    .line 85
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->getPatternId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastReason:I

    .line 86
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    const-string v0, "Rev03"

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "scanning"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 5

    .line 47
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_12

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->addScanFailedReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastScanFailReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p0, 0x1

    return p0

    :cond_12
    const/16 p1, 0xb

    if-eq v0, p1, :cond_1e

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1a

    goto :goto_1e

    :cond_1a
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastScanFailReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v1

    .line 54
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v1
.end method

.method public matches()Z
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastScanFailReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    const/4 v2, 0x2

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastScanFailReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, -0x1

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    .line 75
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mLastReason:I

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternScanProblem;->mScanFailTimes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x1

    return p0

    :cond_42
    return v1
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
