.class Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 13
    .param p1, "source"    # Landroid/os/Parcel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 136
    .local v7, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 137
    .local v8, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 138
    .local v9, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    .line 139
    .local v4, "cec":Z
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v6, v2

    goto :goto_20

    :cond_1f
    move v6, v1

    .line 140
    .local v6, "arc":Z
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_28

    move v5, v2

    goto :goto_29

    :cond_28
    move v5, v1

    .line 141
    .local v5, "mhl":Z
    :goto_29
    new-instance v10, Landroid/hardware/hdmi/HdmiPortInfo;

    move-object v0, v10

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    return-object v10
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3
    .param p1, "size"    # I

    .line 146
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method
