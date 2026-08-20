.class public final Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeriodicStoreOLOG"
.end annotation


# static fields
.field public static Diff_OlogLength:J

.field public static Origin_OlogLength:J

.field public static STORE_FLAG_FOR_ADD:Z

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$smclear()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdump(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstep()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->step()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstoreOLOG(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->storeOLOG(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 610
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    const-wide/16 v0, 0x0

    .line 612
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 613
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static clear()V
    .registers 1

    .line 999
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1000
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    :cond_9
    return-void
.end method

.method public static clear(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1006
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    if-eqz p0, :cond_a

    const-string v0, " [OLOG] CLEAR OLOGR - PERIODIC STORE"

    .line 1009
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "======================================================================"

    if-nez p0, :cond_c

    .line 1065
    sget-object p0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v0, " [OLOG][ADB] dump() - pw is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1072
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1073
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    .line 1076
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v1, " [OLOG][ADB] SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    .line 1077
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    .line 1087
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_2c

    goto :goto_33

    .line 1089
    :catch_2c
    sget-object p0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v0, " [OLOG][ADB] dump() - Exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_22

    if-nez p1, :cond_5

    goto :goto_22

    .line 1023
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [OLOG][ADB] exc cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->dump(Ljava/io/PrintWriter;)V

    const-string p1, " [OLOG][ADB] olog end"

    .line 1053
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1016
    :cond_22
    :goto_22
    sget-object p1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v0, " [OLOG][ADB] executeCommand() - pw or cmd is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, " [OLOG][ADB] exc pw or cmd is null"

    .line 1017
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static init()V
    .registers 1

    .line 617
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    return-void
.end method

.method public static makestoreOLOG()V
    .registers 0

    .line 975
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->sendPeriodicReportToHandler()V

    .line 976
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    return-void
.end method

.method public static sendPeriodicReportToHandler()V
    .registers 3

    const/16 v0, 0x15

    const-wide/32 v1, 0x493e0

    .line 990
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method public static step()V
    .registers 1

    .line 641
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 642
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    .line 644
    :cond_9
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->makestoreOLOG()V

    return-void
.end method

.method public static storeOLOG(Ljava/lang/String;)Z
    .registers 7

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 661
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 663
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetBefore_Store_time()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_1f

    .line 664
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetBefore_Store_time()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xdbba00

    cmp-long v0, v0, v4

    if-gez v0, :cond_1f

    return v3

    :cond_1f
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 677
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 678
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 691
    :try_start_36
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 701
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_41} :catch_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_41} :catch_94
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_41} :catch_8b
    .catchall {:try_start_36 .. :try_end_41} :catchall_7c

    .line 702
    :try_start_41
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_46} :catch_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_46} :catch_6a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_67
    .catchall {:try_start_41 .. :try_end_46} :catchall_64

    .line 704
    :goto_46
    :try_start_46
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_50

    .line 705
    invoke-virtual {v1, v0, v3, p0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_46

    .line 711
    :cond_50
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 712
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 715
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 726
    invoke-static {v2, v3}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfputBefore_Store_time(J)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_60} :catch_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_60} :catch_6b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_68
    .catchall {:try_start_46 .. :try_end_60} :catchall_62

    move-object p0, v4

    goto :goto_71

    :catchall_62
    move-exception p0

    goto :goto_80

    :catchall_64
    move-exception v0

    move-object v1, p0

    goto :goto_7f

    :catch_67
    move-object v1, p0

    :catch_68
    move-object p0, v4

    goto :goto_8c

    :catch_6a
    move-object v1, p0

    :catch_6b
    move-object p0, v4

    goto :goto_95

    :catch_6d
    move-object v1, p0

    :catch_6e
    move-object p0, v4

    goto :goto_9e

    :cond_70
    move-object v1, p0

    :goto_71
    if-eqz p0, :cond_76

    .line 738
    :try_start_73
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    if-eqz v1, :cond_a6

    .line 739
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_a6

    goto :goto_a6

    :catchall_7c
    move-exception v0

    move-object v1, p0

    move-object v4, v1

    :goto_7f
    move-object p0, v0

    :goto_80
    if-eqz v4, :cond_85

    .line 738
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_85

    :catch_85
    :cond_85
    if-eqz v1, :cond_8a

    .line 739
    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8a

    .line 740
    :catch_8a
    :cond_8a
    throw p0

    :catch_8b
    move-object v1, p0

    :goto_8c
    if-eqz p0, :cond_91

    .line 738
    :try_start_8e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_91

    :catch_91
    :cond_91
    if-eqz v1, :cond_a6

    goto :goto_78

    :catch_94
    move-object v1, p0

    :goto_95
    if-eqz p0, :cond_9a

    :try_start_97
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    if-eqz v1, :cond_a6

    goto :goto_78

    :catch_9d
    move-object v1, p0

    :goto_9e
    if-eqz p0, :cond_a3

    :try_start_a0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a3

    :catch_a3
    :cond_a3
    if-eqz v1, :cond_a6

    goto :goto_78

    :catch_a6
    :cond_a6
    :goto_a6
    const/4 p0, 0x1

    return p0
