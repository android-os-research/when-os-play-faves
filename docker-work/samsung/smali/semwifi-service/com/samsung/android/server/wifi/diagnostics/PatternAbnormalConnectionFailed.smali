.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternAbnormalConnectionFailed.java"


# static fields
.field static final PDC2_CATEGORY_ASSOC_REJECT:I = 0x5

.field static final PDC2_CATEGORY_AUTH_FAIL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalConn"

.field private static final VERSION:Ljava/lang/String; = "Rev04"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method

.method private getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 3

    const-string p0, "bssid"

    const-string v0, "unknown"

    .line 70
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/4 p0, -0x1

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "reason"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/16 p0, -0x63

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "rssi"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0xe

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0xf

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/16 v0, 0xca

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/16 v0, 0xc8

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    .line 41
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 6

    .line 132
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_44

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz v0, :cond_44

    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    if-eqz v3, :cond_44

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "netid"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_28

    const-string p0, "PatternAbnormalConn"

    const-string v0, "skip, invalid network id"

    .line 134
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 137
    :cond_28
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "Rev04"

    .line 138
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 139
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v1
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "connection"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 5

    .line 49
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xf

    if-eq v0, v1, :cond_15

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_15

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_15
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p1, 0x6

    .line 58
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    return v2

    .line 52
    :cond_1b
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p1, 0x5

    .line 53
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    return v2
.end method

.method public matches()Z
    .registers 8

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    const-string v2, "PatternAbnormalConn"

    if-eqz v0, :cond_15

    const-string p0, "not a connecting state"

    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 84
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2d

    const/16 v3, 0xf

    .line 86
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v3, :cond_31

    const-string p0, "could not find auth.fail report"

    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 92
    :cond_2d
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    :cond_31
    if-nez v0, :cond_4f

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_4b

    const/16 v3, 0xe

    .line 97
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v3, :cond_4f

    const-string p0, "could not find assoc reject report"

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 103
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    :cond_4f
    if-nez v0, :cond_57

    const-string p0, "could not find supplicant events"

    .line 107
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 110
    :cond_57
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v3

    const/16 v4, -0x41

    if-ge v3, v4, :cond_65

    const-string p0, "weak signal"

    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 115
    :cond_65
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v1

    .line 116
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pattern matches bssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mCategoryId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_86

    const-string v5, " association rejected"

    goto :goto_88

    :cond_86
    const-string v5, " authentication failed"

    .line 118
    :goto_88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalConnectionFailed;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/4 p0, 0x1

    return p0
.end method
