.class public abstract Lcom/android/server/vr/GearVrManagerServiceStubAdapter;
.super Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.source "GearVrManagerServiceStubAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 5

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    return-object p0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final getDeviceConfig()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDeviceType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDisplayConfig()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPowerLevelState()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUiModeConfig()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVrRecentsMode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVrSystemUiMode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyDeviceEventChanged(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyHmtEventChanged(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .registers 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public final setHomeKeyBlocked(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public final setReadyForVrMode(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemMouseControlType(I)V
    .registers 2

    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public final setVr2dSurface(Landroid/view/Surface;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