.end method

.method public static storeOLOGComp()V
    .registers 9

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 755
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 757
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/remaining_olog"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 770
    :try_start_19
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 775
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_9e
    .catchall {:try_start_19 .. :try_end_24} :catchall_9b

    .line 777
    :try_start_24
    sget-boolean v1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_2f

    .line 778
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_34

    .line 784
    :cond_2f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_34
    move-object v3, v1

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 796
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 801
    :goto_3b
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v6, 0x0

    if-lez v1, :cond_46

    .line 802
    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3b

    .line 805
    :cond_46
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    if-eqz v0, :cond_54

    .line 806
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    sget-wide v7, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    sub-long/2addr v0, v7

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    goto :goto_5a

    .line 808
    :cond_54
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    .line 811
    :goto_5a
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 816
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 817
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 820
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 825
    sget-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    const-wide/32 v7, 0x4c4b40

    cmp-long v0, v0, v7

    if-gtz v0, :cond_82

    sget-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    const-wide/32 v7, 0x989680

    cmp-long v0, v0, v7

    if-lez v0, :cond_7f

    goto :goto_82

    .line 828
    :cond_7f
    sput-boolean v5, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    goto :goto_84

    .line 826
    :cond_82
    :goto_82
    sput-boolean v6, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_84} :catch_8b
    .catchall {:try_start_24 .. :try_end_84} :catchall_87

    :goto_84
    move-object v0, v3

    move-object v3, v4

    goto :goto_90

    :catchall_87
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_c2

    :catch_8b
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_a0

    :cond_8f
    move-object v0, v3

    :goto_90
    if-eqz v3, :cond_95

    .line 841
    :try_start_92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    :cond_95
    if-eqz v0, :cond_c0

    .line 842
    :try_start_97
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_c0

    goto :goto_c0

    :catchall_9b
    move-exception v0

    move-object v1, v3

    goto :goto_c2

    :catch_9e
    move-exception v0

    move-object v1, v3

    .line 839
    :goto_a0
    :try_start_a0
    sget-object v2, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [OLOG] storeOLOGComp - File copy error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_a0 .. :try_end_b6} :catchall_c1

    if-eqz v3, :cond_bb

    .line 841
    :try_start_b8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bb

    :catch_bb
    :cond_bb
    if-eqz v1, :cond_c0

    .line 842
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    :catch_c0
    :cond_c0
    :goto_c0
    return-void

    :catchall_c1
    move-exception v0

    :goto_c2
    if-eqz v3, :cond_c7

    .line 841
    :try_start_c4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c7

    :catch_c7
    :cond_c7
    if-eqz v1, :cond_cc

    .line 842
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cc

    .line 843
    :catch_cc
    :cond_cc
    throw v0
.end method

