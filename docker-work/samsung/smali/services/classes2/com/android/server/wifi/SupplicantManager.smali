.class public Lcom/android/server/wifi/SupplicantManager;
.super Ljava/lang/Object;
.source "SupplicantManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SupplicantManager"

.field public static final WPA_SUPPLICANT_DAEMON_NAME:Ljava/lang/String; = "wpa_supplicant"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    .line 45
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    .line 48
    :catch_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Failed to start Supplicant"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stop()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    .line 58
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    const-string v1, "SupplicantManager"

    const-string v2, "Failed to stop Supplicant"

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method
