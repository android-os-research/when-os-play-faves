.class public Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternWifiAppProblem.java"


# static fields
.field private static final MAX_TIME_OUT:J = 0xbb8L

.field private static final PDC1_DISCONNECT_BY_3RD_PARTY_APK:I = 0x1

.field private static final PDC2_COULD_NOT_CHANGED_WIFI_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternAppProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private mDetectedCategoryId:I

.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mNetworkType:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
.end method

.method private getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    .line 59
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "apTypeInt"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/4 p0, 0x0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "wifiState"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "callBy"

    const-string v1, "com.android.systemui"

    .line 54
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemApk(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
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

    const/16 v0, 0x64

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0xc9

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    .line 41
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 101
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    const/4 v1, 0x1

    const-string v2, "Rev01"

    if-ne v0, v1, :cond_2f

    .line 102
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    .line 105
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setNetworkType(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 108
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "wifi_app"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;

    move-result-object p1

    .line 49
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    .line 50
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public matches()Z
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz v0, :cond_84

    .line 70
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const-string v1, "PatternAppProblem"

    const/16 v2, 0xc9

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v2, :cond_55

    const-wide/16 v5, 0xbb8

    .line 71
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(IJI)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 73
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 74
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getWifiState(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v5

    if-eq v2, v5, :cond_55

    .line 75
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->isAppEvent(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Landroid/util/Pair;

    move-result-object v0

    .line 76
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_55

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "matches abnormal Wi-Fi control by "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " previous: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    return v3

    .line 86
    :cond_55
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 88
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matches abnormal disconnect by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mNetworkType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWifiAppProblem;->mDetectedCategoryId:I

    return v3

    :cond_84
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
