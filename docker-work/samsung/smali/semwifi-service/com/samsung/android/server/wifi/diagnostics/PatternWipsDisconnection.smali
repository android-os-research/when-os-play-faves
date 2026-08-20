.class public Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternWipsDisconnection.java"


# static fields
.field private static final PDC2_CATEGORY_ID_WIPS_DISCONNECT:I = 0xa

.field private static final VERSION:Ljava/lang/String; = "Rev02"


# instance fields
.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
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

    const/16 p0, 0xc8

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 57
    :cond_6
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->getPatternId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "Rev02"

    .line 58
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v3, 0xb

    .line 60
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-direct {v2, v3, v1, p0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "wips"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 5

    .line 37
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, -0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "disconnectReason"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_21

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v1
.end method

.method public matches()Z
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternWipsDisconnection;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
