.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyStorageManager"
.end annotation


# static fields
.field public static DATA_READ_ERROR:I = -0x3

.field public static FILE_MISSING_CANNOT_CREATE:I = -0x2

.field public static final KGTA_POLICY_PATH:Ljava/lang/String; = "/efs/kgtapolicy"

.field public static PARSING_ERROR:I = -0x4

.field public static STORAGE_ERROR:I = -0x1

.field public static SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KGTAPolicy"

.field public static final USE_TA_STORAGE:Z = true

.field public static instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;


# instance fields
.field public ans_policy:Ljava/lang/String;

.field public ans_signature:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 558
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    monitor-enter v0

    .line 571
    :try_start_3
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    if-nez v1, :cond_e

    .line 572
    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 574
    :cond_e
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clean()V
    .registers 2

    monitor-enter p0

    .line 659
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 660
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cleanState()V
    .registers 2

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public final constructTheSavingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    if-nez p1, :cond_5

    move-object p1, p0

    :cond_5
    if-nez p2, :cond_8

    move-object p2, p0

    .line 620
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "||"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final createPolicyFile()V
    .registers 2

    .line 578
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/kgtapolicy"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    const-string p0, "KGTAPolicy"

    const-string v0, "create new policy file failed, error or already created"

    .line 582
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public declared-synchronized getPolicyRes()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignature()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isFileExists()Z
    .registers 2

    .line 587
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/kgtapolicy"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final parseDataString(Ljava/lang/String;)I
    .registers 5

    const-string v0, "\\|\\|"

    const/4 v1, 0x3

    .line 624
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 625
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_18

    :cond_e
    const/4 v0, 0x0

    .line 629
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->storeDataReady(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_18
    :goto_18
    const-string p0, "KGTAPolicy"

    const-string/jumbo p1, "parsing data issue occurred"

    .line 626
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    return p0
.end method

.method public declared-synchronized readData()I
    .registers 3

    monitor-enter p0

    .line 663
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string v0, "KGTAPolicy"

    const-string/jumbo v1, "use TA to store policy, skipping the EFS..."

    .line 666
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    .line 667
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->storeDataReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    monitor-enter p0

    .line 639
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string p1, "KGTAPolicy"

    const-string/jumbo p2, "use TA to store policy, skipping the EFS..."

    .line 641
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final savetoFileExternal(Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    .line 601
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/efs/kgtapolicy"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_1d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    .line 602
    :try_start_d
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 608
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_25

    const/4 p0, 0x0

    goto :goto_29

    :catchall_15
    move-exception p0

    goto :goto_2a

    :catch_17
    move-object p0, v0

    goto :goto_1d

    :catchall_19
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2a

    .line 604
    :catch_1d
    :goto_1d
    :try_start_1d
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_19

    if-eqz p0, :cond_28

    .line 608
    :try_start_21
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_28

    .line 610
    :catch_25
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    goto :goto_29

    :cond_28
    :goto_28
    move p0, p1

    :goto_29
    return p0

    :goto_2a
    if-eqz v0, :cond_2f

    .line 608
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    .line 612
    :catch_2f
    :cond_2f
    throw p0
.end method

.method public final storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 634
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 635
    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method
