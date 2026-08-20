.class public Lcom/samsung/android/wifi/SemWifiApMacInfo;
.super Ljava/lang/Object;
.source "SemWifiApMacInfo.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x40

.field private static final blacklist WIFI_MAC_INFO:Ljava/lang/String; = "/data/misc/wifi_hostapd/wifimac.info"

.field public static final blacklist WL_FAIL:I = 0x2

.field public static final blacklist WL_SUCCESS:I = 0x1

.field private static volatile blacklist uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;


# instance fields
.field private blacklist TAG:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "SemWifiApMacInfo"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->TAG:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->createOrChangePermission()V

    .line 56
    return-void
.end method

.method private blacklist createOrChangePermission()V
    .registers 5

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 69
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 72
    goto :goto_15

    .line 70
    :catch_11
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_15
    :try_start_15
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/wifimac.info"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_33

    .line 77
    .local v2, "p":Ljava/lang/Process;
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 78
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_33

    .line 81
    goto :goto_32

    .line 79
    :catch_2e
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2f
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 84
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_32
    goto :goto_37

    .line 82
    :catch_33
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_37
    :goto_37
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .registers 1

    .line 59
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 62
    :cond_b
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    return-object v0
.end method

.method private blacklist isMacAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .line 147
    const-string v0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 148
    .local v0, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 149
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist readWifiMacInfo()Ljava/lang/String;
    .registers 7

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "buf":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 93
    .local v1, "mac":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 95
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x40

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v4

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_29
    .catchall {:try_start_2 .. :try_end_1c} :catchall_27

    move-object v1, v4

    .line 100
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    nop

    .line 102
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 105
    :goto_21
    goto :goto_33

    .line 103
    :catch_22
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 100
    :catchall_27
    move-exception v2

    goto :goto_56

    .line 97
    :catch_29
    move-exception v2

    .line 98
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_33

    .line 102
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_22

    goto :goto_21

    .line 108
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JDM MAC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_49

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4a

    :cond_49
    const/4 v4, 0x0

    :goto_4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v1

    .line 100
    :goto_56
    if-eqz v0, :cond_60

    .line 102
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 105
    goto :goto_60

    .line 103
    :catch_5c
    move-exception v3

    .line 104
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    :cond_60
    :goto_60
    throw v2
.end method

.method public blacklist writeWifiMacInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "fw":Ljava/io/OutputStreamWriter;
    if-nez p1, :cond_4

    .line 117
    return-void

    .line 119
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_6b

    .line 123
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1a

    .line 124
    return-void

    .line 125
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_2f

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 126
    return-void

    .line 128
    :cond_2f
    monitor-enter p0

    .line 130
    :try_start_30
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 131
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_42} :catch_4e
    .catchall {:try_start_30 .. :try_end_42} :catchall_4c

    .line 135
    nop

    .line 137
    :try_start_43
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_68

    .line 140
    :goto_46
    goto :goto_5a

    .line 138
    :catch_47
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_68

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_46

    .line 135
    :catchall_4c
    move-exception v1

    goto :goto_5c

    .line 132
    :catch_4e
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_5a

    .line 137
    :try_start_54
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_68

    goto :goto_46

    .line 138
    :catch_58
    move-exception v1

    goto :goto_48

    .line 143
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_68

    .line 144
    return-void

    .line 135
    :goto_5c
    if-eqz v0, :cond_66

    .line 137
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_68

    .line 140
    goto :goto_66

    .line 138
    :catch_62
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    :try_start_63
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v2    # "e":Ljava/io/IOException;
    :cond_66
    :goto_66
    nop

    .end local v0    # "fw":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .end local p1    # "str":Ljava/lang/String;
    throw v1

    .line 143
    .restart local v0    # "fw":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .restart local p1    # "str":Ljava/lang/String;
    :catchall_68
    move-exception v1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    throw v1

    .line 120
    :cond_6b
    :goto_6b
    return-void
.end method
