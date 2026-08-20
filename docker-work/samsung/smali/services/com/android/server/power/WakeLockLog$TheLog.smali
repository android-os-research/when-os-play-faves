.class public Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TheLog"
.end annotation


# instance fields
.field public final mBuffer:[B

.field public mChangeCount:J

.field public mEnd:I

.field public mLatestTime:J

.field public final mReadWriteTempBuffer:[B

.field public mStart:I

.field public mStartTime:J

.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

.field public final mTempBuffer:[B

.field public final mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBuffer(Lcom/android/server/power/WakeLockLog$TheLog;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChangeCount(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnd(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStart(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartTime(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTranslator(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreadEntryAt(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveTagIndex(Lcom/android/server/power/WakeLockLog$TheLog;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->removeTagIndex(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .registers 6

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [B

    .line 702
    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    new-array v0, v0, [B

    .line 710
    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    const/4 v0, 0x0

    .line 720
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 725
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    const-wide/16 v0, 0x0

    .line 731
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 738
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 743
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 748
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getLogSize()I

    move-result p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 749
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 751
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    .line 752
    iput-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 756
    new-instance p1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;)V

    invoke-virtual {p3, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .registers 10

    .line 780
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 782
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 785
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    return-void

    :cond_1a
    const/4 v1, -0x2

    if-ne v0, v1, :cond_35

    .line 792
    new-instance v0, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    :cond_35
    const/16 v1, 0x9

    if-gt v0, v1, :cond_64

    if-gtz v0, :cond_3c

    goto :goto_64

    .line 803
    :cond_3c
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->makeSpace(I)Z

    move-result v1

    if-nez v1, :cond_43

    return-void

    .line 812
    :cond_43
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    .line 817
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 818
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    .line 820
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {p1, v0, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V

    .line 821
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-void

    .line 797
    :cond_64
    :goto_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Log entry size is out of expected range: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerService.WLLog"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    return-object v0
.end method

.method public final getAvailableSpace()I
    .registers 3

    .line 963
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v0, v1, :cond_c

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length p0, p0

    sub-int/2addr v0, v1

    sub-int/2addr p0, v0

    goto :goto_14

    :cond_c
    if-ge v0, v1, :cond_11

    sub-int p0, v1, v0

    goto :goto_14

    .line 965
    :cond_11
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length p0, p0

    :goto_14
    return p0
.end method

.method public getUsedBufferSize()I
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final isBufferEmpty()Z
    .registers 2

    .line 994
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final makeSpace(I)Z
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    if-ge v0, p1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 953
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v0

    if-ge v0, p1, :cond_13

    .line 954
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->removeOldestItem()V

    goto :goto_9

    :cond_13
    return v1
.end method

.method public final readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .registers 9

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_19

    add-int v1, p1, v0

    .line 1007
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1008
    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v1, v3, :cond_10

    goto :goto_19

    .line 1011
    :cond_10
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    aget-byte v1, v2, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1013
    :cond_19
    :goto_19
    iget-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object p0

    return-object p0
.end method

.method public final removeOldestItem()V
    .registers 7

    .line 972
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 978
    :cond_7
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    .line 983
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 984
    iget-wide v0, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 985
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-void
.end method

.method public final removeTagIndex(I)V
    .registers 11

    .line 907
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 911
    :cond_7
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 912
    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 913
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 914
    :goto_10
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, v4, :cond_4f

    .line 915
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v4

    if-nez v4, :cond_31

    .line 920
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Entry is unreadable - Unexpected @ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerService.WLLog"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 923
    :cond_31
    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v6, 0x0

    if-eqz v5, :cond_3f

    iget v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v5, p1, :cond_3f

    .line 926
    iput-object v6, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 927
    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V

    .line 932
    :cond_3f
    iget-wide v1, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 933
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 934
    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v4, v4

    rem-int/2addr v0, v4

    goto :goto_10

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final writeBytesAt(I[BI)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p1, v0

    .line 1044
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 1045
    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public final writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V
    .registers 7

    .line 1024
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result p2

    if-lez p2, :cond_f

    .line 1030
    iget-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    :cond_f
    return-void
.end method
