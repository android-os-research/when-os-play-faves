.class public Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;
.super Ljava/lang/Object;
.source "SemWifiApMacAclList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;
    }
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final ALLOWED_LIST:I = 0x1

.field public static final ALLOWED_ONLY_MODE:I = 0x1

.field public static final ALLOW_ALL_MODE:I = 0x0

.field public static final DELETE:I = 0x2

.field public static final DENY_LIST:I = 0x2

.field public static final DENY_MODE:I = 0x2

.field public static final MODIFY:I = 0x3

.field public static final WL_ALREADY_IN_TABLE:I = 0x4

.field public static final WL_FAIL:I = 0x2

.field public static final WL_NOT_IN_TABLE:I = 0x5

.field public static final WL_NOT_MAC:I = 0x3

.field public static final WL_SUCCESS:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static volatile uniqueInstance:Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private final HOSTAPD_DENY:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAllowList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemWifiApMacAclList"

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    const-string v0, "/data/misc/wifi_hostapd/hostapd.accept"

    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->HOSTAPD_ACCEPT:Ljava/lang/String;

    const-string v0, "/data/misc/wifi_hostapd/hostapd.deny"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->HOSTAPD_DENY:Ljava/lang/String;

    const/16 v0, 0x40

    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->BUFFER_SIZE:I

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->createOrChangePermission()V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowListFile()V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyListFile()V

    return-void
.end method

.method private createOrChangePermission()V
    .registers 4

    .line 111
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "-c"

    const-string v2, "/system/bin/sh"

    if-nez v0, :cond_37

    .line 115
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    :try_start_19
    const-string p0, "/system/bin/chmod 665 /data/misc/wifi_hostapd/hostapd.accept"

    .line 120
    filled-new-array {v2, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_33

    .line 123
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 124
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_33

    goto :goto_37

    :catch_2e
    move-exception p0

    .line 126
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    :cond_37
    :goto_37
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 136
    :try_start_44
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4c
    :try_start_4c
    const-string p0, "/system/bin/chmod 665 /data/misc/wifi_hostapd/hostapd.deny"

    .line 141
    filled-new-array {v2, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_66

    .line 144
    :try_start_5a
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_60} :catch_66

    goto :goto_6a

    :catch_61
    move-exception p0

    .line 147
    :try_start_62
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;
    .registers 1

    .line 86
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->uniqueInstance:Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    if-nez v0, :cond_b

    .line 87
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->uniqueInstance:Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    .line 89
    :cond_b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->uniqueInstance:Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    return-object v0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    .line 563
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 564
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 565
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private readAllowListFile()V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 160
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_42
    .catchall {:try_start_6 .. :try_end_14} :catchall_40

    .line 161
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v2, "#"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_35} :catch_3d
    .catchall {:try_start_14 .. :try_end_35} :catchall_3a

    goto :goto_14

    .line 175
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4c

    goto :goto_50

    :catchall_3a
    move-exception p0

    move-object v0, v1

    goto :goto_51

    :catch_3d
    move-exception p0

    move-object v0, v1

    goto :goto_43

    :catchall_40
    move-exception p0

    goto :goto_51

    :catch_42
    move-exception p0

    .line 171
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    if-eqz v0, :cond_50

    .line 175
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    return-void

    :goto_51
    if-eqz v0, :cond_5b

    .line 175
    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :cond_5b
    :goto_5b
    throw p0
.end method

.method private readDenyListFile()V
    .registers 6

    .line 389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 393
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_42
    .catchall {:try_start_6 .. :try_end_14} :catchall_40

    .line 394
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v2, "#"

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 400
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_35} :catch_3d
    .catchall {:try_start_14 .. :try_end_35} :catchall_3a

    goto :goto_14

    .line 408
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4c

    goto :goto_50

    :catchall_3a
    move-exception p0

    move-object v0, v1

    goto :goto_51

    :catch_3d
    move-exception p0

    move-object v0, v1

    goto :goto_43

    :catchall_40
    move-exception p0

    goto :goto_51

    :catch_42
    move-exception p0

    .line 404
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    if-eqz v0, :cond_50

    .line 408
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    return-void

    :goto_51
    if-eqz v0, :cond_5b

    .line 408
    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 413
    :cond_5b
    :goto_5b
    throw p0
