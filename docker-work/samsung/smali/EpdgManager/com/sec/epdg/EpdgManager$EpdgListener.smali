.class public abstract Lcom/sec/epdg/EpdgManager$EpdgListener;
.super Lcom/sec/epdg/IEpdgHandoverListener$Stub;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EpdgListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 157
    return-void
.end method

.method public onEpdgDeregister(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 166
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 181
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 160
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 169
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 172
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 163
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 178
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 175
    return-void
.end method
