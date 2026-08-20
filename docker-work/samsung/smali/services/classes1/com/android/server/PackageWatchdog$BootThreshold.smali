.class public Lcom/android/server/PackageWatchdog$BootThreshold;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootThreshold"
.end annotation


# instance fields
.field public final mBootTriggerCount:I

.field public final mTriggerWindow:J

.field public final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageWatchdog;IJ)V
    .registers 5

    .line 1692
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput p2, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    .line 1694
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    const-string/jumbo p0, "sys.rescue_boot_count"

    const/4 v0, 0x0

    .line 1703
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMitigationCount()I
    .registers 2

    const-string/jumbo p0, "sys.boot_mitigation_count"

    const/4 v0, 0x0

    .line 1715
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMitigationStart()J
    .registers 3

    const-string/jumbo p0, "sys.boot_mitigation_start"

    const-wide/16 v0, 0x0

    .line 1727
    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStart()J
    .registers 3

    const-string/jumbo p0, "sys.rescue_boot_start"

    const-wide/16 v0, 0x0

    .line 1711
    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndTest()Z
    .registers 9

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->readMitigationCountFromMetadataIfNecessary()V

    .line 1765
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    const-string v2, "PackageWatchdog"

    const-string v3, "Window was less than zero. Resetting start to current time."

    .line 1767
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    .line 1769
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    .line 1771
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_39

    .line 1772
    invoke-virtual {p0, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 1773
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    .line 1775
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 1776
    iget-wide v6, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    if-ltz v2, :cond_4d

    .line 1777
    invoke-virtual {p0, v6}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1778
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    return v3

    .line 1781
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getCount()I

    move-result v0

    add-int/2addr v0, v6

    .line 1782
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    .line 1783
    invoke-static {v3, v0, v4, v5}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 1784
    iget p0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    if-lt v0, p0, :cond_5d

    move v3, v6

    :cond_5d
    return v3
.end method

.method public readMitigationCountFromMetadataIfNecessary()V
    .registers 5

    .line 1749
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1751
    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_33

    .line 1752
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1753
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 1754
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_29

    .line 1755
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_33

    goto :goto_4a

    :catchall_29
    move-exception p0

    .line 1751
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read metadata file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageWatchdog"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1698
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    const/4 v0, 0x0

    .line 1699
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    return-void
.end method

.method public saveMitigationCountToMetadata()V
    .registers 4

    .line 1741
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_25

    .line 1742
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 1743
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_25

    goto :goto_3c

    :catchall_1b
    move-exception p0

    .line 1741
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    :try_start_21
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not save metadata to file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageWatchdog"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method

.method public final setCount(I)V
    .registers 2

    .line 1707
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.rescue_boot_count"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMitigationCount(I)V
    .registers 2

    .line 1731
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.boot_mitigation_count"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMitigationStart(J)V
    .registers 4

    const-string/jumbo v0, "sys.boot_mitigation_start"

    .line 1723
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    return-void
.end method

.method public setPropertyStart(Ljava/lang/String;J)V
    .registers 10

    .line 1735
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-wide v0, p2

    .line 1736
    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p2

    .line 1737
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStart(J)V
    .registers 4

    const-string/jumbo v0, "sys.rescue_boot_start"

    .line 1719
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    return-void
.end method