.end method

.method private writeAllowedListFile()V
    .registers 6

    const-string v0, "\n"

    const/4 v1, 0x0

    .line 278
    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_48
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    .line 279
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    const-string v4, "#"

    .line 282
    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 284
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 285
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3b} :catch_43
    .catchall {:try_start_a .. :try_end_3b} :catchall_40

    goto :goto_10

    .line 294
    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_52

    goto :goto_56

    :catchall_40
    move-exception p0

    move-object v1, v2

    goto :goto_6a

    :catch_43
    move-exception v0

    move-object v1, v2

    goto :goto_49

    :catchall_46
    move-exception p0

    goto :goto_6a

    :catch_48
    move-exception v0

    .line 290
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    if-eqz v1, :cond_56

    .line 294
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    :cond_56
    :goto_56
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_69

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readAllowListFileToSendHostapd()V

    :cond_69
    return-void

    :goto_6a
    if-eqz v1, :cond_74

    .line 294
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :cond_74
    :goto_74
    throw p0
.end method

.method private writeDenyListFile()V
    .registers 6

    const-string v0, "\n"

    const/4 v1, 0x0

    .line 452
    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_48
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    .line 453
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 454
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 455
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    const-string v4, "#"

    .line 456
    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 458
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 459
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3b} :catch_43
    .catchall {:try_start_a .. :try_end_3b} :catchall_40

    goto :goto_10

    .line 468
    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_52

    goto :goto_56

    :catchall_40
    move-exception p0

    move-object v1, v2

    goto :goto_6a

    :catch_43
    move-exception v0

    move-object v1, v2

    goto :goto_49

    :catchall_46
    move-exception p0

    goto :goto_6a

    :catch_48
    move-exception v0

    .line 464
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    if-eqz v1, :cond_56

    .line 468
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 474
    :cond_56
    :goto_56
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_69

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->readDenyListFileToSendHostapd()V

    :cond_69
    return-void

    :goto_6a
    if-eqz v1, :cond_74

    .line 468
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    :cond_74
    :goto_74
    throw p0
.end method


