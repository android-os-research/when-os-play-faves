.class public Lvendor/samsung/hardware/health/SehHealthInfo$1;
.super Ljava/lang/Object;
.source "SehHealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/health/SehHealthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/health/SehHealthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .registers 2

    .line 120
    new-instance p0, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {p0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/SehHealthInfo$1;->newArray(I)[Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/health/SehHealthInfo;
    .registers 2

    .line 126
    new-array p0, p1, [Lvendor/samsung/hardware/health/SehHealthInfo;

    return-object p0
.end method
