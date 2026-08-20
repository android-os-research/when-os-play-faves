.class Lcom/mediatek/powerhalmgr/BoosterInfo$1;
.super Ljava/lang/Object;
.source "BoosterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/BoosterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/powerhalmgr/BoosterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/powerhalmgr/BoosterInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 289
    new-instance v0, Lcom/mediatek/powerhalmgr/BoosterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/powerhalmgr/BoosterInfo;-><init>(Landroid/os/Parcel;Lcom/mediatek/powerhalmgr/BoosterInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/mediatek/powerhalmgr/BoosterInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/powerhalmgr/BoosterInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/mediatek/powerhalmgr/BoosterInfo;
    .registers 3
    .param p1, "size"    # I

    .line 294
    new-array v0, p1, [Lcom/mediatek/powerhalmgr/BoosterInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/mediatek/powerhalmgr/BoosterInfo$1;->newArray(I)[Lcom/mediatek/powerhalmgr/BoosterInfo;

    move-result-object p1

    return-object p1
.end method
