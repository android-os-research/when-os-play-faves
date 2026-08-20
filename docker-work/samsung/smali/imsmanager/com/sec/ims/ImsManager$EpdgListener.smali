.class public abstract Lcom/sec/ims/ImsManager$EpdgListener;
.super Lcom/sec/ims/IEpdgListener$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EpdgListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2484
    invoke-direct {p0}, Lcom/sec/ims/IEpdgListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 2487
    return-void
.end method

.method public onEpdgDeregister(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 2496
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 2511
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 2490
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 2499
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 2502
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 2493
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 2508
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 2505
    return-void
.end method
