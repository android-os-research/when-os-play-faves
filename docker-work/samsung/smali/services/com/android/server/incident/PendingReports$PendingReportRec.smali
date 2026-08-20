.class public final Lcom/android/server/incident/PendingReports$PendingReportRec;
.super Ljava/lang/Object;
.source "PendingReports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/PendingReports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingReportRec"
.end annotation


# instance fields
.field public addedRealtime:J

.field public addedWalltime:J

.field public callingPackage:Ljava/lang/String;

.field public flags:I

.field public id:I

.field public listener:Landroid/os/IIncidentAuthListener;

.field public receiverClass:Ljava/lang/String;

.field public reportId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/incident/PendingReports;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 9

    .line 85
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->this$0:Lcom/android/server/incident/PendingReports;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/android/server/incident/PendingReports;->-$$Nest$fgetmNextPendingId(Lcom/android/server/incident/PendingReports;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lcom/android/server/incident/PendingReports;->-$$Nest$fputmNextPendingId(Lcom/android/server/incident/PendingReports;I)V

    iput v0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 87
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 89
    iput-object p6, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 92
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .registers 4

    .line 100
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 101
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.os.IncidentManager"

    .line 102
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/pending"

    .line 103
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    const-string/jumbo v2, "pkg"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "t"

    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_58

    .line 110
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    const-string/jumbo v2, "receiver"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    :cond_58
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 114
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_6a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
