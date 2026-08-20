.class public Lcom/android/server/AuthUnlockATCmd;
.super Ljava/lang/Object;
.source "AuthUnlockATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_FRPUNLCK:Ljava/lang/String; = "FRPUNLCK"

.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final blacklist AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final blacklist AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final blacklist ERR_SERVICE_INTERNAL:I = 0x1

.field private static final blacklist ERR_SERVICE_NOT_SUPPORTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AuthUnlockATCmd"

.field private static final blacklist mLock:Ljava/lang/Object;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPDB:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private blacklist mServiceSupport:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/AuthUnlockATCmd;->mLock:Ljava/lang/Object;

    .line 38
    const-string v0, "frpunlock"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/AuthUnlockATCmd;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private native blacklist nativeSessionAccept([B)[B
.end method

.method private native blacklist nativeSessionComplete([B)I
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 135
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_16

    .line 133
    :catch_12
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_16
    return-object v0
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .registers 2

    .line 51
    const-string v0, "FRPUNLCK"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 56
    const-string v0, ""

    .line 57
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/AuthUnlockATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "params":[Ljava/lang/String;
    const-string v2, "1,0,"

    const-string v3, "1,1,"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "supportedParams":[Ljava/lang/String;
    if-nez v1, :cond_13

    .line 65
    const-string v3, "NG (INVALID_PARAM)"

    return-object v3

    .line 67
    :cond_13
    iget-object v3, p0, Lcom/android/server/AuthUnlockATCmd;->mContext:Landroid/content/Context;

    const-string v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v3, p0, Lcom/android/server/AuthUnlockATCmd;->mPDB:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 68
    if-nez v3, :cond_24

    .line 69
    const-string v3, "NG (FAILED CONNECTION)"

    return-object v3

    .line 72
    :cond_24
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 74
    aget-object v3, v2, v4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_9c

    .line 75
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 77
    .local v3, "data":[B
    sget-object v4, Lcom/android/server/AuthUnlockATCmd;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5d} :catch_134

    .line 79
    :try_start_5d
    invoke-direct {p0, v3}, Lcom/android/server/AuthUnlockATCmd;->nativeSessionAccept([B)[B

    move-result-object v5
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_64
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    .line 84
    .local v5, "response":[B
    goto :goto_67

    .line 85
    .end local v5    # "response":[B
    :catchall_62
    move-exception v5

    goto :goto_9a

    .line 81
    :catch_64
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    move-object v5, v6

    .line 85
    .local v5, "response":[B
    :goto_67
    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_62

    .line 86
    if-eqz v5, :cond_84

    .line 87
    :try_start_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_98

    .line 89
    :cond_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "NG(1)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_97} :catch_134

    move-object v0, v4

    .line 90
    .end local v3    # "data":[B
    .end local v5    # "response":[B
    :goto_98
    goto/16 :goto_133

    .line 85
    .restart local v3    # "data":[B
    :goto_9a
    :try_start_9a
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_62

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "params":[Ljava/lang/String;
    .end local v2    # "supportedParams":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/AuthUnlockATCmd;
    .end local p1    # "cmd":Ljava/lang/String;
    :try_start_9b
    throw v5

    .line 91
    .end local v3    # "data":[B
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "params":[Ljava/lang/String;
    .restart local v2    # "supportedParams":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/AuthUnlockATCmd;
    .restart local p1    # "cmd":Ljava/lang/String;
    :cond_9c
    const/4 v3, 0x1

    aget-object v6, v2, v3

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 92
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 95
    .restart local v3    # "data":[B
    sget-object v4, Lcom/android/server/AuthUnlockATCmd;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_be} :catch_134

    .line 97
    :try_start_be
    invoke-direct {p0, v3}, Lcom/android/server/AuthUnlockATCmd;->nativeSessionComplete([B)I

    move-result v5
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c2} :catch_c5
    .catchall {:try_start_be .. :try_end_c2} :catchall_c3

    .line 102
    .local v5, "ret":I
    goto :goto_c8

    .line 103
    .end local v5    # "ret":I
    :catchall_c3
    move-exception v5

    goto :goto_11d

    .line 99
    :catch_c5
    move-exception v5

    .line 101
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    move v5, v6

    .line 103
    .local v5, "ret":I
    :goto_c8
    :try_start_c8
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c3

    .line 104
    if-nez v5, :cond_fe

    .line 106
    :try_start_cb
    iget-object v4, p0, Lcom/android/server/AuthUnlockATCmd;->mPDB:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "UNLOCK SUCCESS"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e3} :catch_e5

    move-object v0, v4

    goto :goto_fd

    .line 109
    :catch_e5
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    :try_start_e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NG(1)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 111
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_fd
    goto :goto_11c

    .line 115
    :cond_fe
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "NG("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_11b} :catch_134

    move-object v0, v4

    .line 116
    .end local v3    # "data":[B
    .end local v5    # "ret":I
    :goto_11c
    goto :goto_133

    .line 103
    .restart local v3    # "data":[B
    :goto_11d
    :try_start_11d
    monitor-exit v4
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_c3

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "params":[Ljava/lang/String;
    .end local v2    # "supportedParams":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/AuthUnlockATCmd;
    .end local p1    # "cmd":Ljava/lang/String;
    :try_start_11e
    throw v5

    .line 117
    .end local v3    # "data":[B
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "params":[Ljava/lang/String;
    .restart local v2    # "supportedParams":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/AuthUnlockATCmd;
    .restart local p1    # "cmd":Ljava/lang/String;
    :cond_11f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG (INVALID_PARAM)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_132} :catch_134

    move-object v0, v3

    .line 121
    :goto_133
    goto :goto_14b

    .line 118
    :catch_134
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INVALID_PARAM)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_14b
    return-object v0
.end method
