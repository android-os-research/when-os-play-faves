.class public Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternApProblem.java"


# static fields
.field static final PDC1_CATEGORY_AP_MAYBE_INVALID_STATE:I = 0x4

.field static final PDC1_CATEGORY_AP_SENT_ABNORMAL_REASON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PatternAPProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev02"


# instance fields
.field private mCategoryId:I

.field private mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
.end method

.method private getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/16 p0, -0x63

    .line 54
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

.method private isInvalidDisconnectReason(I)Z
    .registers 2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_31

    const/4 p0, 0x5

    if-eq p1, p0, :cond_31

    const/16 p0, 0xa

    if-eq p1, p0, :cond_31

    const/16 p0, 0xb

    if-eq p1, p0, :cond_31

    const/16 p0, 0xd

    if-eq p1, p0, :cond_31

    const/16 p0, 0xe

    if-eq p1, p0, :cond_31

    const/16 p0, 0x11

    if-eq p1, p0, :cond_31

    const/16 p0, 0x12

    if-eq p1, p0, :cond_31

    const/16 p0, 0x13

    if-eq p1, p0, :cond_31

    const/16 p0, 0x14

    if-eq p1, p0, :cond_31

    const/16 p0, 0x15

    if-eq p1, p0, :cond_31

    const/16 p0, 0x16

    if-ne p1, p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p0, 0x1

    :goto_32
    return p0
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .registers 4
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

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 4

    .line 108
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_a
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "Rev02"

    .line 112
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 113
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "ap"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 6

    .line 42
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_b

    return v1

    .line 46
    :cond_b
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->getRssi(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v0

    const/16 v3, -0x41

    if-lt v0, v3, :cond_16

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v2

    :cond_16
    return v1
.end method

.method public matches()Z
    .registers 10

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, -0x1

    .line 77
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 78
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const-string v3, "PatternAPProblem"

    const/4 v4, 0x3

    const/16 v5, 0xb

    const/16 v6, 0xc8

    const/4 v7, 0x1

    if-eq v0, v7, :cond_37

    if-eq v0, v6, :cond_18

    goto :goto_57

    .line 80
    :cond_18
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 81
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {v0, v5, v6, v8}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 83
    iget v5, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    if-ne v5, v4, :cond_57

    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    if-nez v0, :cond_57

    const-string v0, "pattern matched, maybe invalid ap state"

    .line 86
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 87
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    goto :goto_57

    .line 91
    :cond_37
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 92
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 94
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v6

    invoke-direct {v0, v5, v8, v6}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 95
    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->isInvalidDisconnectReason(I)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "pattern matched, abnormal disconnect reason"

    .line 96
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput v4, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    .line 103
    :cond_57
    :goto_57
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternApProblem;->mCategoryId:I

    if-eq p0, v2, :cond_5c

    move v1, v7

    :cond_5c
    return v1
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
