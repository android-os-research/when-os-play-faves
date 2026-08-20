.class public Lcom/samsung/android/wifi/SemOpBrandingLoader;
.super Ljava/lang/Object;
.source "SemOpBrandingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    }
.end annotation


# static fields
.field private static final blacklist GBK:Ljava/lang/String; = "gbk"

.field private static final blacklist KSC5601:Ljava/lang/String; = "ksc5601"

.field private static blacklist sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;


# instance fields
.field private final blacklist FILE_NAME:Ljava/lang/String;

.field private blacklist mCharacterSet:Ljava/lang/String;

.field private final blacklist mIsProductDev:Z

.field private blacklist mLastModified:J

.field private blacklist mMenuStatusForHotspot20:Ljava/lang/String;

.field private blacklist mNotificationStyle:Ljava/lang/String;

.field private blacklist mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mLastModified:J

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.opbranding.info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->FILE_NAME:Ljava/lang/String;

    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendorFromCsc()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 53
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigMenuStatusForHotspot20"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mNotificationStyle:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;
    .registers 2

    const-class v0, Lcom/samsung/android/wifi/SemOpBrandingLoader;

    monitor-enter v0

    .line 119
    :try_start_3
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;

    if-nez v1, :cond_e

    .line 120
    new-instance v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;

    invoke-direct {v1}, Lcom/samsung/android/wifi/SemOpBrandingLoader;-><init>()V

    sput-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;

    .line 122
    :cond_e
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader;->sInstance:Lcom/samsung/android/wifi/SemOpBrandingLoader;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 118
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_8

    .line 69
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 70
    :catch_7
    move-exception v0

    .line 74
    :cond_8
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method

.method private blacklist getVendorFromCsc()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 3

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getVendorFromFile()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 8

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 99
    .local v1, "lastModified":J
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mLastModified:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_1a

    .line 100
    sget-object v3, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v3

    .line 102
    :cond_1a
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mLastModified:J

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "valueFromFile":Ljava/lang/String;
    :try_start_1d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_3a

    .line 106
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_27
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_30

    move-object v3, v5

    .line 107
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3a

    .line 109
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 105
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_30
    move-exception v5

    :try_start_31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v6

    :try_start_36
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "lastModified":J
    .end local v3    # "valueFromFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemOpBrandingLoader;
    :goto_39
    throw v5
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 107
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "lastModified":J
    .restart local v3    # "valueFromFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemOpBrandingLoader;
    :catch_3a
    move-exception v4

    .line 108
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3e
    if-eqz v3, :cond_45

    .line 111
    invoke-direct {p0, v3}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v4

    return-object v4

    .line 114
    .end local v1    # "lastModified":J
    .end local v3    # "valueFromFile":Ljava/lang/String;
    :cond_45
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendorFromCsc()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getMenuStatusForPasspoint()Ljava/lang/String;
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->updateFromFile()V

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNotificationStyle()Ljava/lang/String;
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->updateFromFile()V

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mNotificationStyle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->updateFromFile()V

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method

.method public blacklist getSupportCharacterSet()Ljava/lang/String;
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->updateFromFile()V

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method blacklist updateFromFile()V
    .registers 7

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendorFromFile()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    .line 128
    .local v0, "vendor":Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-eq v0, v1, :cond_30

    .line 129
    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "characterSet":Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, "menuStatus":Ljava/lang/String;
    const/4 v3, 0x0

    .line 133
    .local v3, "notificationStyle":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/wifi/SemOpBrandingLoader$1;->$SwitchMap$com$samsung$android$wifi$SemOpBrandingLoader$SemVendor:[I

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_32

    goto :goto_2a

    .line 147
    :pswitch_19
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    move-result-object v3

    .line 148
    goto :goto_2a

    .line 143
    :pswitch_1e
    const-string v1, "gbk"

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    move-result-object v3

    .line 145
    goto :goto_2a

    .line 139
    :pswitch_25
    const-string v1, "ksc5601"

    .line 140
    const-string v2, "DEFAULT_ON,MENU_ON"

    .line 141
    nop

    .line 152
    :goto_2a
    iput-object v3, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mNotificationStyle:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    .line 154
    iput-object v2, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    .line 156
    .end local v1    # "characterSet":Ljava/lang/String;
    .end local v2    # "menuStatus":Ljava/lang/String;
    .end local v3    # "notificationStyle":Ljava/lang/String;
    :cond_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method public blacklist writeVendorToFile(Ljava/lang/String;)Z
    .registers 6
    .param p1, "vendorName"    # Ljava/lang/String;

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mIsProductDev:Z

    if-eqz v0, :cond_35

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getVendor(Ljava/lang/String;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->mVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 81
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->Unknown:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-eq v0, v1, :cond_35

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemOpBrandingLoader;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "file":Ljava/io/File;
    :try_start_15
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_31

    .line 84
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1f
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    .line 85
    const/4 v2, 0x1

    .line 86
    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    .line 85
    return v2

    .line 83
    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemOpBrandingLoader;
    .end local p1    # "vendorName":Ljava/lang/String;
    :goto_30
    throw v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    .line 86
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemOpBrandingLoader;
    .restart local p1    # "vendorName":Ljava/lang/String;
    :catch_31
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_35
    const/4 v0, 0x0

    return v0
.end method
