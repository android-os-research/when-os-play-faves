.class public Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 42
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TACommandResponse"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    .line 50
    :goto_29
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v5, v4

    if-ge v2, v5, :cond_58

    if-lez v2, :cond_3f

    .line 51
    aget-byte v5, v4, v2

    if-eqz v5, :cond_3f

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_3f

    const-string v4, "\n"

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02X "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 56
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    .line 61
    :try_start_62
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/mnt/sdcard/respbuf.txt"

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_89
    .catchall {:try_start_62 .. :try_end_69} :catchall_84

    .line 62
    :try_start_69
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_81
    .catchall {:try_start_69 .. :try_end_6e} :catchall_7e

    .line 63
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_7c
    .catchall {:try_start_6e .. :try_end_75} :catchall_a8

    .line 69
    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_98
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_96

    goto :goto_a7

    :catch_7c
    move-exception p0

    goto :goto_8d

    :catchall_7e
    move-exception v0

    move-object v1, p0

    goto :goto_87

    :catch_81
    move-exception v0

    move-object v1, p0

    goto :goto_8c

    :catchall_84
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_87
    move-object p0, v0

    goto :goto_a9

    :catch_89
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_8c
    move-object p0, v0

    .line 65
    :goto_8d
    :try_start_8d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_a8

    if-eqz v1, :cond_9a

    .line 69
    :try_start_92
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_9a

    :catch_96
    move-exception p0

    goto :goto_a0

    :catch_98
    move-exception p0

    goto :goto_a4

    :cond_9a
    :goto_9a
    if-eqz v2, :cond_a7

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9f} :catch_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9f} :catch_96

    goto :goto_a7

    .line 77
    :goto_a0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7

    .line 75
    :goto_a4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a7
    :goto_a7
    return-void

    :catchall_a8
    move-exception p0

    :goto_a9
    if-eqz v1, :cond_b3

    .line 69
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_b3

    :catch_af
    move-exception v0

    goto :goto_b9

    :catch_b1
    move-exception v0

    goto :goto_bd

    :cond_b3
    :goto_b3
    if-eqz v2, :cond_c0

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b8} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b8} :catch_af

    goto :goto_c0

    .line 77
    :goto_b9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0

    .line 75
    :goto_bd
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_c0
    :goto_c0
    throw p0
.end method
