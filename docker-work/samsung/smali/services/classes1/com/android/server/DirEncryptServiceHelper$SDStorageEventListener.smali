.class public Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SDStorageEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 8

    .line 276
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const-string v1, "DirEncryptServiceHelper"

    if-nez v0, :cond_100

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_e

    goto/16 :goto_100

    .line 280
    :cond_e
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p0, "Not SD card"

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_1a
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p3

    .line 287
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newState is a same state with oldState:: newState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , oldState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeStateChanged UUID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v0

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolId(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v0

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolFsUuid(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolState(Ljava/lang/String;)V

    const-string/jumbo v0, "vold.decrypt"

    const-string v2, ""

    .line 297
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_ff

    if-eqz p2, :cond_ff

    .line 303
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ff

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeStateChanged:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , oldstate: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " newState: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_ff

    .line 305
    iget-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {p1}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmBootCompleted(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result p1

    if-nez p1, :cond_f1

    const-string/jumbo p1, "unmounted"

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    const-string/jumbo p1, "removed"

    .line 308
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ff

    .line 309
    :cond_f1
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {p0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmHandler(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_ff
    return-void

    .line 277
    :cond_100
    :goto_100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "vol.getType() = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
