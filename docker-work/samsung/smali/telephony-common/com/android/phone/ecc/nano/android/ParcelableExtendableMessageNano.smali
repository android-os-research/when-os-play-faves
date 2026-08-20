.class public abstract Lcom/android/phone/ecc/nano/android/ParcelableExtendableMessageNano;
.super Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "TM;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/android/phone/ecc/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/android/phone/ecc/nano/MessageNano;Landroid/os/Parcel;)V

    return-void
.end method
