.class public Lcom/android/server/desktopmode/HardwareManager$DockState;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockState"
.end annotation


# static fields
.field public static final TYPE_DEX_CABLE:I = 0x271a

.field public static final TYPE_DEX_PAD:I = 0x2714

.field public static final TYPE_DEX_PAD_RECOVERY:I = 0x2716

.field public static final TYPE_DEX_RESERVED:I = 0x2715

.field public static final TYPE_DEX_RESERVED_DONGLE:I = 0x271e

.field public static final TYPE_DEX_STATION:I = 0x2711

.field public static final TYPE_HDMI_ADAPTER:I = 0x2719

.field public static final TYPE_HMT_DEVICE:I = 0x271f

.field public static final TYPE_INTERNAL_SCREEN:I = 0x2713

.field public static final TYPE_MULTIPORT_ADAPTER_1:I = 0x2717

.field public static final TYPE_MULTIPORT_ADAPTER_2:I = 0x2718

.field public static final TYPE_MULTIPORT_ADAPTER_3:I = 0x271b

.field public static final TYPE_MULTIPORT_ADAPTER_EE_P5400:I = 0x271d

.field public static final TYPE_TARGUS_ADAPTER:I = 0x271c

.field public static final TYPE_UNDOCKED:I = 0x2710

.field public static final TYPE_UNOFFICIAL_ADAPTER:I = 0x2712


# instance fields
.field public final mDesktopModeSupported:Z

.field public final mIsAdapter:Z

.field public final mRawDockUsbpdIds:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2710

    const/4 v1, 0x0

    const-string v2, ""

    .line 821
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 825
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Z)V
    .registers 5

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 830
    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 831
    iput-object p3, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    .line 832
    iput-boolean p4, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    return-void
.end method

.method public static dockTypeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_46

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "TYPE_HMT_DEVICE"

    return-object p0

    :pswitch_18
    const-string p0, "TYPE_DEX_RESERVED_DONGLE"

    return-object p0

    :pswitch_1b
    const-string p0, "TYPE_MULTIPORT_ADAPTER_EE_P5400"

    return-object p0

    :pswitch_1e
    const-string p0, "TYPE_TARGUS_ADAPTER"

    return-object p0

    :pswitch_21
    const-string p0, "TYPE_MULTIPORT_ADAPTER_3"

    return-object p0

    :pswitch_24
    const-string p0, "TYPE_DEX_CABLE"

    return-object p0

    :pswitch_27
    const-string p0, "TYPE_HDMI_ADAPTER"

    return-object p0

    :pswitch_2a
    const-string p0, "TYPE_MULTIPORT_ADAPTER_2"

    return-object p0

    :pswitch_2d
    const-string p0, "TYPE_MULTIPORT_ADAPTER_1"

    return-object p0

    :pswitch_30
    const-string p0, "TYPE_DEX_PAD_RECOVERY"

    return-object p0

    :pswitch_33
    const-string p0, "TYPE_DEX_RESERVED"

    return-object p0

    :pswitch_36
    const-string p0, "TYPE_DEX_PAD"

    return-object p0

    :pswitch_39
    const-string p0, "TYPE_INTERNAL_SCREEN"

    return-object p0

    :pswitch_3c
    const-string p0, "TYPE_UNOFFICIAL_ADAPTER"

    return-object p0

    :pswitch_3f
    const-string p0, "TYPE_DEX_STATION"

    return-object p0

    :pswitch_42
    const-string p0, "TYPE_UNDOCKED"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x2710
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 836
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    return p0
.end method

.method public isAdapter()Z
    .registers 1

    .line 856
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    return p0
.end method

.method public isDesktopModeSupported()Z
    .registers 1

    .line 840
    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    return p0
.end method

.method public isDexPad()Z
    .registers 2

    .line 852
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_d

    const/16 v0, 0x2716

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isDexStation()Z
    .registers 2

    .line 848
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2711

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isHmtDevice()Z
    .registers 2

    .line 864
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x271f

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRawDockUsbpdIdSupported()Z
    .registers 2

    .line 860
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$smresolveDockType(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isUndocked()Z
    .registers 2

    .line 844
    iget p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v0, 0x2710

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DockState(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesktopModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRawDockUsbpdIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
