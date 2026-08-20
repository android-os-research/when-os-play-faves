.class public Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveLastkmsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;
    }
.end annotation


# static fields
.field public static final AUTO_COMMENT:Ljava/lang/String; = "/proc/auto_comment"

.field public static final DEBUG_HISTORY:Ljava/lang/String; = "/proc/debug_history"

.field public static final ERRP_FILE:Ljava/lang/String; = "/data/system/users/service/data/eRR.p"

.field public static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field public static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field public static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field public static final LAST_SUMMARY:Ljava/lang/String; = "/proc/reset_summary"

.field public static final LAST_TZLOG:Ljava/lang/String; = "/proc/reset_tzlog"

.field public static final MAX_DEBUG_HIST:I = 0x1

.field public static final MAX_LAST_KMSG:I = 0x5

.field public static final MAX_LATEST_KMSG:I = 0x1

.field public static final RESET_HISTORY:Ljava/lang/String; = "/proc/reset_history"

.field public static final RESET_KLOG:Ljava/lang/String; = "/proc/reset_klog"


# instance fields
.field public isSaveLastkmsgDone:Z

.field public final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 652
    iput-boolean p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BootReceiver;Lcom/android/server/BootReceiver$SaveLastkmsg-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    return-void
.end method


# virtual methods
.method public final _trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 714
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    .line 715
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpstate_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 717
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 721
    :cond_2e
    new-instance p1, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {p1, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "trim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Num of existing listOf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BootReceiver"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p3, :cond_68

    return-void

    .line 732
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Delete file"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c1

    .line 734
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " delete failed"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_c1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_61
.end method

.method public final addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string p0, "Error took place while generating dump file: "

    const-string v0, "BootReceiver"

    .line 926
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5d

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 928
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 930
    :try_start_13
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 932
    :goto_1b
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_26

    const/4 p3, 0x0

    .line 933
    invoke-virtual {p2, v1, p3, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1b

    .line 935
    :cond_26
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_43
    .catchall {:try_start_13 .. :try_end_29} :catchall_41

    .line 940
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_5d

    :catch_2d
    move-exception p1

    .line 942
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catchall_41
    move-exception p1

    goto :goto_45

    :catch_43
    move-exception p1

    .line 937
    :try_start_44
    throw p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 940
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_5c

    :catch_49
    move-exception p2

    .line 942
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_5c
    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final logLastKmsg()V
    .registers 27

    move-object/from16 v1, p0

    const-string v2, "UTF-8"

    .line 740
    new-instance v3, Ljava/io/File;

    const-string v0, "/proc/last_kmsg"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    new-instance v4, Ljava/io/File;

    const-string v0, "/proc/reset_summary"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    new-instance v5, Ljava/io/File;

    const-string v0, "/proc/reset_klog"

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    new-instance v6, Ljava/io/File;

    const-string v0, "/proc/reset_tzlog"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    new-instance v7, Ljava/io/File;

    const-string v0, "/proc/version"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    new-instance v8, Ljava/io/File;

    const-string v0, "/proc/auto_comment"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/io/File;

    const-string v9, "/proc/reset_rwc"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/reset_history"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    new-instance v10, Ljava/io/File;

    const-string v11, "/proc/debug_history"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/users/service/data/eRR.p"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x800

    new-array v13, v12, [B

    .line 756
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    const-string v15, "BootReceiver"

    const-string/jumbo v12, "logLastKmsg - Start"

    .line 758
    invoke-static {v15, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_62

    return-void

    .line 763
    :cond_62
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    const-string/jumbo v12, "ro.boot.hardware"

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .line 765
    invoke-static {v12, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 767
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v6}, Lcom/android/server/BootReceiver;->-$$Nest$mgetProcResetReason(Lcom/android/server/BootReceiver;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v4

    const-string v4, "%Y%m%d_%H%M%S"

    .line 768
    invoke-virtual {v14, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v19

    move-object/from16 v20, v9

    const-string/jumbo v9, "s5e"

    move-object/from16 v21, v8

    const-string v8, "exynos"

    move-object/from16 v22, v10

    const-string v10, ".log.gz"

    move-object/from16 v23, v11

    const-string v11, "/data/log/dumpstate_lastkmsg_"

    move-object/from16 v24, v13

    const-string v13, "_"

    if-eqz v19, :cond_129

    move-object/from16 v19, v7

    const/16 v7, 0x400

    move-object/from16 v25, v2

    const/4 v2, 0x0

    .line 773
    :try_start_9f
    invoke-static {v0, v7, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v2, 0x1

    if-eq v7, v2, :cond_d3

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v2, :cond_b1

    goto :goto_d3

    .line 777
    :cond_b1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    goto :goto_148

    .line 775
    :cond_d3
    :goto_d3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_f4} :catch_f5

    goto :goto_148

    :catch_f5
    move-exception v0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readTextFile error"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Reset_RWC"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    goto :goto_148

    :cond_129
    move-object/from16 v25, v2

    move-object/from16 v19, v7

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputlogFileKernel(Ljava/lang/String;)V

    .line 786
    :goto_148
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetlogFileKernel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    const/16 v4, 0x1e

    invoke-static {v0, v4}, Lcom/android/server/BootReceiver;->-$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;I)I

    move-result v0

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We waited make eRRp Done for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_174
    const-string v0, "%Y-%m-%d %H:%M:%S"

    .line 794
    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "========================================================\n"

    .line 797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "== dumpstate lastkmsg : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "logLastKmsg - New filename is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v7}, Lcom/android/server/BootReceiver;->-$$Nest$misStoreLastKmsg(Lcom/android/server/BootReceiver;)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_1c0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1c0

    .line 802
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1c6

    .line 804
    :cond_1c0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_1c5} :catch_337
    .catchall {:try_start_174 .. :try_end_1c5} :catchall_330

    move-object v3, v5

    .line 805
    :goto_1c6
    :try_start_1c6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1cb} :catch_32c
    .catchall {:try_start_1c6 .. :try_end_1cb} :catchall_328

    .line 806
    :try_start_1cb
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1d0} :catch_324
    .catchall {:try_start_1cb .. :try_end_1d0} :catchall_321

    .line 808
    :try_start_1d0
    new-instance v10, Ljava/util/zip/ZipEntry;

    const-string v11, "dumpstate_lastkmsg.lst"

    invoke-direct {v10, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 810
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 811
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 812
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string v0, "\n[Kernel version]: "

    .line 815
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 817
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_20c} :catch_31d
    .catchall {:try_start_1d0 .. :try_end_20c} :catchall_31a

    const-string/jumbo v6, "unknown"

    if-eqz v0, :cond_227

    .line 818
    :try_start_211
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v11, v19

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_218} :catch_31d
    .catchall {:try_start_211 .. :try_end_218} :catchall_31a

    move-object/from16 v11, v24

    .line 819
    :goto_21a
    :try_start_21a
    invoke-virtual {v10, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_235

    .line 820
    invoke-virtual {v7, v11, v4, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_223} :catch_224
    .catchall {:try_start_21a .. :try_end_223} :catchall_413

    goto :goto_21a

    :catch_224
    move-exception v0

    goto/16 :goto_33e

    :cond_227
    move-object/from16 v11, v24

    .line 824
    :try_start_229
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_234
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_234} :catch_318
    .catchall {:try_start_229 .. :try_end_234} :catchall_31a

    const/4 v10, 0x0

    :cond_235
    :try_start_235
    const-string v0, "[Build Fingerprint]: "

    .line 828
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string/jumbo v0, "ro.build.fingerprint"

    .line 830
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 834
    :goto_265
    invoke-virtual {v3, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_26f

    .line 835
    invoke-virtual {v7, v11, v4, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_265

    .line 838
    :cond_26f
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 839
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    const-string v0, "eRR.p"

    move-object/from16 v6, v23

    .line 841
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    const-string v0, "debug_history.txt"

    move-object/from16 v6, v22

    .line 842
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 844
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$misStoreLastKmsg(Lcom/android/server/BootReceiver;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_309

    const-string v0, "dumpstate_auto_comment.lst"

    move-object/from16 v6, v21

    .line 846
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "history_of_auto_comment.txt"

    move-object/from16 v6, v20

    .line 847
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetstoreExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c7

    .line 850
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v6, "store_extra_info.lst"

    invoke-direct {v0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 851
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetstoreExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 852
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    const-string v0, ""

    .line 853
    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputstoreExtraInfo(Ljava/lang/String;)V

    :cond_2c7
    const-string/jumbo v0, "reset_summary.html"

    move-object/from16 v6, v18

    .line 856
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "ocimem.lst"

    move-object/from16 v6, v16

    .line 857
    invoke-virtual {v1, v6, v7, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->addNewDumpFileInZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2e4

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v6, :cond_309

    .line 861
    :cond_2e4
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0, v7}, Lcom/android/server/BootReceiver;->-$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V

    .line 863
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$fgetmAudioManager(Lcom/android/server/BootReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_303

    const-string v0, "Send lastaboxmsg"

    .line 864
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$fgetmAudioManager(Lcom/android/server/BootReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    const-string/jumbo v1, "lastaboxmsg=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_309

    :cond_303
    const-string/jumbo v0, "mAudioManager is NULL skip lastaboxmsg"

    .line 867
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_309} :catch_224
    .catchall {:try_start_235 .. :try_end_309} :catchall_413

    .line 876
    :cond_309
    :goto_309
    :try_start_309
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_30c
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_30c} :catch_30c

    :catch_30c
    if-eqz v10, :cond_311

    .line 877
    :try_start_30e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_311
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_311} :catch_311

    .line 878
    :catch_311
    :cond_311
    :try_start_311
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_314
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_314} :catch_314

    .line 879
    :catch_314
    :goto_314
    :try_start_314
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_317
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_317} :catch_365

    goto :goto_365

    :catch_318
    move-exception v0

    goto :goto_33d

    :catchall_31a
    move-exception v0

    move-object v6, v3

    goto :goto_334

    :catch_31d
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_33d

    :catchall_321
    move-exception v0

    move-object v6, v3

    goto :goto_333

    :catch_324
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_33c

    :catchall_328
    move-exception v0

    move-object v6, v3

    const/4 v5, 0x0

    goto :goto_333

    :catch_32c
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_33b

    :catchall_330
    move-exception v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_333
    const/4 v7, 0x0

    :goto_334
    const/4 v10, 0x0

    goto/16 :goto_415

    :catch_337
    move-exception v0

    move-object/from16 v11, v24

    const/4 v3, 0x0

    :goto_33b
    const/4 v5, 0x0

    :goto_33c
    const/4 v7, 0x0

    :goto_33d
    const/4 v10, 0x0

    .line 874
    :goto_33e
    :try_start_33e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logLastKmsg - File copy error"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_353
    .catchall {:try_start_33e .. :try_end_353} :catchall_413

    if-eqz v3, :cond_358

    .line 876
    :try_start_355
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_358
    .catch Ljava/io/IOException; {:try_start_355 .. :try_end_358} :catch_358

    :catch_358
    :cond_358
    if-eqz v10, :cond_35d

    .line 877
    :try_start_35a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_35d
    .catch Ljava/io/IOException; {:try_start_35a .. :try_end_35d} :catch_35d

    :catch_35d
    :cond_35d
    if-eqz v7, :cond_362

    .line 878
    :try_start_35f
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_35f .. :try_end_362} :catch_362

    :catch_362
    :cond_362
    if-eqz v5, :cond_365

    goto :goto_314

    :catch_365
    :cond_365
    :goto_365
    const/16 v1, 0x3ef

    const/16 v3, 0x3e8

    const/16 v5, 0x1a0

    .line 883
    :try_start_36b
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {v0, v5, v3, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_372
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_372} :catch_373

    goto :goto_388

    :catch_373
    move-exception v0

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpstate_lastkmsg - getCanonicalPath error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_388
    new-instance v6, Ljava/io/File;

    const-string v0, "/data/log/dumpstate_latest_lastkmsg.log.gz"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    :try_start_38f
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_394
    .catch Ljava/io/IOException; {:try_start_38f .. :try_end_394} :catch_3bf
    .catchall {:try_start_38f .. :try_end_394} :catchall_3ba

    .line 899
    :try_start_394
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_399
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_399} :catch_3b8
    .catchall {:try_start_394 .. :try_end_399} :catchall_3b5

    const/16 v8, 0x800

    .line 902
    :goto_39b
    :try_start_39b
    invoke-virtual {v7, v11, v4, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3a6

    .line 903
    invoke-virtual {v2, v11, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3a5
    .catch Ljava/io/IOException; {:try_start_39b .. :try_end_3a5} :catch_3b1
    .catchall {:try_start_39b .. :try_end_3a5} :catchall_3ad

    goto :goto_39b

    .line 908
    :cond_3a6
    :try_start_3a6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3a9
    .catch Ljava/io/IOException; {:try_start_3a6 .. :try_end_3a9} :catch_3a9

    .line 909
    :catch_3a9
    :try_start_3a9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3ac
    .catch Ljava/io/IOException; {:try_start_3a9 .. :try_end_3ac} :catch_3e2

    goto :goto_3e2

    :catchall_3ad
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_407

    :catch_3b1
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_3c3

    :catchall_3b5
    move-exception v0

    move-object v6, v7

    goto :goto_3bc

    :catch_3b8
    move-exception v0

    goto :goto_3c1

    :catchall_3ba
    move-exception v0

    const/4 v6, 0x0

    :goto_3bc
    const/16 v17, 0x0

    goto :goto_408

    :catch_3bf
    move-exception v0

    const/4 v7, 0x0

    :goto_3c1
    const/16 v17, 0x0

    .line 906
    :goto_3c3
    :try_start_3c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "latest LastKmsg - File copy error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d8
    .catchall {:try_start_3c3 .. :try_end_3d8} :catchall_406

    if-eqz v7, :cond_3dd

    .line 908
    :try_start_3da
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3dd
    .catch Ljava/io/IOException; {:try_start_3da .. :try_end_3dd} :catch_3dd

    :catch_3dd
    :cond_3dd
    if-eqz v17, :cond_3e2

    .line 909
    :try_start_3df
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e2
    .catch Ljava/io/IOException; {:try_start_3df .. :try_end_3e2} :catch_3e2

    .line 913
    :catch_3e2
    :cond_3e2
    :goto_3e2
    :try_start_3e2
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v0, v5, v3, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3e9
    .catch Ljava/io/IOException; {:try_start_3e2 .. :try_end_3e9} :catch_3ea

    goto :goto_3ff

    :catch_3ea
    move-exception v0

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpstate_latest_lastkmsg - getCanonicalPath error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3ff
    const-string/jumbo v0, "logLastKmsg - Save Complete"

    .line 922
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_406
    move-exception v0

    :goto_407
    move-object v6, v7

    :goto_408
    if-eqz v6, :cond_40d

    .line 908
    :try_start_40a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_40d
    .catch Ljava/io/IOException; {:try_start_40a .. :try_end_40d} :catch_40d

    :catch_40d
    :cond_40d
    if-eqz v17, :cond_412

    .line 909
    :try_start_40f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_412
    .catch Ljava/io/IOException; {:try_start_40f .. :try_end_412} :catch_412

    .line 910
    :catch_412
    :cond_412
    throw v0

    :catchall_413
    move-exception v0

    move-object v6, v3

    :goto_415
    if-eqz v6, :cond_41a

    .line 876
    :try_start_417
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_41a
    .catch Ljava/io/IOException; {:try_start_417 .. :try_end_41a} :catch_41a

    :catch_41a
    :cond_41a
    if-eqz v10, :cond_41f

    .line 877
    :try_start_41c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_41f
    .catch Ljava/io/IOException; {:try_start_41c .. :try_end_41f} :catch_41f

    :catch_41f
    :cond_41f
    if-eqz v7, :cond_424

    .line 878
    :try_start_421
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_424
    .catch Ljava/io/IOException; {:try_start_421 .. :try_end_424} :catch_424

    :catch_424
    :cond_424
    if-eqz v5, :cond_429

    .line 879
    :try_start_426
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_429
    .catch Ljava/io/IOException; {:try_start_426 .. :try_end_429} :catch_429

    .line 880
    :catch_429
    :cond_429
    throw v0
.end method

.method public run()V
    .registers 2

    .line 950
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimDumps()V

    .line 951
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    return-void
.end method

.method public final trimDumps()V
    .registers 8

    .line 684
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 687
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "BootReceiver"

    if-nez v2, :cond_20

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1f

    const-string/jumbo p0, "trimLastKmsg - logFolder mkdir failed"

    .line 689
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void

    :cond_20
    if-nez v1, :cond_23

    return-void

    .line 699
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 700
    new-instance v2, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x5

    const-string/jumbo v6, "lastkmsg"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v2, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const-string v6, "debug_history"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v2, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "latest_lastkmsg"

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;

    .line 706
    :try_start_69
    invoke-virtual {v2}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->getFileList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->getListMax()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->getDumpInFix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/BootReceiver$SaveLastkmsg;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_79

    goto :goto_5d

    :catch_79
    move-exception v4

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/BootReceiver$SaveLastkmsg$Dump;->getDumpInFix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_9c
    return-void
.end method

.method public waitUntilSaveLastkmsgDone(I)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_28

    .line 657
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const-wide/16 v1, 0x3e8

    .line 659
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_10
    move-exception p0

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waitUntilSaveLastkmsgDone error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p0, -0x1

    return p0
.end method
