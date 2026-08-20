.class public Landroid/app/timedetector/ITimeDetectorService$Default;
.super Ljava/lang/Object;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/app/timedetector/ITimeDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ITimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 2
    .param p1, "timeSuggestion"    # Landroid/app/time/ExternalTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 2
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/GnssTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .registers 3
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/ManualTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 2
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/NetworkTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 2
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .registers 3
    .param p1, "timeConfiguration"    # Landroid/app/time/TimeConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method
