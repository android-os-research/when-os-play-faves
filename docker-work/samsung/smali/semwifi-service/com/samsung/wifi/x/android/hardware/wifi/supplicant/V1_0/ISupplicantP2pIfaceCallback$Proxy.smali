.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 623
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1222
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1224
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1226
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1228
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1229
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1230
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1232
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1233
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 638
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1334
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1336
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1338
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1339
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1340
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1342
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1343
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1346
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1347
    throw p0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1259
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1263
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1264
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1265
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1267
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1269
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1271
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1273
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1272
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1276
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1281
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1284
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1290
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1291
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 643
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1203
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1205
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1207
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1208
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1211
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1214
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1215
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1240
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1242
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1244
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1245
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1248
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1251
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1252
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1354
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1356
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1358
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1359
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1362
    throw p0
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 683
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    const-string v3, "Array element is not of the expected length"

    if-eqz p1, :cond_87

    .line 690
    array-length v4, p1

    if-ne v4, v2, :cond_87

    const-wide/16 v4, 0x0

    .line 694
    invoke-virtual {v1, v4, v5, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 697
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 700
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_81

    .line 705
    array-length v1, p2

    if-ne v1, v2, :cond_81

    .line 709
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 712
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 715
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p3, :cond_7b

    .line 720
    array-length v1, p3

    if-ne v1, p2, :cond_7b

    .line 724
    invoke-virtual {p1, v4, v5, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 727
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 729
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 731
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 732
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 734
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p8, :cond_75

    .line 739
    array-length p2, p8

    if-ne p2, v2, :cond_75

    .line 743
    invoke-virtual {p1, v4, v5, p8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 746
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 749
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 751
    :try_start_62
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 752
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_70

    .line 754
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_70
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 755
    throw p0

    .line 740
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 721
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 706
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 691
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDeviceLost([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 762
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_35

    .line 769
    array-length v3, p1

    if-ne v3, v2, :cond_35

    const-wide/16 v2, 0x0

    .line 773
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 776
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 779
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 781
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 782
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_30

    .line 784
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 785
    throw p0

    .line 770
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFindStopped()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 792
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 796
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 797
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 799
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1d
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 800
    throw p0
.end method

.method public onGoNegotiationCompleted(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 838
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 841
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 843
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 844
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 846
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 847
    throw p0
.end method

.method public onGoNegotiationRequest([BS)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 807
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_37

    .line 814
    array-length v3, p1

    if-ne v3, v2, :cond_37

    const-wide/16 v3, 0x0

    .line 818
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 821
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 823
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 825
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 827
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x1

    invoke-interface {p0, v2, v0, p1, p2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 828
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    .line 830
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 831
    throw p0

    .line 815
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 869
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 872
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 874
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 875
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 877
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 878
    throw p0
.end method

.method public onGroupFormationSuccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 854
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 856
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 858
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 861
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 862
    throw p0
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 936
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 940
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 942
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xb

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 943
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 945
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 946
    throw p0
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 885
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 888
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 889
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 891
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    const-string p3, "Array element is not of the expected length"

    if-eqz p5, :cond_62

    .line 896
    array-length p4, p5

    if-ne p4, p2, :cond_62

    const-wide/16 v1, 0x0

    .line 900
    invoke-virtual {p1, v1, v2, p5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 905
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 907
    new-instance p1, Landroid/os/HwBlob;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p7, :cond_5c

    .line 912
    array-length p4, p7

    if-ne p4, p2, :cond_5c

    .line 916
    invoke-virtual {p1, v1, v2, p7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 919
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 921
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 923
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 925
    :try_start_48
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xa

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_57

    .line 928
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_57
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 929
    throw p0

    .line 913
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 897
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInvitationReceived([B[B[BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 953
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    const-string v3, "Array element is not of the expected length"

    if-eqz p1, :cond_6a

    .line 960
    array-length v4, p1

    if-ne v4, v2, :cond_6a

    const-wide/16 v4, 0x0

    .line 964
    invoke-virtual {v1, v4, v5, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 967
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 970
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_64

    .line 975
    array-length v1, p2

    if-ne v1, v2, :cond_64

    .line 979
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 982
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 985
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p3, :cond_5e

    .line 990
    array-length p2, p3

    if-ne p2, v2, :cond_5e

    .line 994
    invoke-virtual {p1, v4, v5, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 999
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1000
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1002
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1004
    :try_start_4a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xc

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_59

    .line 1007
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_59
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1008
    throw p0

    .line 991
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 976
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 961
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInvitationResult([BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1015
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_39

    .line 1022
    array-length v3, p1

    if-ne v3, v2, :cond_39

    const-wide/16 v2, 0x0

    .line 1026
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1029
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1031
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1033
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1035
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xd

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1036
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 1038
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1039
    throw p0

    .line 1023
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 651
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 654
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 656
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 657
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 659
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 660
    throw p0
.end method

.method public onNetworkRemoved(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 667
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 670
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 672
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 673
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 675
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 676
    throw p0
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1046
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_42

    .line 1053
    array-length v3, p1

    if-ne v3, v2, :cond_42

    const-wide/16 v2, 0x0

    .line 1057
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1060
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1062
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1063
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 1064
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 1065
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1067
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1069
    :try_start_2e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xe

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1070
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3d

    .line 1072
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1073
    throw p0

    .line 1054
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1080
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 1087
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 1091
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1094
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1096
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 1097
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1099
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1101
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xf

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1102
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 1104
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1105
    throw p0

    .line 1088
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStaAuthorized([B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1112
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1114
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    const-string v3, "Array element is not of the expected length"

    if-eqz p1, :cond_4e

    .line 1119
    array-length v4, p1

    if-ne v4, v2, :cond_4e

    const-wide/16 v4, 0x0

    .line 1123
    invoke-virtual {v1, v4, v5, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1126
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1129
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_48

    .line 1134
    array-length v1, p2

    if-ne v1, v2, :cond_48

    .line 1138
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1141
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1144
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1146
    :try_start_34
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x10

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1147
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_43

    .line 1149
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_43
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1150
    throw p0

    .line 1135
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1120
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStaDeauthorized([B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1157
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1159
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    const-string v3, "Array element is not of the expected length"

    if-eqz p1, :cond_4e

    .line 1164
    array-length v4, p1

    if-ne v4, v2, :cond_4e

    const-wide/16 v4, 0x0

    .line 1168
    invoke-virtual {v1, v4, v5, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1171
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1174
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_48

    .line 1179
    array-length v1, p2

    if-ne v1, v2, :cond_48

    .line 1183
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1186
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1189
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1191
    :try_start_34
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x11

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_43

    .line 1194
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_43
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1195
    throw p0

    .line 1180
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1165
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1318
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1320
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1322
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1323
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1326
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1327
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1298
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1302
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1303
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1305
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1306
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 629
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    const-string p0, "[class or subclass of android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
