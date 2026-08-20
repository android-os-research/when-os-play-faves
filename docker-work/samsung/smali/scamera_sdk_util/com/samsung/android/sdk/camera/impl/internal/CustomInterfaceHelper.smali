.class public Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;
.super Ljava/lang/Object;
.source "CustomInterfaceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/camera/impl/internal/CustomInterfaceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getAvailableSamsungKeyList(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .registers 5
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    .line 35
    .local p1, "metadataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TTKey;>;"
    .local p3, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<[I>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->semGetAvailableSamsungKeyList(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setSamsungParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 26
    if-eqz p0, :cond_5

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setParameters(Ljava/lang/String;)V

    .line 29
    :cond_5
    return-void
.end method
