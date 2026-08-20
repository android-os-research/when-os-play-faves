.class public abstract Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.super Landroid/os/HwBinder;
.source "IServiceNotification.java"

# interfaces
.implements Landroid/hidl/manager/V1_0/IServiceNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_0/IServiceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 435
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 488
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 489
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 490
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 463
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_20
    .array-data 1
        -0x4t
        -0x22t
        0x1dt
        0x7t
        -0x78t
        0x6t
        0x6at
        0x62t
        -0x2bt
        0x76t
        0x6ft
        0x4dt
        -0x3ft
        -0x63t
        0x4ct
        0x1et
        -0x39t
        0x69t
        0x67t
        -0x2bt
        -0x23t
        -0x4at
        0x36t
        -0xbt
        -0x64t
        -0x34t
        0x66t
        0x60t
        0x34t
        0x60t
        -0x44t
        -0x8t
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hidl.manager@1.0::IServiceNotification"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 498
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_d6

    goto/16 :goto_d5

    .line 644
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->notifySyspropsChanged()V

    goto/16 :goto_d5

    .line 633
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 636
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 637
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_d5

    .line 623
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->ping()V

    .line 626
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_d5

    .line 610
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->setHALInstrumentation()V

    goto/16 :goto_d5

    .line 576
    :sswitch_38
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 579
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 581
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 583
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 584
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 585
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 586
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_5e
    if-ge p4, p2, :cond_7e

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 590
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_76

    .line 592
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_76

    .line 596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5e

    .line 593
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    const-wide/16 v1, 0x0

    .line 600
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 602
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_d5

    .line 565
    :sswitch_8a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 568
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_d5

    .line 553
    :sswitch_9b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 557
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 558
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_d5

    .line 542
    :sswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 545
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_d5

    :sswitch_c1
    const-string p1, "android.hidl.manager@1.0::IServiceNotification"

    .line 531
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 536
    invoke-interface {p0, p1, p3, p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d5
    return-void

    :sswitch_data_d6
    .sparse-switch
        0x1 -> :sswitch_c1
        0xf43484e -> :sswitch_b0
        0xf444247 -> :sswitch_9b
        0xf445343 -> :sswitch_8a
        0xf485348 -> :sswitch_38
        0xf494e54 -> :sswitch_30
        0xf504e47 -> :sswitch_22
        0xf524546 -> :sswitch_10
        0xf535953 -> :sswitch_8
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
