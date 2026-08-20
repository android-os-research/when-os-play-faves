.class public Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "VisionServerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->tryRegisterCameraOpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 13

    .line 295
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 297
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 299
    :goto_10
    iget-object v5, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v5}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 300
    iget-object v5, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {v5}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmPackageList(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    .line 301
    iget-object v6, v5, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 302
    iget-object v0, v5, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3e

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 307
    :cond_3e
    :goto_3e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_47

    return-void

    :cond_47
    const-string v0, "VisionServerReceiver"

    const-string v1, "cameraId"

    const-string v2, "facing"

    const-string/jumbo v4, "package_hint"

    const-string/jumbo v5, "package_name"

    const-string v6, "com.sec.android.sdhms"

    if-eqz p3, :cond_89

    const/4 v7, 0x3

    if-eq p3, v7, :cond_5b

    goto :goto_b6

    .line 327
    :cond_5b
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.camera.action.camera_close"

    .line 328
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    invoke-static {}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_b6

    const-string p0, "Send Close Message to SDMHS"

    .line 336
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 313
    :cond_89
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.camera.action.camera_open"

    .line 314
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver$3;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/visionserver/VisionServerReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    invoke-static {}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_b6

    const-string p0, "Send Open Message to SDMHS"

    .line 322
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    :goto_b6
    return-void
.end method
