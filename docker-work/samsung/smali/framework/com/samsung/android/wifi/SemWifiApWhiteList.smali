.class public Lcom/samsung/android/wifi/SemWifiApWhiteList;
.super Ljava/lang/Object;
.source "SemWifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    }
.end annotation


# static fields
.field public static final blacklist WL_ALREADY_IN_TABLE:I = 0x4

.field public static final blacklist WL_DENY_SUCCESS:I = 0x6

.field public static final blacklist WL_FAIL:I = 0x2

.field public static final blacklist WL_NOT_IN_TABLE:I = 0x5

.field public static final blacklist WL_NOT_MAC:I = 0x3

.field public static final blacklist WL_SUCCESS:I = 0x1

.field private static volatile blacklist uniqueInstance:Lcom/samsung/android/wifi/SemWifiApWhiteList;


# instance fields
.field private final blacklist BUFFER_SIZE:I

.field private final blacklist HOSTAPD_DENY:Ljava/lang/String;

.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "SemWifiApWhiteList"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->TAG:Ljava/lang/String;

    .line 74
    const-string v0, "/data/misc/wifi_hostapd/hostapd.accept"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->HOSTAPD_DENY:Ljava/lang/String;

    .line 75
    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->BUFFER_SIZE:I

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->createOrChangePermission()V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->readWhiteListFile()V

    .line 95
    return-void
.end method

.method private blacklist createOrChangePermission()V
    .registers 5

    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 108
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 111
    goto :goto_15

    .line 109
    :catch_11
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    :goto_15
    :try_start_15
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/hostapd.accept"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_33

    .line 116
    .local v2, "p":Ljava/lang/Process;
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 117
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_33

    .line 120
    goto :goto_32

    .line 118
    :catch_2e
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2f
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 123
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_32
    goto :goto_37

    .line 121
    :catch_33
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    :cond_37
    :goto_37
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wifi/SemWifiApWhiteList;
    .registers 1

    .line 98
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApWhiteList;

    if-nez v0, :cond_b

    .line 99
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApWhiteList;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApWhiteList;

    .line 101
    :cond_b
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApWhiteList;

    return-object v0
.end method

.method private blacklist isMacAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .line 280
    const-string v0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 281
    .local v0, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 282
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private blacklist readWhiteListFile()V
    .registers 9

    .line 128
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "buf":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 132
    .local v1, "mac":Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 134
    .local v3, "strenable":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "enable":Z
    :try_start_a
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v5

    .line 137
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "bufReadLine":Ljava/lang/String;
    if-eqz v5, :cond_4a

    .line 138
    const-string v5, "#"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 139
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 140
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 141
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 142
    const-string v7, "1"

    if-ne v3, v7, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    move v4, v5

    .line 143
    iget-object v5, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v7, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    invoke-direct {v7, v1, v2, v4}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_49} :catch_56
    .catchall {:try_start_a .. :try_end_49} :catchall_54

    goto :goto_19

    .line 149
    :cond_4a
    nop

    .line 151
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 154
    goto :goto_64

    .line 152
    :catch_4f
    move-exception v5

    .line 153
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_64

    .line 149
    .end local v6    # "bufReadLine":Ljava/lang/String;
    :catchall_54
    move-exception v5

    goto :goto_65

    .line 146
    :catch_56
    move-exception v5

    .line 147
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_57
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    .line 149
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_64

    .line 151
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 154
    goto :goto_64

    .line 152
    :catch_60
    move-exception v5

    .line 153
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v5    # "e":Ljava/io/IOException;
    :cond_64
    :goto_64
    return-void

    .line 149
    :goto_65
    if-eqz v0, :cond_6f

    .line 151
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 154
    goto :goto_6f

    .line 152
    :catch_6b
    move-exception v6

    .line 153
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    throw v5
.end method

.method private blacklist writeWhiteListFile()V
    .registers 6

    .line 160
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 162
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 163
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    .line 166
    .local v3, "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 168
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 169
    :cond_2f
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "1"

    goto :goto_47

    :cond_45
    const-string v4, "0"

    :goto_47
    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4d} :catch_5a
    .catchall {:try_start_3 .. :try_end_4d} :catchall_58

    .line 174
    .end local v3    # "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    goto :goto_11

    .line 178
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    :cond_4e
    nop

    .line 180
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 183
    :goto_52
    goto :goto_64

    .line 181
    :catch_53
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_52

    .line 178
    :catchall_58
    move-exception v0

    goto :goto_65

    .line 175
    :catch_5a
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_64

    .line 180
    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_53

    goto :goto_52

    .line 186
    :cond_64
    :goto_64
    return-void

    .line 178
    :goto_65
    if-eqz v1, :cond_6f

    .line 180
    :try_start_67
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 183
    goto :goto_6f

    .line 181
    :catch_6b
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    throw v0
.end method


# virtual methods
.method public blacklist addWhiteList(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    const/4 v0, 0x3

    return v0

    .line 193
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 196
    const/4 v1, 0x4

    return v1

    .line 198
    :cond_26
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWhiteList::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v2, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    invoke-direct {v2, p1, p2, p3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->writeWhiteListFile()V

    .line 201
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    .line 247
    .local v1, "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 248
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 250
    .end local v1    # "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    :cond_21
    goto :goto_6

    .line 251
    :cond_22
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public blacklist isContains(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContains::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    .line 260
    .local v1, "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 261
    const/4 v2, 0x1

    return v2

    .line 263
    .end local v1    # "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    :cond_36
    goto :goto_1e

    .line 264
    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist modifyWhiteList(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 225
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "oldenable":Z
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    .line 229
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 230
    invoke-virtual {v2, p2}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->setName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getEnable()Z

    move-result v1

    .line 232
    invoke-virtual {v2, p3}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->setEnable(Z)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->writeWhiteListFile()V

    .line 234
    if-eq v1, p3, :cond_2e

    .line 235
    const/4 v3, 0x6

    return v3

    .line 236
    :cond_2e
    const/4 v3, 0x1

    return v3

    .line 238
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    :cond_30
    goto :goto_7

    .line 239
    :cond_31
    const/4 v2, 0x2

    return v2
.end method

.method public blacklist removeWhiteList(Ljava/lang/String;)I
    .registers 8
    .param p1, "mac"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;>;"
    const/4 v1, 0x0

    .line 208
    .local v1, "oldenable":Z
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;

    .line 210
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 211
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWhiteList::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;->getEnable()Z

    move-result v1

    .line 213
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApWhiteList;->writeWhiteListFile()V

    .line 215
    if-eqz v1, :cond_46

    .line 216
    const/4 v3, 0x6

    return v3

    .line 217
    :cond_46
    const/4 v3, 0x1

    return v3

    .line 219
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApWhiteList$WhiteList;
    :cond_48
    goto :goto_7

    .line 220
    :cond_49
    const/4 v2, 0x2

    return v2
.end method
