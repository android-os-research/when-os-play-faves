.class public final Lcom/android/server/timedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    }
.end annotation


# instance fields
.field public final mAutoDetectionEnabled:Z

.field public final mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmUserId(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 42
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 43
    invoke-static {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->-$$Nest$fgetmAutoDetectionEnabled(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V

    return-void
.end method


# virtual methods
.method public capabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 3

    .line 48
    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->timeCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->timeConfiguration()Landroid/app/time/TimeConfiguration;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 78
    const-class v2, Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    .line 79
    :cond_10
    check-cast p1, Lcom/android/server/timedetector/ConfigurationInternal;

    .line 80
    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    iget v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    iget-boolean v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    if-ne v2, v3, :cond_25

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    iget-boolean p1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    if-ne p0, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final timeCapabilities()Landroid/app/time/TimeCapabilities;
    .registers 5

    .line 59
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    const/16 v1, 0x28

    const/16 v2, 0x14

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    .line 68
    :goto_f
    new-instance v0, Landroid/app/time/TimeCapabilities$Builder;

    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v1}, Landroid/app/time/TimeCapabilities$Builder;->setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public final timeConfiguration()Landroid/app/time/TimeConfiguration;
    .registers 2

    .line 52
    new-instance v0, Landroid/app/time/TimeConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    .line 53
    invoke-virtual {v0, p0}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationInternal{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserConfigAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