# virtual methods
.method public addStaToAllowListInFramework(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 307
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x4

    return p0

    .line 315
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWhiteList::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeAllowedListFile()V

    const/4 p0, 0x1

    return p0
.end method

.method public addStaToDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 481
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x3

    return p0

    .line 484
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 485
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x4

    return p0

    .line 489
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStaToDenyListInFramework::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeDenyListFile()V

    const/4 p0, 0x1

    return p0
.end method

.method public getAllowedListIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 380
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedListSize()I
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getDenyListIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 553
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getDenyListSize()I
    .registers 1

    .line 558
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getDeviceNameInAllowedList(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 353
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 354
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 355
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 356
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p0, ""

    return-object p0
.end method

.method public getDeviceNameInDenyList(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 526
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 527
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 528
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 529
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 530
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p0, ""

    return-object p0
.end method

.method public getWifiApMacAclMode()I
    .registers 3

    .line 93
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_mac_acl_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isAllowedListContainsMAC(Ljava/lang/String;)Z
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContains::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 367
    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 368
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 369
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public isDenyListContainsMAC(Ljava/lang/String;)Z
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDenyListContainsMAC::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 540
    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 541
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 542
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiApMacAclEnabled()Z
    .registers 3

    .line 102
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_mac_acl_switch"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public modifyAllowedListInFramework(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 342
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->setName(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeAllowedListFile()V

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x2

    return p0
.end method

.method public modifyDenyListInFramework(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 513
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 515
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 516
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->setName(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeDenyListFile()V

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x2

    return p0
.end method

.method public readAllowList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 188
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_3a
    .catchall {:try_start_6 .. :try_end_14} :catchall_38

    .line 189
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v2, "#"

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_36
    .catchall {:try_start_14 .. :try_end_31} :catchall_4c

    goto :goto_14

    .line 204
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_47

    goto :goto_4b

    :catch_36
    move-exception v0

    goto :goto_3e

    :catchall_38
    move-exception p0

    goto :goto_4e

    :catch_3a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 200
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    if-eqz v1, :cond_4b

    .line 204
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object p0

    :catchall_4c
    move-exception p0

    move-object v0, v1

    :goto_4e
    if-eqz v0, :cond_58

    .line 204
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    :cond_58
    :goto_58
    throw p0
.end method

.method public readAllowListFileToSendHostapd()V
    .registers 7

    .line 244
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const-string v1, "RESET_ALLOW_LIST"

    .line 245
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    const-string v2, "readAllowListFileToSendHostapd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 250
    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_56
    .catchall {:try_start_15 .. :try_end_23} :catchall_54

    .line 251
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v3, "#"

    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 256
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_ALLOW_LIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4d} :catch_52
    .catchall {:try_start_23 .. :try_end_4d} :catchall_73

    goto :goto_23

    .line 265
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_63

    goto :goto_67

    :catch_52
    move-exception v1

    goto :goto_5a

    :catchall_54
    move-exception p0

    goto :goto_75

    :catch_56
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 261
    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_73

    if-eqz v2, :cond_67

    .line 265
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string p0, "SET_MACADDR_ACL 1"

    .line 272
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_72
    return-void

    :catchall_73
    move-exception p0

    move-object v1, v2

    :goto_75
    if-eqz v1, :cond_7f

    .line 265
    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :cond_7f
    :goto_7f
    throw p0
.end method

.method public readDenyList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 218
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_3a
    .catchall {:try_start_6 .. :try_end_14} :catchall_38

    .line 219
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v2, "#"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_36
    .catchall {:try_start_14 .. :try_end_31} :catchall_4c

    goto :goto_14

    .line 234
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_47

    goto :goto_4b

    :catch_36
    move-exception v0

    goto :goto_3e

    :catchall_38
    move-exception p0

    goto :goto_4e

    :catch_3a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 230
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    if-eqz v1, :cond_4b

    .line 234
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object p0

    :catchall_4c
    move-exception p0

    move-object v0, v1

    :goto_4e
    if-eqz v0, :cond_58

    .line 234
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    :cond_58
    :goto_58
    throw p0
.end method

.method public readDenyListFileToSendHostapd()V
    .registers 7

    .line 418
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const-string v1, "RESET_DENY_LIST"

    .line 419
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    const-string v2, "readDenyListFileToSendHostapd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 424
    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_56
    .catchall {:try_start_15 .. :try_end_23} :catchall_54

    .line 425
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v3, "#"

    .line 428
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    .line 429
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 430
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_DENY_LIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4d} :catch_52
    .catchall {:try_start_23 .. :try_end_4d} :catchall_73

    goto :goto_23

    .line 439
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_63

    goto :goto_67

    :catch_52
    move-exception v1

    goto :goto_5a

    :catchall_54
    move-exception p0

    goto :goto_75

    :catch_56
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 435
    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_73

    if-eqz v2, :cond_67

    .line 439
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v1

    .line 441
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 445
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string p0, "SET_MACADDR_ACL 0"

    .line 446
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_72
    return-void

    :catchall_73
    move-exception p0

    move-object v1, v2

    :goto_75
    if-eqz v1, :cond_7f

    .line 439
    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    :cond_7f
    :goto_7f
    throw p0
.end method

.method public removeStaInAllowedListInFramework(Ljava/lang/String;)I
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 324
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 326
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWhiteList::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mAllowList:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeAllowedListFile()V

    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x2

    return p0
.end method

.method public removeStaInDenyListInFramework(Ljava/lang/String;)I
    .registers 6

    .line 497
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 498
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;

    .line 500
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList$WifiApSta;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 501
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStaInDenyListInFramework::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mDenyList:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->writeDenyListFile()V

    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x2

    return p0
.end method

.method public setWifiApMacAclEnable(Z)V
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 107
    :goto_5
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_mac_acl_switch"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .registers 3

    .line 98
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_mac_acl_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
