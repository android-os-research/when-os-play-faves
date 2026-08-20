.class public La/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z = true

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "HqmInfo"

.field private static d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm; = null

.field private static final e:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    sput-boolean v0, La/s;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, La/s;->f(Ljava/lang/String;[ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, La/s;->g(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAL conditionRead : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HqmInfo"

    invoke-static {v4, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    sget-object v3, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    if-nez v3, :cond_2b

    const-string v3, "HAL getService"

    invoke-static {v4, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->getService(Z)Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    move-result-object v0

    sput-object v0, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    :cond_2b
    sget-object v0, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    if-eqz v0, :cond_50

    invoke-interface {v0}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->initialize()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL CMD : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    new-instance v3, La/r;

    invoke-direct {v3, p1, v1, p0}, La/r;-><init>(Ljava/lang/String;[ZLjava/lang/String;)V

    invoke-interface {v0, p0, v3}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->readHqmFile(Ljava/lang/String;Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$readHqmFileCallback;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_50} :catch_53

    :cond_50
    aget-boolean p0, v1, v2

    return p0

    :catch_53
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HAL RemoteException :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static e(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "HqmInfo"

    const-string v1, "delete file"

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, -0x1

    return p0

    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic f(Ljava/lang/String;[ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL readSysfs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HqmInfo"

    invoke-static {v1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4a

    const-string p2, ""

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    aput-boolean p3, p1, v0

    goto :goto_5e

    :cond_25
    if-eqz p4, :cond_5e

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    aput-boolean p3, p1, v0

    goto :goto_5e

    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "condition value is diff : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5b

    :cond_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "condition node is not exist "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5b
    invoke-static {v1, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private static synthetic g(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL readSysfs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_21

    const-string p0, "(\r\n|\r|\n|\n\r)"

    const-string p2, ""

    invoke-virtual {p3, p0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HqmInfo::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HqmInfo::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, La/s;->b:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HqmInfo::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method public static k()Z
    .registers 5

    const-string v0, "HqmInfo"

    const/4 v1, 0x0

    sput-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "prepareHAL getService"

    invoke-static {v0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->getService(Z)Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    move-result-object v3

    sput-object v3, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_16

    if-eqz v3, :cond_15

    move v1, v2

    :cond_15
    return v1

    :catch_16
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAL RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "e = "

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_5a
    .catchall {:try_start_6 .. :try_end_10} :catchall_58

    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, La/s;->b:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFile:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_53
    .catchall {:try_start_10 .. :try_end_34} :catchall_50

    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_90

    :catch_38
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :catchall_50
    move-exception p1

    move-object v1, v2

    goto :goto_91

    :catch_53
    move-exception p1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_5c

    :catchall_58
    move-exception p1

    goto :goto_91

    :catch_5a
    move-exception p1

    move-object v2, v1

    :goto_5c
    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_58

    if-eqz v1, :cond_8f

    :try_start_74
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_8f

    :catch_78
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    :goto_8f
    move-object v1, v2

    :goto_90
    return-object v1

    :goto_91
    if-eqz v1, :cond_ae

    :try_start_93
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_ae

    :catch_97
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    :goto_ae
    throw p1
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "e = "

    const/4 v1, 0x0

    if-eqz p1, :cond_ad

    if-nez p2, :cond_9

    goto/16 :goto_ad

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_63
    .catchall {:try_start_b .. :try_end_15} :catchall_61

    move-object v5, v1

    :cond_16
    :try_start_16
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    move v2, v3

    :cond_23
    sget-boolean p2, La/s;->b:Z

    if-eqz p2, :cond_43

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFile:: path = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_43} :catch_5f
    .catchall {:try_start_16 .. :try_end_43} :catchall_8d

    :cond_43
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_89

    :catch_47
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :catch_5f
    move-exception p1

    goto :goto_66

    :catchall_61
    move-exception p1

    goto :goto_8f

    :catch_63
    move-exception p1

    move-object v4, v1

    move-object v5, v4

    :goto_66
    :try_start_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_8d

    if-eqz v4, :cond_89

    :try_start_7e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_89

    :catch_82
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4d

    :cond_89
    :goto_89
    if-ne v2, v3, :cond_8c

    return-object v5

    :cond_8c
    return-object v1

    :catchall_8d
    move-exception p1

    move-object v1, v4

    :goto_8f
    if-eqz v1, :cond_ac

    :try_start_91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_ac

    :catch_95
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    throw p1

    :cond_ad
    :goto_ad
    return-object v1
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8

    const-string v0, "e = "

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_63
    .catchall {:try_start_b .. :try_end_15} :catchall_61

    :goto_15
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1f
    sget-boolean v4, La/s;->b:Z

    if-eqz v4, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3f} :catch_5e
    .catchall {:try_start_15 .. :try_end_3f} :catchall_5b

    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_87

    :catch_43
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :catchall_5b
    move-exception p1

    move-object v1, v3

    goto :goto_88

    :catch_5e
    move-exception p1

    move-object v1, v3

    goto :goto_64

    :catchall_61
    move-exception p1

    goto :goto_88

    :catch_63
    move-exception p1

    :goto_64
    :try_start_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_61

    if-eqz v1, :cond_87

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_87

    :catch_80
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_49

    :cond_87
    :goto_87
    return-object v2

    :goto_88
    if-eqz v1, :cond_a5

    :try_start_8a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_a5

    :catch_8e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    throw p1
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "HAL Read"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    :try_start_a
    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    if-nez v1, :cond_1a

    const-string v1, "HAL getService"

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->getService(Z)Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    move-result-object v1

    sput-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    :cond_1a
    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->initialize()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL CMD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    new-instance v2, La/q;

    invoke-direct {v2, p0, v0}, La/q;-><init>(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->readHqmFile(Ljava/lang/String;Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$readHqmFileCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3f} :catch_5c

    :cond_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL Read CMD result : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catch_5c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL RemoteException :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8

    const-string v0, "e = "

    const-string v1, "HqmInfo"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_4c
    .catchall {:try_start_8 .. :try_end_d} :catchall_47

    :try_start_d
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_44
    .catchall {:try_start_d .. :try_end_12} :catchall_3f

    :try_start_12
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_3d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_8f

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_3b

    :catch_24
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    move-object v2, v4

    goto :goto_8e

    :catch_3d
    move-exception v4

    goto :goto_4f

    :catchall_3f
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_90

    :catch_44
    move-exception v4

    move-object p0, v2

    goto :goto_4f

    :catchall_47
    move-exception p0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto :goto_90

    :catch_4c
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    :goto_4f
    :try_start_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " readObject"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_8f

    if-eqz v3, :cond_72

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_72

    :catch_70
    move-exception p0

    goto :goto_78

    :cond_72
    :goto_72
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_77} :catch_70

    goto :goto_8e

    :goto_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    return-object v2

    :catchall_8f
    move-exception v2

    :goto_90
    if-eqz v3, :cond_98

    :try_start_92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_98

    :catch_96
    move-exception p0

    goto :goto_9e

    :cond_98
    :goto_98
    if-eqz p0, :cond_b4

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_96

    goto :goto_b4

    :goto_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    :goto_b4
    throw v2
.end method

.method public static q()V
    .registers 2

    const-string v0, "HqmInfo"

    const-string v1, "terminate HAL Service"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "e = "

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_5a
    .catchall {:try_start_7 .. :try_end_11} :catchall_58

    :try_start_11
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-boolean v2, La/s;->b:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile:: path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", text = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_34} :catch_55
    .catchall {:try_start_11 .. :try_end_34} :catchall_52

    :cond_34
    const/4 p1, 0x1

    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    move v1, p1

    goto :goto_7e

    :catch_3a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :catchall_52
    move-exception p1

    move-object v2, v3

    goto :goto_7f

    :catch_55
    move-exception p1

    move-object v2, v3

    goto :goto_5b

    :catchall_58
    move-exception p1

    goto :goto_7f

    :catch_5a
    move-exception p1

    :goto_5b
    :try_start_5b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_58

    if-eqz v2, :cond_7e

    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7e

    :catch_77
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_40

    :cond_7e
    :goto_7e
    return v1

    :goto_7f
    if-eqz v2, :cond_9c

    :try_start_81
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_9c

    :catch_85
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    throw p1
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "HAL Write"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    const-string v1, "HAL getService"

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->getService(Z)Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    move-result-object v1

    sput-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    :cond_16
    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    if-eqz v1, :cond_37

    invoke-interface {v1}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->initialize()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL CMD : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/s;->d:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;

    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm;->writeHqmFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_36} :catch_4c

    move v0, v2

    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HAL Write CMD result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_48
    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_4c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL RemoteException :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_48
.end method

.method public static t(Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 7

    const-string v0, "e = "

    const-string v1, "HqmInfo"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_46
    .catchall {:try_start_9 .. :try_end_e} :catchall_43

    :try_start_e
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3f
    .catchall {:try_start_e .. :try_end_13} :catchall_3b

    :try_start_13
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_39
    .catchall {:try_start_13 .. :try_end_16} :catchall_37

    const/4 p1, 0x1

    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1f

    move v2, p1

    goto :goto_72

    :catch_1f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_37
    move-exception p1

    goto :goto_3d

    :catch_39
    move-exception p1

    goto :goto_41

    :catchall_3b
    move-exception p1

    move-object p0, v3

    :goto_3d
    move-object v3, v4

    goto :goto_74

    :catch_3f
    move-exception p1

    move-object p0, v3

    :goto_41
    move-object v3, v4

    goto :goto_48

    :catchall_43
    move-exception p1

    move-object p0, v3

    goto :goto_74

    :catch_46
    move-exception p1

    move-object p0, v3

    :goto_48
    :try_start_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_73

    if-eqz v3, :cond_66

    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_66

    :catch_64
    move-exception p0

    goto :goto_6c

    :cond_66
    :goto_66
    if-eqz p0, :cond_72

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6b} :catch_64

    goto :goto_72

    :goto_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_25

    :cond_72
    :goto_72
    return v2

    :catchall_73
    move-exception p1

    :goto_74
    if-eqz v3, :cond_7c

    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7c

    :catch_7a
    move-exception p0

    goto :goto_82

    :cond_7c
    :goto_7c
    if-eqz p0, :cond_98

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_7a

    goto :goto_98

    :goto_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    throw p1
.end method