.method public static storeOLOGComp(Ljava/io/PrintWriter;)V
    .registers 19

    move-object/from16 v1, p0

    if-eqz v1, :cond_9

    const-string v0, " [OLOG][ADB] STORE OLOGR - PERIODIC STORE"

    .line 852
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 896
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 901
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/kperfmon"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/log/remaining_olog"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_22
    const-string v5, " [OLOG][ADB] storeOLOGComp try"

    .line 905
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_15e

    const-string v5, " [OLOG][ADB] storeOLOGComp lk_proc is file"

    .line 909
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_37} :catch_16d
    .catchall {:try_start_22 .. :try_end_37} :catchall_16a

    .line 913
    :try_start_37
    sget-boolean v2, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    const/4 v6, 0x1

    if-eqz v2, :cond_47

    .line 914
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_15a
    .catchall {:try_start_37 .. :try_end_41} :catchall_156

    :try_start_41
    const-string v4, " [OLOG][ADB] storeOLOGComp should add"

    .line 915
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_154
    .catchall {:try_start_41 .. :try_end_46} :catchall_152

    goto :goto_51

    .line 917
    :cond_47
    :try_start_47
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_15a
    .catchall {:try_start_47 .. :try_end_4c} :catchall_156

    :try_start_4c
    const-string v4, " [OLOG][ADB] storeOLOGComp should overwrite"

    .line 918
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_51} :catch_154
    .catchall {:try_start_4c .. :try_end_51} :catchall_152

    :goto_51
    move-object v4, v2

    .line 922
    :try_start_52
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    sput-wide v7, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [OLOG][ADB] START lk_store = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 926
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] START midBound = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",  midnanoBound = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :goto_92
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v11, 0x0

    if-lez v2, :cond_9d

    .line 930
    invoke-virtual {v4, v0, v11, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_92

    .line 933
    :cond_9d
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    if-eqz v0, :cond_ab

    .line 934
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    sget-wide v14, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    sub-long/2addr v12, v14

    sput-wide v12, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    goto :goto_b1

    .line 936
    :cond_ab
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    .line 939
    :goto_b1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [OLOG][ADB] AFTER lk_store = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Diff lk_store = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 944
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 947
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " [OLOG][ADB] AFTER higBound = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", highnanoBound = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    sget-wide v14, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v0, v14, v16

    if-gtz v0, :cond_119

    sget-wide v14, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    const-wide/32 v16, 0x989680

    cmp-long v0, v14, v16

    if-lez v0, :cond_116

    goto :goto_119

    .line 953
    :cond_116
    sput-boolean v6, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    goto :goto_11b

    .line 951
    :cond_119
    :goto_119
    sput-boolean v11, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    .line 955
    :goto_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [OLOG][ADB] STORE FUN excute time is = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v12, v9

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [OLOG][ADB] STORE_FLAG_FOR_ADD = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_14f} :catch_15a
    .catchall {:try_start_52 .. :try_end_14f} :catchall_156

    move-object v0, v4

    move-object v4, v5

    goto :goto_15f

    :catchall_152
    move-exception v0

    goto :goto_158

    :catch_154
    move-exception v0

    goto :goto_15c

    :catchall_156
    move-exception v0

    move-object v2, v4

    :goto_158
    move-object v4, v5

    goto :goto_196

    :catch_15a
    move-exception v0

    move-object v2, v4

    :goto_15c
    move-object v4, v5

    goto :goto_16f

    :cond_15e
    move-object v0, v4

    :goto_15f
    if-eqz v4, :cond_164

    .line 962
    :try_start_161
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_164

    :catch_164
    :cond_164
    if-eqz v0, :cond_194

    .line 963
    :try_start_166
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_194

    goto :goto_194

    :catchall_16a
    move-exception v0

    move-object v2, v4

    goto :goto_196

    :catch_16d
    move-exception v0

    move-object v2, v4

    .line 959
    :goto_16f
    :try_start_16f
    sget-object v3, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [OLOG][ADB] storeOLOGComp - File copy error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " [OLOG][ADB] storeOLOGComp catch"

    .line 960
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_16f .. :try_end_18a} :catchall_195

    if-eqz v4, :cond_18f

    .line 962
    :try_start_18c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_18f

    :catch_18f
    :cond_18f
    if-eqz v2, :cond_194

    .line 963
    :try_start_191
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_194

    :catch_194
    :cond_194
    :goto_194
    return-void

    :catchall_195
    move-exception v0

    :goto_196
    if-eqz v4, :cond_19b

    .line 962
    :try_start_198
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_19b

    :catch_19b
    :cond_19b
    if-eqz v2, :cond_1a0

    .line 963
    :try_start_19d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1a0

    .line 964
    :catch_1a0
    :cond_1a0
    throw v0
.end method
