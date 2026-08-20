.class Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternAbnormalAndroidAuto.java"


# static fields
.field public static final ANDROID_AUTO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field static final PDC4_CATEGORY_ASSOC_REJECT:I = 0x1

.field static final PDC4_CATEGORY_AUTH_FAIL:I = 0x2

.field static final PDC4_CATEGORY_DISCONNECT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PatternAbnormalAndroidAuto"

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private mCategoryId:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

.field private mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
.end method

.method private getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 3

    const-string p0, "creatorName"

    const-string v0, "unknown"

    .line 165
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    .line 63
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->UNKNOWN:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "apTypeInt"

    .line 63
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isAndroidAuto(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 6

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget v1, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_18

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getNetworkType(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result p0

    sget-object p1, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p0, p1, :cond_28

    return v2

    :cond_18
    const-string p0, "com.google.android.projection.gearhead"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "PatternAbnormalAndroidAuto"

    const-string p1, "pattern not matches"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    const/4 p0, 0x1

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

    const/16 v0, 0xe

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0xf

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/16 v0, 0xc8

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 7

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const-string v1, "PatternAbnormalAndroidAuto"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string p0, "[getBigDataParams] : mLastIssuedReport == null"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 174
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    if-nez v3, :cond_17

    const-string p0, "[getBigDataParams] : mDisconnectInfo == null"

    .line 175
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 178
    :cond_17
    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_50

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "netid"

    invoke-static {v0, v5, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_34

    const-string p0, "skip, invalid network id"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 183
    :cond_34
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "Rev01"

    .line 184
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 185
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_50
    return-object v2
.end method

.method protected getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;
    .registers 3

    const-string p0, "bssid"

    const-string v0, "unknown"

    .line 72
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "android_auto"

    return-object p0
.end method

.method protected getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/4 p0, -0x1

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "assocReason"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 6

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->isAndroidAuto(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 34
    :cond_8
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_18

    return v1

    .line 41
    :cond_18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 42
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    return v3

    .line 37
    :cond_1d
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 38
    iput v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    return v3
.end method

.method public matches()Z
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->pdc1Matches()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 80
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->pdc2Matches()Z

    move-result p0

    return p0
.end method

.method public pdc1Matches()Z
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xc

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 91
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getCreatorName(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.projection.gearhead"

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 97
    :cond_1b
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/16 v4, 0xc8

    .line 100
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/4 v0, 0x2

    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    const-string v3, "PatternAbnormalAndroidAuto"

    if-nez v2, :cond_39

    const-string p0, "not connected"

    .line 103
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 107
    :cond_39
    iput v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    .line 108
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->updateIpReport(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pdc1Matches] matched android auto disconnect issue cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_67
    return v1
.end method

.method public pdc2Matches()Z
    .registers 7

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    const-string v2, "PatternAbnormalAndroidAuto"

    if-eqz v0, :cond_15

    const-string p0, "not a connecting state"

    .line 121
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 125
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2d

    const/16 v3, 0xf

    .line 127
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v3, :cond_31

    const-string p0, "could not find auth.fail report"

    .line 129
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 133
    :cond_2d
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    :cond_31
    if-nez v0, :cond_4f

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v3, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_4b

    const/16 v3, 0xe

    .line 138
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v3, :cond_4f

    const-string p0, "could not find assoc reject report"

    .line 140
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 144
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    :cond_4f
    if-nez v0, :cond_57

    const-string p0, "could not find supplicant events"

    .line 148
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 152
    :cond_57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getReason(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v1

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android auto pattern matches bssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mLastIssuedReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->getBssid(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mCategoryId:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_78

    const-string v4, " association rejected"

    goto :goto_7a

    :cond_78
    const-string v4, " authentication failed"

    .line 155
    :goto_7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " assocRejectStatusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternAbnormalAndroidAuto;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 160
    iput v1, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    return v5
.end method
