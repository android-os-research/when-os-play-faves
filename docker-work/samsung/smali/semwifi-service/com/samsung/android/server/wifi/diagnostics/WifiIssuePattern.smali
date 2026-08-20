.class abstract Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.super Ljava/lang/Object;
.source "WifiIssuePattern.java"


# static fields
.field static final ANDROID:Ljava/lang/String; = "android"

.field static final BASE_START_REPORT_ID:I = 0xb
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final DBG:Z

.field static final EMPTY:Ljava/lang/String; = "empty"

.field static final INVALID_DATA:I = -0x1

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final SHELL:Ljava/lang/String; = "com.android.shell"

.field static final SYSTEM:Ljava/lang/String; = "system"

.field static final SYSTEM_UID:Ljava/lang/String; = "android.uid.system"

.field static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLastData()Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 129
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_48

    .line 132
    :cond_11
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_47

    .line 133
    check-cast p0, Ljava/lang/String;

    if-eqz p2, :cond_46

    .line 136
    :try_start_19
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_26

    .line 137
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_47

    .line 138
    :cond_26
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_33

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_47

    .line 140
    :cond_33
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_40

    .line 141
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_47

    .line 142
    :cond_40
    instance-of p1, p2, Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_42} :catch_45

    if-eqz p1, :cond_46

    goto :goto_47

    :catch_45
    return-object p2

    :cond_46
    const/4 p0, 0x0

    :cond_47
    :goto_47
    move-object p2, p0

    :cond_48
    :goto_48
    return-object p2
.end method

.method public static getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p2

    .line 120
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAssociatedReportIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBigDataParams()Landroid/os/Bundle;
.end method

.method protected getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .registers 4

    const/16 v0, 0xb

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(III)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object p0

    return-object p0
.end method

.method protected getLastIndexOfData(III)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .registers 8

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_31

    .line 81
    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 82
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    if-ne v2, v3, :cond_22

    goto :goto_31

    .line 85
    :cond_22
    iget v3, v2, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v3, p1, :cond_2b

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_2b

    return-object v2

    :cond_2b
    if-ne v3, p2, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLastIndexOfData(IJI)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .registers 10

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    sub-long/2addr v1, p2

    .line 103
    iget-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_24
    if-ltz p2, :cond_41

    .line 104
    iget-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 105
    iget-wide v3, p3, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_35

    goto :goto_41

    .line 108
    :cond_35
    iget v3, p3, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v3, p1, :cond_3e

    add-int/lit8 v0, v0, 0x1

    if-ne p4, v0, :cond_3e

    return-object p3

    :cond_3e
    add-int/lit8 p2, p2, -0x1

    goto :goto_24

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPatternId()Ljava/lang/String;
.end method

.method protected isApiCalledByNonSystemApk(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.settings"

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "com.android.systemui"

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "com.android.shell"

    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "android"

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    if-eqz p1, :cond_2a

    const-string p0, "system"

    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method protected isApiCalledByNonSystemUid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    const-string p0, "android.uid.system"

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public abstract isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
.end method

.method public abstract matches()Z
.end method

.method public matches(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/diagnostics/ReportData;",
            ">;)Z"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLogs:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastData()Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    const-string p0, "unknown.ssid"

    return-object p0

    .line 178
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_21

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_21

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_21

    .line 180
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    return-object p1
.end method
