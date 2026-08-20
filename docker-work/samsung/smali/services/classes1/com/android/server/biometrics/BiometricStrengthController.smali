.class public Lcom/android/server/biometrics/BiometricStrengthController;
.super Ljava/lang/Object;
.source "BiometricStrengthController.java"


# static fields
.field public static final KEY_BIOMETRIC_STRENGTHS:Ljava/lang/String; = "biometric_strengths"

.field public static final TAG:Ljava/lang/String; = "BiometricStrengthController"


# instance fields
.field public mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mService:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public static synthetic $r8$lambda$QDKi0x5NjAIvl8pnTmcxjUPmotU(Lcom/android/server/biometrics/BiometricStrengthController;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricStrengthController;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    return-void
.end method

.method public static getIdToStrengthMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "BiometricStrengthController"

    if-eqz p0, :cond_56

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_56

    .line 114
    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_11
    const-string v3, ","

    .line 116
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_3f

    aget-object v7, v3, v6

    const-string v8, ":"

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 118
    aget-object v8, v7, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    .line 119
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_41

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_3f
    move-object v0, v2

    goto :goto_55

    .line 123
    :catch_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-object v0

    :cond_56
    :goto_56
    const-string p0, "Flags are null or empty"

    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 52
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string v0, "biometric_strengths"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 53
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final revertStrengths()V
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStrengths: revert sensorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to oemStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricStrengthController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricSensor;->updateStrength(I)V

    goto :goto_8

    :cond_3d
    return-void
.end method

.method public startListening()V
    .registers 3

    .line 63
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v1, "biometrics"

    .line 62
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public updateStrengths()V
    .registers 4

    const-string v0, "biometrics"

    const-string v1, "biometric_strengths"

    const-string/jumbo v2, "null"

    .line 71
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1c

    .line 76
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths(Ljava/lang/String;)V

    goto :goto_1f

    .line 74
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricStrengthController;->revertStrengths()V

    :goto_1f
    return-void
.end method

.method public final updateStrengths(Ljava/lang/String;)V
    .registers 7

    .line 81
    invoke-static {p1}, Lcom/android/server/biometrics/BiometricStrengthController;->getIdToStrengthMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 86
    :cond_7
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 87
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateStrengths: update sensorId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to newStrength="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BiometricStrengthController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/BiometricSensor;->updateStrength(I)V

    goto :goto_f

    :cond_58
    return-void
.end method
