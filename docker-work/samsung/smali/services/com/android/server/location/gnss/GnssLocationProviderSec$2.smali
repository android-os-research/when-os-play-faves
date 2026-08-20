.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$2;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "GnssLocationProviderSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProviderSec;->initGnssLocationProviderSec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 440
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo updated. cellInfo size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mgetTypeFromNetworkType(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I

    move-result v0

    if-nez v0, :cond_26

    return-void

    .line 443
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 444
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_2a

    :cond_3d
    const-string/jumbo p1, "registered cell found"

    .line 445
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 447
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_58

    goto :goto_5e

    .line 450
    :cond_58
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$msetReferenceLocation(Lcom/android/server/location/gnss/GnssLocationProviderSec;ILandroid/telephony/CellInfo;)V

    nop

    :cond_5e
    :goto_5e
    return-void
.end method
