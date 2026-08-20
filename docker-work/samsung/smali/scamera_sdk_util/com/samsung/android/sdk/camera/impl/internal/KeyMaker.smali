.class public Lcom/samsung/android/sdk/camera/impl/internal/KeyMaker;
.super Ljava/lang/Object;
.source "KeyMaker.java"


# static fields
.field private static final KEY_CAPTURE_REQUEST:I = 0x1

.field private static final KEY_CAPTURE_RESULT:I = 0x2

.field private static final KEY_CHARACTERISTIC:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const-class v0, Lcom/samsung/android/sdk/camera/impl/internal/KeyMaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/camera/impl/internal/KeyMaker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createKey(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "version_code"    # I
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/samsung/android/sdk/camera/impl/internal/KeyMaker;->TAG:Ljava/lang/String;

    const-string v1, "\'createKey\' will be removed any time soon. Please do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz p1, :cond_43

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_43

    .line 24
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 25
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 26
    .local v1, "typeParameter":Ljava/lang/reflect/Type;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28
    .local v2, "type":I
    packed-switch v2, :pswitch_data_4c

    .line 40
    const/4 v3, 0x0

    return-object v3

    .line 36
    :pswitch_25
    new-instance v3, Landroid/hardware/camera2/CaptureResult$Key;

    .line 37
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    .line 36
    return-object v3

    .line 33
    :pswitch_2f
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    .line 33
    return-object v3

    .line 30
    :pswitch_39
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 31
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    .line 30
    return-object v3

    .line 22
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "typeParameter":Ljava/lang/reflect/Type;
    .end local v2    # "type":I
    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal arguments to createKey"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method public static varargs isKeyExist(I[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "version_code"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/android/sdk/camera/impl/internal/KeyMaker;->TAG:Ljava/lang/String;

    const-string v1, "\'isKeyExist\' will be removed any time soon. Please do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz p1, :cond_40

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_40

    .line 51
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 54
    .local v2, "key":Ljava/lang/Object;
    :try_start_10
    instance-of v3, v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_1f

    .line 55
    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    .line 56
    return v1

    .line 57
    :cond_1f
    instance-of v3, v2, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v3, :cond_2e

    .line 58
    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    .line 59
    return v1

    .line 60
    :cond_2e
    instance-of v3, v2, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v3, :cond_3e

    .line 61
    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3c} :catch_3d

    .line 62
    return v1

    .line 64
    :catch_3d
    move-exception v1

    :cond_3e
    nop

    .line 66
    return v0

    .line 50
    .end local v2    # "key":Ljava/lang/Object;
    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal arguments to isKeyExist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
