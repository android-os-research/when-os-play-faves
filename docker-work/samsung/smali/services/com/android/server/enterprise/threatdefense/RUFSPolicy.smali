.class public Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
.super Ljava/lang/Object;
.source "RUFSPolicy.java"


# static fields
.field public static final DATA_POLICY:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

.field public static final SYSTEM_POLICY:Ljava/lang/String; = "/system/etc/mtdlist.output.txt"

.field public static final TAG:Ljava/lang/String; = "RUFSPolicy"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPolicyVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getLatestPolicy()I

    move-result p1

    .line 35
    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    .line 36
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", version="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getLatestPolicy()I
    .registers 7

    const-string v0, "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

    const-string v1, "/system/etc/mtdlist.output.txt"

    .line 46
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 56
    new-instance v2, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v2, v1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v2, v4

    .line 59
    :goto_26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 62
    new-instance v4, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v4, v0}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    :cond_3b
    const/4 v0, 0x0

    if-nez v2, :cond_48

    if-nez v4, :cond_48

    .line 67
    sget-object p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Default : No RUFS policy files"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_48
    const/4 v1, 0x1

    if-eqz v2, :cond_58

    if-eqz v4, :cond_57

    .line 72
    invoke-virtual {v2}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v5

    if-lt v3, v5, :cond_58

    :cond_57
    move v0, v1

    .line 79
    :cond_58
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v1, :cond_72

    .line 80
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read system path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    if-eqz v0, :cond_75

    goto :goto_76

    :cond_75
    move-object v2, v4

    .line 82
    :goto_76
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I

    move-result p0
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7a} :catch_89
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7a} :catch_82
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7a} :catch_7b

    goto :goto_8f

    :catch_7b
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p0, -0x68

    goto :goto_8f

    :catch_82
    move-exception p0

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p0, -0x6b

    goto :goto_8f

    :catch_89
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/16 p0, -0x6d

    :goto_8f
    return p0
.end method

.method public getPolicyVersion()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    return p0
.end method

.method public final readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p0, "IOException"

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 155
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_4d
    .catchall {:try_start_6 .. :try_end_b} :catchall_48

    .line 156
    :try_start_b
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_17} :catch_45
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_42
    .catchall {:try_start_b .. :try_end_17} :catchall_3d

    .line 157
    :try_start_17
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_29} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_29} :catch_39
    .catchall {:try_start_17 .. :try_end_29} :catchall_93

    .line 165
    :try_start_29
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p1

    .line 169
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    move-object v0, v2

    goto/16 :goto_92

    :catch_39
    move-exception v2

    goto :goto_50

    :catch_3b
    move-exception v2

    goto :goto_78

    :catchall_3d
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_94

    :catch_42
    move-exception v2

    move-object p1, v0

    goto :goto_50

    :catch_45
    move-exception v2

    move-object p1, v0

    goto :goto_78

    :catchall_48
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_94

    :catch_4d
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 161
    :goto_50
    :try_start_50
    sget-object v3, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_93

    if-eqz p1, :cond_6f

    .line 165
    :try_start_6c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_6f
    if-eqz v1, :cond_92

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_74} :catch_85

    goto :goto_92

    :catch_75
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 159
    :goto_78
    :try_start_78
    sget-object v3, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v4, "SecurityException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_93

    if-eqz p1, :cond_87

    .line 165
    :try_start_81
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_87

    :catch_85
    move-exception p1

    goto :goto_8d

    :cond_87
    :goto_87
    if-eqz v1, :cond_92

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_85

    goto :goto_92

    .line 169
    :goto_8d
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_92
    :goto_92
    return-object v0

    :catchall_93
    move-exception v0

    :goto_94
    if-eqz p1, :cond_9c

    .line 165
    :try_start_96
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_9c

    :catch_9a
    move-exception p1

    goto :goto_a2

    :cond_9c
    :goto_9c
    if-eqz v1, :cond_a7

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_9a

    goto :goto_a7

    .line 169
    :goto_a2
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_a7
    :goto_a7
    throw v0
.end method

.method public final readDecodedData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 139
    new-instance p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    .line 142
    sget-object p1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Signature verification failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object p0
.end method

.method public final readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I
    .registers 8

    if-nez p1, :cond_5

    const/16 p0, -0x6a

    return p0

    .line 103
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 104
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RUFSParser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getExceptionList()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getVersion()I

    move-result p1

    if-eqz v0, :cond_ac

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v2, :cond_57

    .line 111
    sget-object v2, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    const-string v2, ":"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_31

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 115
    aget-object p0, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 116
    sget-object p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception package : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9e} :catch_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9e} :catch_9f

    goto :goto_ac

    :catch_9f
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p1, -0x68

    goto :goto_ac

    :catch_a6
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/16 p1, -0x6d

    :cond_ac
    :goto_ac
    return p1
.end method
