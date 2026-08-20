.class public interface abstract Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# direct methods
.method public static fromResources(Landroid/content/res/Resources;)Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
    .registers 5

    const v0, 0x104033a

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 101
    new-instance p0, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;

    invoke-direct {p0}, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;-><init>()V

    return-object p0

    .line 105
    :cond_13
    :try_start_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;
    :try_end_1d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t instantiate class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for config_deviceSpecificDeviceStatePolicyProvider: make sure it has a public zero-argument constructor and implements DeviceStatePolicy.Provider"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;
.end method
