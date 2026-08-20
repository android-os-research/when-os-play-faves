.class public Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternSystemProblem.java"


# static fields
.field private static final PDC2_CATEGORY_ID_HIDL_PROBLEM:I = 0x9

.field private static final PDC2_CATEGORY_ID_SYSTEM_PROBLEM:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "Rev01"


# instance fields
.field private mCategoryId:I

.field private mHangReason:Ljava/lang/String;

.field private mLastProceedMessage:I

.field private mLastProceedState:Ljava/lang/String;

.field private mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mReason:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x7

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 4

    .line 77
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->getPatternId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "Rev01"

    .line 78
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedState:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedMessage:I

    .line 80
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mHangReason:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setHangReason(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mReason:I

    .line 82
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "system"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 6

    .line 47
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x11

    const/4 v3, 0x0

    if-eq v0, v1, :cond_f

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v3

    :cond_f
    const/16 v0, 0x9

    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p0, -0x1

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reason"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p0, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    return v2

    .line 49
    :cond_2b
    iput v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mCategoryId:I

    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return v2
.end method

.method public matches()Z
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const-string v1, "pstate"

    const-string v2, "unknown"

    .line 68
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedState:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pmsg"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastProceedMessage:I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const-string v3, "hangString"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mHangReason:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mLastReportData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternSystemProblem;->mReason:I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
