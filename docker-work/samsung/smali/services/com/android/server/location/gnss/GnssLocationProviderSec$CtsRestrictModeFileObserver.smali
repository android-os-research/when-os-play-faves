.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;
.super Landroid/os/FileObserver;
.source "GnssLocationProviderSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProviderSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CtsRestrictModeFileObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public static synthetic $r8$lambda$9lq9WLd66JRxBkqwz0lTDhfx42A(Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->lambda$secCheckCtsRestrictMode$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/File;I)V
    .registers 4

    .line 2418
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 2419
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$secCheckCtsRestrictMode$0(Ljava/lang/String;)V
    .registers 4

    .line 2439
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTS_RESTRICTMODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4

    .line 2424
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTS restrict mode : event ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GnssLocationProvider_ex"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_21

    const-string p1, "CTS restrict mode : file modified!"

    .line 2426
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->secCheckCtsRestrictMode()V

    :cond_21
    return-void
.end method

.method public final readRestrictModeFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const-string p0, "GnssLocationProvider_ex"

    const-string v0, ""

    .line 2446
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_9} :catch_4a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_3f

    .line 2447
    :try_start_9
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_35

    .line 2448
    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2b

    .line 2449
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_21

    .line 2450
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2b

    :try_start_1a
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_35

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_20} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_20} :catch_3f

    goto :goto_55

    :catchall_21
    move-exception v3

    .line 2446
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v2

    :try_start_27
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v2

    :try_start_2c
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p1

    :try_start_31
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw v2
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw p1
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3f} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_3f} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    const-string p1, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IllegalArgumentException"

    .line 2457
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_45
    move-exception p0

    .line 2455
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_4a
    const-string p1, "Could not access file /sys/class/sensors/ssc_core/operation_mode"

    .line 2453
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_50
    const-string p1, "Could not open File /sys/class/sensors/ssc_core/operation_mode"

    .line 2451
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-object v0
.end method

.method public final secCheckCtsRestrictMode()V
    .registers 4

    .line 2432
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->readRestrictModeFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 2436
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTS sensorservice restrict_mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "restrict"

    .line 2437
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2439
    :cond_36
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :cond_40
    return-void
.end method
