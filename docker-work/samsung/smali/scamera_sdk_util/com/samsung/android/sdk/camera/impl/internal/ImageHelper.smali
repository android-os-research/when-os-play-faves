.class public Lcom/samsung/android/sdk/camera/impl/internal/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/camera/impl/internal/ImageHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransform(Landroid/media/Image;)I
    .registers 3
    .param p0, "image"    # Landroid/media/Image;

    .line 18
    sget-object v0, Lcom/samsung/android/sdk/camera/impl/internal/ImageHelper;->TAG:Ljava/lang/String;

    const-string v1, "\'getTransform\' will be removed any time soon. Please do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Landroid/media/Image;->getTransform()I

    move-result v0

    return v0
.end method
