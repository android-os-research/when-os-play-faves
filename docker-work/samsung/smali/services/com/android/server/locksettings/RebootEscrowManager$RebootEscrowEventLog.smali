.class public Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootEscrowEventLog"
.end annotation


# instance fields
.field public mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

.field public mNextIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 820
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    const/4 v0, 0x0

    .line 821
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public addEntry(I)V
    .registers 3

    .line 824
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V

    return-void
.end method

.method public addEntry(II)V
    .registers 4

    .line 828
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V

    return-void
.end method

.method public final addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V
    .registers 4

    .line 832
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 833
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 834
    array-length p1, v1

    rem-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9

    .line 838
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    .line 840
    :goto_b
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_6d

    .line 841
    iget v3, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    add-int/2addr v3, v1

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_1a

    goto :goto_6a

    :cond_1a
    const-string v3, "Event #"

    .line 846
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v3, " event="

    .line 852
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 855
    iget-object v3, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    if-eqz v3, :cond_6a

    const-string v3, " user="

    .line 856
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 857
    iget-object v2, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_6d
    return-void
.end method
