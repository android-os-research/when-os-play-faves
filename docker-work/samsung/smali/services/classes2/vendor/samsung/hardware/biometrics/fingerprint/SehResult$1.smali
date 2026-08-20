.class public Lvendor/samsung/hardware/biometrics/fingerprint/SehResult$1;
.super Ljava/lang/Object;
.source "SehResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .registers 2

    .line 14
    new-instance p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult$1;->newArray(I)[Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .registers 2

    .line 20
    new-array p0, p1, [Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    return-object p0
.end method
