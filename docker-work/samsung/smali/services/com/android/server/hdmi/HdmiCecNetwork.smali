.class public Lcom/android/server/hdmi/HdmiCecNetwork;
.super Ljava/lang/Object;
.source "HdmiCecNetwork.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HdmiCecNetwork"


# instance fields
.field public final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

.field public final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field public final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field public mPortInfo:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 107
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 108
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 109
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 115
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isParentPath(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static isParentPath(II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1d

    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_1a

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_19

    add-int/lit8 v1, v1, 0x4

    shr-int/2addr p1, v1

    shr-int/2addr p0, v1

    if-ne p1, p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public static logicalAddressToDeviceType(I)I
    .registers 1

    packed-switch p0, :pswitch_data_10

    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 262
    :cond_12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    .line 263
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_21

    return-void

    :cond_21
    const/4 v1, 0x1

    if-eqz v0, :cond_39

    .line 266
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    if-ne v3, v2, :cond_2b

    goto :goto_39

    .line 269
    :cond_2b
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x2

    .line 270
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 272
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_3c

    .line 267
    :cond_39
    :goto_39
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public addCecSwitch(I)V
    .registers 2

    .line 741
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 201
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 203
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    .line 202
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->checkLogicalAddressConflictAndReallocate(II)V

    if-eqz v0, :cond_21

    .line 205
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 207
    :cond_21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-object v0
.end method

.method public addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3

    .line 136
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final assertRunOnServiceThread()V
    .registers 2

    .line 958
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 959
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 861
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 863
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearLocalDevices()V

    return-void
.end method

.method public clearDeviceList()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 869
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 870
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 871
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_2d

    goto :goto_d

    :cond_2d
    const/4 v2, 0x2

    .line 876
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_d

    .line 879
    :cond_32
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 880
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-void
.end method

.method public clearLocalDevices()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 175
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    const-string v0, "HDMI CEC Network"

    .line 964
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 966
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    const-string/jumbo v1, "mPortInfo:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V

    const/4 v0, 0x0

    .line 967
    :goto_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 970
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v1, "Active Source history:"

    .line 972
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 974
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 976
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    .line 977
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 978
    invoke-virtual {v3, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_66

    .line 980
    :cond_76
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 983
    :cond_7f
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    const-string/jumbo v0, "mDeviceInfos:"

    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiUtils;->dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 984
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 245
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public getCecSwitches()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getDeviceForPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3

    .line 482
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 830
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    if-ne v1, p1, :cond_c

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceInfoList(Z)Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    if-eqz p1, :cond_c

    .line 325
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 327
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 328
    :goto_12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 329
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 330
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_32
    return-object p1
.end method

.method public final getInputDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 354
    :goto_6
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 355
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 356
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_30

    .line 359
    :cond_21
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 360
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    return-object v0
.end method

.method public getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p0
.end method

.method public getLocalDeviceList()Ljava/util/List;
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 158
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalAddress()I
    .registers 1

    .line 855
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3

    .line 890
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object p0
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 940
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    return-object p0
.end method

.method public getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 810
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 811
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSafeCecDevicesLocked()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 793
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_b

    .line 796
    :cond_22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    return-object v0
.end method

.method public getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 846
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 847
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSafeExternalInputsLocked()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    return-object p0
.end method

.method public handleCecMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 541
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 543
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 545
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 546
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->logicalAddressToDeviceType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 553
    :cond_2c
    instance-of v0, p1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    if-eqz v0, :cond_36

    .line 554
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/ReportFeaturesMessage;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportFeatures(Lcom/android/server/hdmi/ReportFeaturesMessage;)V

    .line 557
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_65

    const/16 v1, 0x47

    if-eq v0, v1, :cond_61

    const/16 v1, 0x84

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x87

    if-eq v0, v1, :cond_59

    const/16 v1, 0x90

    if-eq v0, v1, :cond_55

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_51

    goto :goto_68

    .line 574
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_68

    .line 565
    :cond_55
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_68

    .line 571
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_68

    .line 562
    :cond_5d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_68

    .line 568
    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_68

    .line 559
    :cond_65
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_68
    return-void
.end method

.method public final handleCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 632
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 633
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    return-void
.end method

.method public final handleDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 726
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 727
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v1

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown source device info for <Device Vendor ID> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecNetwork"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 733
    :cond_2c
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 734
    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :goto_3b
    return-void
.end method

.method public final handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 598
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    return-void

    .line 602
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 603
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x73

    if-ne v0, v4, :cond_51

    if-nez v3, :cond_25

    move v1, v2

    .line 614
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object p1

    .line 618
    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object p1

    .line 619
    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p1

    .line 616
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 624
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    :cond_51
    return-void
.end method

.method public final handleReportFeatures(Lcom/android/server/hdmi/ReportFeaturesMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 583
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->getCecVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 591
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    return-void
.end method

.method public final handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 639
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 640
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 641
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    .line 643
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    move-result v3

    if-eqz v3, :cond_1d

    return-void

    .line 645
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown source device info for <Report Physical Address> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecNetwork"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 649
    :cond_3a
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 650
    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 652
    invoke-virtual {p1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 653
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :goto_55
    return-void
.end method

.method public final handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 662
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 663
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 665
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    .line 666
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDeviceCecVersion(II)V

    :cond_23
    return-void
.end method

.method public final handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 692
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const-string v1, "HdmiCecNetwork"

    if-nez v0, :cond_24

    .line 697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No source device info for <Set Osd Name>."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 701
    :cond_24
    :try_start_24
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2f} :catch_84

    .line 707
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 708
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 709
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 713
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating device OSD name from "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 713
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 718
    invoke-virtual {p1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 719
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void

    :catch_84
    move-exception p0

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid <Set Osd Name> request:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 4

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 374
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecSwitches()Landroid/util/ArraySet;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 375
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    const p1, 0xffff

    if-eq p0, p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public initPortInfo()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 432
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v0, :cond_c

    .line 433
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_10

    return-void

    .line 439
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 440
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 441
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 442
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_4e

    aget-object v7, v0, v6

    .line 443
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v8

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    .line 446
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v9

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v7

    invoke-static {v9, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v7

    .line 445
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 448
    :cond_4e
    new-instance v4, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    invoke-direct {v4, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    iput-object v4, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 449
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 450
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v1, v3}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 452
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    if-nez v1, :cond_68

    return-void

    .line 455
    :cond_68
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v1

    .line 456
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, v1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 457
    array-length v3, v1

    move v4, v5

    :goto_74
    if-ge v4, v3, :cond_8c

    aget-object v6, v1, v4

    .line 458
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 459
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 465
    :cond_8c
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 466
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->setPortInfo(Ljava/util/List;)V

    return-void

    .line 469
    :cond_9e
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    array-length v3, v0

    :goto_a5
    if-ge v5, v3, :cond_dc

    aget-object v4, v0, v5

    .line 471
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 472
    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v8

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v9

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v10

    .line 473
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    .line 472
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 475
    :cond_d6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    .line 478
    :cond_dc
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->setPortInfo(Ljava/util/List;)V

    return-void
.end method

.method public final invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 4

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 279
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_b
    return-void
.end method

.method public isAllocatedLocalDeviceAddress(I)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 165
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    return v0
.end method

.method public isConnectedToArcPort(I)Z
    .registers 3

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    if-eqz p1, :cond_16

    .line 417
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isInDeviceList(II)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_b

    return p1

    .line 501
    :cond_b
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    if-ne p0, p2, :cond_12

    const/4 p1, 0x1

    :cond_12
    return p1
.end method

.method public final isLocalDeviceAddress(I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 948
    :goto_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 949
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 950
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return v0
.end method

.method public physicalAddressToPortId(I)I
    .registers 6

    .line 920
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const v1, 0xf000

    move v3, v0

    move v2, v1

    :goto_d
    if-eqz v3, :cond_15

    and-int v3, v0, v2

    or-int/2addr v1, v2

    shr-int/lit8 v2, v2, 0x4

    goto :goto_d

    :cond_15
    and-int/2addr p1, v1

    .line 936
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public portIdToPath(I)I
    .registers 3

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    if-nez p0, :cond_20

    .line 900
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find the port info: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecNetwork"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0xffff

    return p0

    .line 903
    :cond_20
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result p0

    return p0
.end method

.method public final removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 386
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeControlState()V

    .line 388
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 389
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    const p2, 0xffff

    if-ne p1, p2, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x2

    .line 393
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    return-void
.end method

.method public removeCecSwitches(I)V
    .registers 5

    .line 749
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 750
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 751
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v1

    if-eq v1, p1, :cond_1f

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 754
    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_23
    return-void
.end method

.method public final removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 224
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_12

    .line 226
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    return-object v0
.end method

.method public removeDevicesConnectedToPort(I)V
    .registers 7

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecSwitches(I)V

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 763
    :goto_9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 764
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 765
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    .line 766
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v3

    if-eq v3, p1, :cond_2c

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    .line 768
    :cond_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 771
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 772
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    goto :goto_3a

    :cond_4e
    return-void
.end method

.method public setPortInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 944
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    return-void
.end method

.method public final updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_11

    return-void

    :cond_11
    if-eqz v0, :cond_25

    .line 296
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    if-ne v1, v2, :cond_1a

    goto :goto_25

    .line 299
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x3

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_29

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateCecSwitchInfo(III)Z
    .registers 5

    const/16 v0, 0xf

    if-ne p1, v0, :cond_15

    const/4 p1, 0x6

    if-ne p2, p1, :cond_15

    .line 779
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p1, 0x5

    if-ne p2, p1, :cond_21

    .line 784
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDeviceCecVersion(II)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_20

    .line 675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not update CEC version of non-existing device:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecNetwork"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 679
    :cond_20
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result p1

    if-ne p1, p2, :cond_27

    return-void

    .line 683
    :cond_27
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 684
    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    .line 685
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method

.method public updateDevicePowerStatus(II)V
    .registers 4

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not update power status of non-existing device:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecNetwork"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_1d
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    if-ne p1, p2, :cond_24

    return-void

    .line 408
    :cond_24
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method

.method public final updateSafeDeviceInfoList()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 308
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getInputDevices()Ljava/util/List;

    move-result-object v1

    .line 310
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 311
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    return-void
.end method
