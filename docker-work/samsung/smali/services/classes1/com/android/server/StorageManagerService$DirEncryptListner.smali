.class public Lcom/android/server/StorageManagerService$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirEncryptListner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 5698
    iput-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 7

    .line 5704
    iget-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mfindVolumeByIdOrThrow(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 5705
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p2

    if-nez p2, :cond_40

    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p2, "done"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 5707
    :try_start_1c
    iget-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V

    .line 5708
    iget-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p2

    iget-object p3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget p4, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget p5, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v0, Lcom/android/server/StorageManagerService$DirEncryptListner$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/StorageManagerService$DirEncryptListner$1;-><init>(Lcom/android/server/StorageManagerService$DirEncryptListner;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {p2, p3, p4, p5, v0}, Landroid/os/IVold;->sdeMoveMountHidden(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 5737
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-void
.end method
