.class public final Lcom/android/server/am/Pageboost$BigDataProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BigDataProxy"
.end annotation


# static fields
.field public static CNT_INFO:I = 0xa

.field public static ENABLED:Z = false

.field public static final FILENAME:Ljava/lang/String; = "/data/misc/pageboost/last_bigdata_string"

.field public static mSemHqmManager:Landroid/os/SemHqmManager;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetENABLED()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smmakeString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 2748
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initBigDataProxy()V
    .registers 5

    .line 2753
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2762
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v1, :cond_5a

    .line 2763
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigdata init started"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5c

    .line 2765
    :try_start_10
    new-instance v1, Ljava/lang/String;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, " "

    .line 2766
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2768
    array-length v2, v2

    sget v3, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    if-gt v2, v3, :cond_46

    .line 2769
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bigdata str: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2771
    :cond_46
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "invalid bigdata file data"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_50} :catch_51
    .catchall {:try_start_10 .. :try_end_50} :catchall_5c

    goto :goto_5a

    .line 2774
    :catch_51
    :try_start_51
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bigdata File is not found.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public static keepLastData()V
    .registers 7

    .line 2781
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_67

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_b

    goto :goto_67

    .line 2785
    :cond_b
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2786
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_55
    .catchall {:try_start_e .. :try_end_15} :catchall_53

    .line 2787
    :try_start_15
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_49

    :try_start_1a
    const-string v3, " "

    .line 2789
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_3f

    .line 2791
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_49

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_55
    .catchall {:try_start_3b .. :try_end_3e} :catchall_53

    goto :goto_63

    :catchall_3f
    move-exception v3

    .line 2786
    :try_start_40
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v2

    :try_start_45
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw v3
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v2

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_55
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v1

    goto :goto_65

    :catch_55
    move-exception v1

    .line 2792
    :try_start_56
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2795
    :goto_63
    monitor-exit v0

    return-void

    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_53

    throw v1

    :cond_67
    :goto_67
    return-void
.end method

.method public static makeString()Ljava/lang/String;
    .registers 1

    const-string v0, " "

    return-object v0
.end method

.method public static sendData()V
    .registers 11

    .line 2800
    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 2804
    :cond_5
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v9

    .line 2806
    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "VRDK"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
