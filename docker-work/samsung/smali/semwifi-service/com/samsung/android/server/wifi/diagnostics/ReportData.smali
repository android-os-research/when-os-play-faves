.class Lcom/samsung/android/server/wifi/diagnostics/ReportData;
.super Ljava/lang/Object;
.source "ReportData.java"


# static fields
.field static final KEY_HTIME:Ljava/lang/String; = "htime"

.field static final KEY_REPORT_ID:Ljava/lang/String; = "rid"

.field static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final SPECIAL_CHAR_BACK_SLASH:C = '\\'

.field private static final SPECIAL_CHAR_EQUAL:C = '='

.field private static final SPECIAL_CHAR_SPACE:C = ' '

.field private static final TRANS_CHAR_COLON:C = ':'

.field private static final TRANS_CHAR_DOT:C = '.'


# instance fields
.field mData:Landroid/os/Bundle;

.field mReportId:I

.field protected final mSimpleDataFormat:Ljava/text/DateFormat;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mTime:J


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .registers 5

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;-><init>(ILandroid/os/Bundle;J)V

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;J)V
    .registers 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mSimpleDataFormat:Ljava/text/DateFormat;

    .line 50
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    .line 51
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->updateSpecialCharValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    .line 52
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    return-void
.end method

.method private getHumanReadableTime()Ljava/lang/String;
    .registers 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mSimpleDataFormat:Ljava/text/DateFormat;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 73
    :catch_d
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateSpecialCharValues(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 56
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 59
    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x2e

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    const/16 v3, 0x3a

    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_38
    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "htime"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->getHumanReadableTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "time"

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rid"

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mData:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_68

    const-string v4, "null"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 88
    :cond_68
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 91
    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
