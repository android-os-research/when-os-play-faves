.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field public mAidlEnabled:Z

.field public mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAidlEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAidlEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->checkManagePermissionAndGetSingleProvider()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->checkPermissionForSemBioFaceManager()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1242
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    .line 1243
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 1244
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1245
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    return-void
.end method

.method public static native acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method public static native releaseSurfaceHandle(Landroid/os/NativeHandle;)V
.end method


# virtual methods
.method public final checkManagePermissionAndGetSingleProvider()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1299
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_23

    const-string p0, "FaceService"

    const-string v0, "Null provider"

    .line 1301
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_23
    return-object p0
.end method

.method public final checkPermissionForSemBioFaceManager()V
    .registers 3

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.permission.USE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public final getProviderForSensor(I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;
    .registers 4

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 103
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSensorProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 145
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public final getSingleProvider()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/face/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FaceService"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_27

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple sensors found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    const/4 v1, 0x0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 131
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 132
    invoke-interface {v1, v0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->containsSensor(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 133
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_52
    const-string p0, "Single sensor, but provider not found"

    .line 137
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public onBootPhase(I)V
    .registers 2

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "FaceService"

    const-string p1, "Null provider for onBootPhase"

    .line 1282
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1286
    :cond_e
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1250
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
