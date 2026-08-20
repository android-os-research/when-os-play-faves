.class public Lcom/android/server/chimera/ChimeraCommonUtil;
.super Ljava/lang/Object;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;,
        Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;,
        Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;,
        Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    }
.end annotation


# static fields
.field public static final ADJ_LEVELS:[I

.field public static final GROUP_CNT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ChimeraCommonUtil"

.field public static final UNKNOWN_ADJ:I = 0x3e9


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    return-void

    :array_a
    .array-data 4
        0x3e7
        0x384
        0x35c
        0x352
        0x320
        0x2bc
        0x258
        0x1f4
        0x190
        0x12c
        0xfa
        0xc8
        0x64
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllRunningPackagePids(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/acct/uid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    const/4 v2, 0x0

    .line 271
    :goto_28
    array-length v3, v0

    if-ge v2, v3, :cond_57

    .line 272
    aget-object v3, v0, v2

    const-string/jumbo v4, "pid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/cgroup.procs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v3, v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->readAcctFile(Ljava/lang/String;Ljava/util/Set;)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_57
    return-object v1
.end method

.method public static getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J
    .registers 5

    .line 59
    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMemInfoByName(Ljava/lang/String;)J
    .registers 6

    const-string v0, ":"

    const-string v1, "/proc/meminfo"

    .line 65
    :try_start_4
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_80
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_76

    .line 66
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_6c

    .line 67
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    :goto_29
    if-gez v4, :cond_43

    .line 71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_29

    .line 74
    :cond_43
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\D+"

    const-string v3, ""

    .line 75
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_62

    int-to-long v3, p0

    .line 77
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_6c

    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_80
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_5a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_76

    return-wide v3

    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6c

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_80
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_61} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_76

    goto :goto_84

    :catchall_62
    move-exception p0

    .line 65
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v0

    :try_start_68
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v0

    :try_start_72
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw p0
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_80
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_76} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_76

    :catch_76
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84

    :catch_7b
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_84

    :catch_80
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getProcPss(Lcom/android/server/chimera/SystemRepository;I)J
    .registers 3

    const/4 v0, 0x0

    .line 128
    invoke-interface {p0, p1, v0}, Lcom/android/server/chimera/SystemRepository;->getPss(I[J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getProcRss(Lcom/android/server/chimera/SystemRepository;I)[J
    .registers 2

    .line 136
    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public static getProcSwapPss(Lcom/android/server/chimera/SystemRepository;I)J
    .registers 2

    .line 132
    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->getSwapPss(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getPsiFile(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;
    .registers 8

    const-string v0, "Exception"

    const-string v1, "ActivityManager"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 144
    :try_start_a
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_4b
    .catchall {:try_start_a .. :try_end_18} :catchall_49

    .line 148
    :goto_18
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_46
    .catchall {:try_start_18 .. :try_end_1c} :catchall_43

    if-nez p0, :cond_3a

    .line 161
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_72

    :catch_22
    move-exception p0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 153
    :cond_3a
    :try_start_3a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_46
    .catchall {:try_start_3a .. :try_end_42} :catchall_43

    goto :goto_18

    :catchall_43
    move-exception p0

    move-object v3, v4

    goto :goto_7c

    :catch_46
    move-exception p0

    move-object v3, v4

    goto :goto_4c

    :catchall_49
    move-exception p0

    goto :goto_7c

    :catch_4b
    move-exception p0

    .line 157
    :goto_4c
    :try_start_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPsiFile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_49

    if-eqz v3, :cond_72

    .line 161
    :try_start_67
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_72

    :catch_6b
    move-exception p0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_28

    .line 169
    :cond_72
    :goto_72
    new-instance p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;-><init>(Ljava/lang/String;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V

    return-object p0

    :goto_7c
    if-eqz v3, :cond_99

    .line 161
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_99

    :catch_82
    move-exception p1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_99
    :goto_99
    throw p0
.end method

.method public static getRamSizeGb()I
    .registers 2

    .line 123
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getTotalMemFree()J
    .registers 5

    const-string v0, "/proc/meminfo"

    .line 89
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_50

    .line 90
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_46

    .line 91
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    const-string v3, "MemFree:"

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D+"

    const-string v4, ""

    .line 95
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_3c

    int-to-long v2, v2

    .line 99
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_46

    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_50

    return-wide v2

    :cond_35
    :try_start_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_46

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_50

    goto :goto_54

    :catchall_3c
    move-exception v2

    .line 89
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v2
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v1

    :try_start_4c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw v0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getTotalMemorySizeKb()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "/proc/meminfo"

    .line 109
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_4d

    .line 110
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_43

    .line 111
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    const-string v3, "MemTotal:"

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D+"

    const-string v4, ""

    .line 114
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_39

    int-to-long v2, v2

    .line 116
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_43

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4d

    return-wide v2

    :cond_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_43

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_4d

    goto :goto_51

    :catchall_39
    move-exception v2

    .line 109
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v1

    :try_start_49
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static isBubEnabled(Lcom/android/server/chimera/SystemRepository;)Z
    .registers 3

    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string/jumbo v1, "on"

    .line 53
    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static readAcctFile(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_2e
    .catchall {:try_start_1 .. :try_end_b} :catchall_2c

    .line 287
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_1d

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_29
    .catchall {:try_start_b .. :try_end_1c} :catchall_26

    goto :goto_f

    .line 297
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_51

    :catch_21
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catchall_26
    move-exception p0

    move-object v0, v1

    goto :goto_52

    :catch_29
    move-exception p1

    move-object v0, v1

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_52

    :catch_2e
    move-exception p1

    :goto_2f
    :try_start_2f
    const-string v1, "ChimeraCommonUtil"

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_2c

    if-eqz v0, :cond_51

    .line 297
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_21

    :cond_51
    :goto_51
    return-void

    :goto_52
    if-eqz v0, :cond_5c

    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    :cond_5c
    :goto_5c
    throw p0
.end method
