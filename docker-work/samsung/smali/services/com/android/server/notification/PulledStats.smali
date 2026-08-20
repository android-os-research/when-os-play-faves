.class public Lcom/android/server/notification/PulledStats;
.super Ljava/lang/Object;
.source "PulledStats.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PulledStats"


# instance fields
.field public mTimePeriodEndMs:J

.field public final mTimePeriodStartMs:J

.field public mUndecoratedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUndecoratedPackage(Ljava/lang/String;J)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    return-void
.end method

.method public dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown pulled stats request: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    :cond_18
    const-string p1, "  Packages with undecordated notifications ("

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, " - "

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, "):"

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3f

    const-string p0, "    none"

    .line 92
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 94
    :cond_3f
    iget-object p0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    :goto_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 95
    iget-boolean v0, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_5d

    iget-object v0, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 96
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    :cond_72
    :goto_72
    return-void
.end method

.method public endTimeMs()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    return-wide v0
.end method

.method public toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown pulled stats request: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PulledStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 52
    :cond_1e
    new-instance v1, Lcom/android/server/notification/PulledStats$1;

    const-string v2, "NotificationManager pulled metric output"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/android/server/notification/PulledStats$1;-><init>(Lcom/android/server/notification/PulledStats;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;I)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_28
    const/4 p0, 0x0

    .line 73
    aget-object p0, v0, p0

    return-object p0
.end method

.method public writeToProto(ILandroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown pulled stats request: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PulledStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 112
    :cond_1a
    iget-object p0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide v0, 0x20b00000001L

    .line 113
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    .line 114
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 115
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_20

    :cond_41
    :goto_41
    return-void
.end method
