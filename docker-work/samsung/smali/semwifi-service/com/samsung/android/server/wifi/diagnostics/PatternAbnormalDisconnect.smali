.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternAbnormalDisconnect.java"


# static fields
.field static final PDC1_CATEGORY_LCD_OFF_STATE:I = 0x2

.field static final PDC1_CATEGORY_STRONG_SIGNAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalDisc"

.field private static final VERSION:Ljava/lang/String; = "Rev06"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
.end method

.method private getCallingPackage(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 3

    const-string p0, "callBy"

    const-string v0, "com.android.systemui"

    .line 54
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 3

    const-string p0, "callUid"

    const-string v0, "android.uid.system"

    .line 50
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 4

    const/4 p0, 0x0

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "state"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    move p0, v0

    :cond_15
    return p0
.end method

.method private isWifiDisabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 4

    const/4 p0, 0x0

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wifiState"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, 0x1

    :cond_14
    return p0
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 132
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "Rev06"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 134
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "disconnect"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 4

    .line 42
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public matches()Z
    .registers 6

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 71
    :cond_9
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v2, 0xb

    .line 72
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/16 v4, 0xc8

    .line 74
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    move-result v0

    const/16 v2, -0x41

    if-ge v0, v2, :cond_27

    return v1

    :cond_27
    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    const-string v3, "PatternAbnormalDisc"

    if-nez v2, :cond_36

    const-string p0, "not connected"

    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    const/16 v2, 0x8

    .line 83
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 84
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result v2

    if-eqz v2, :cond_45

    return v1

    :cond_45
    const/16 v2, 0xc9

    .line 87
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 89
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isWifiDisabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 90
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getCallingPackage(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemApk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string p0, "user switch Wi-Fi off"

    .line 91
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_63
    const/16 v2, 0x67

    .line 95
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 97
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemUid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string p0, "user or system want to connect another network"

    .line 98
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7b
    const/16 v2, 0x66

    .line 102
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_93

    .line 104
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->getCallingUid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->isApiCalledByNonSystemUid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string p0, "user or system want to remove current network"

    .line 105
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_93
    const/16 v2, 0x12e

    .line 109
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_a1

    const-string p0, "no internet, user want to switch"

    .line 111
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a1
    const/16 v2, 0x6b

    .line 115
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 116
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->isEnabled(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const-string p0, "silent roaming activated"

    .line 117
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 121
    :cond_b5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget v4, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    if-nez v4, :cond_bc

    move v1, v0

    .line 122
    :cond_bc
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    const/16 v1, 0x12c

    .line 123
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matched abnormal disconnect issue cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalDisconnect;->mCategoryId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
