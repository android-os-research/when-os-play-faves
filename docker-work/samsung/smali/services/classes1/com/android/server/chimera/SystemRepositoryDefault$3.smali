.class public Lcom/android/server/chimera/SystemRepositoryDefault$3;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "SystemRepositoryDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemRepositoryDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    const/4 p1, 0x3

    if-ge p3, p1, :cond_1e

    const-string p1, "android.system"

    .line 605
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1e

    .line 609
    :cond_c
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 612
    :cond_17
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p0, p4}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->update(Ljava/lang/String;)Z

    :cond_1e
    :goto_1e
    return-void
.end method
