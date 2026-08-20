.class public abstract Lcom/android/location/provider/ActivityRecognitionProviderClient;
.super Ljava/lang/Object;
.source "ActivityRecognitionProviderClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArProviderClient"


# instance fields
.field private mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;-><init>(Lcom/android/location/provider/ActivityRecognitionProviderClient;)V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient;->mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;

    .line 35
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient;->mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;

    return-object v0
.end method

.method public abstract onProviderChanged(ZLcom/android/location/provider/ActivityRecognitionProvider;)V
.end method
