.class public Lcom/android/server/tare/DeviceIdleModifier;
.super Lcom/android/server/tare/Modifier;
.source "DeviceIdleModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/DeviceIdleModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/DeviceIdleModifier;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_27

    const/4 v1, 0x3

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sput-boolean v0, Lcom/android/server/tare/DeviceIdleModifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    new-instance p1, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-direct {p1, p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;-><init>(Lcom/android/server/tare/DeviceIdleModifier;)V

    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "idle="

    .line 68
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "lightIdle="

    .line 70
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    return-void
.end method

.method public getModifiedCostToProduce(J)J
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide v0, 0x3ff3333333333333L    # 1.2

    :goto_d
    long-to-double p0, p1

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0

    .line 60
    :cond_11
    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-wide v0, 0x3ff199999999999aL    # 1.1

    goto :goto_d

    :cond_1f
    return-wide p1
.end method

.method public setup()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->startTracking(Landroid/content/Context;)V

    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->stopTracking(Landroid/content/Context;)V

    return-void
.end method
