.class public Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"


# static fields
.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field public static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 37
    iput v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mOffset:I

    .line 39
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 40
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TACommandRequest"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 75
    :goto_47
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v5, v4

    if-ge v2, v5, :cond_6d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 76
    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "0x%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v4, v4

    if-eq v2, v4, :cond_6a

    const-string v4, ", "

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_6d
    const-string/jumbo p0, "}"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    .line 86
    :try_start_7d
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_a4
    .catchall {:try_start_7d .. :try_end_84} :catchall_9f

    .line 87
    :try_start_84
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_9c
    .catchall {:try_start_84 .. :try_end_89} :catchall_99

    .line 88
    :try_start_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_97
    .catchall {:try_start_89 .. :try_end_90} :catchall_c3

    .line 94
    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_b1

    goto :goto_c2

    :catch_97
    move-exception p0

    goto :goto_a8

    :catchall_99
    move-exception v0

    move-object v1, p0

    goto :goto_a2

    :catch_9c
    move-exception v0

    move-object v1, p0

    goto :goto_a7

    :catchall_9f
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_a2
    move-object p0, v0

    goto :goto_c4

    :catch_a4
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_a7
    move-object p0, v0

    .line 90
    :goto_a8
    :try_start_a8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_c3

    if-eqz v1, :cond_b5

    .line 94
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_b5

    :catch_b1
    move-exception p0

    goto :goto_bb

    :catch_b3
    move-exception p0

    goto :goto_bf

    :cond_b5
    :goto_b5
    if-eqz v2, :cond_c2

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ba} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ba} :catch_b1

    goto :goto_c2

    .line 102
    :goto_bb
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c2

    .line 100
    :goto_bf
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c2
    :goto_c2
    return-void

    :catchall_c3
    move-exception p0

    :goto_c4
    if-eqz v1, :cond_ce

    .line 94
    :try_start_c6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_ce

    :catch_ca
    move-exception v0

    goto :goto_d4

    :catch_cc
    move-exception v0

    goto :goto_d8

    :cond_ce
    :goto_ce
    if-eqz v2, :cond_db

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d3} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_ca

    goto :goto_db

    .line 102
    :goto_d4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_db

    .line 100
    :goto_d8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :cond_db
    :goto_db
    throw p0
.end method

.method public init(I[BI[B)V
    .registers 5

    .line 56
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    .line 57
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 58
    iput p3, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 59
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    const/4 p1, 0x0

    if-eqz p4, :cond_f

    .line 61
    array-length p2, p4

    iput p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    goto :goto_11

    .line 63
    :cond_f
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 65
    :goto_11
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mOffset:I

    return-void
.end method
