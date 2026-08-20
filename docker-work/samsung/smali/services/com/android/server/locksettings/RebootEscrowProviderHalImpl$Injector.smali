.class public Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowProviderHalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;
    .registers 2

    :try_start_0
    const-string p0, "android.hardware.rebootescrow.IRebootEscrow/default"

    .line 44
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, "RebootEscrowProviderHal"

    const-string v0, "Device doesn\'t implement RebootEscrow HAL"

    .line 47
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
