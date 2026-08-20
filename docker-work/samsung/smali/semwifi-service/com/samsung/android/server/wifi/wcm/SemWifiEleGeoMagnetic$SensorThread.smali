.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;
.super Ljava/lang/Thread;
.source "SemWifiEleGeoMagnetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "Ele detector remove"

    const-string v1, "SemWifiEleGeoMagnetic"

    .line 208
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_28

    .line 209
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->-$$Nest$fgethandler(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x64

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_24
    .catchall {:try_start_4 .. :try_end_21} :catchall_22

    goto :goto_4

    :catchall_22
    move-exception p0

    goto :goto_2c

    :catch_24
    move-exception p0

    .line 227
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 229
    :cond_28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    throw p0
.end method
