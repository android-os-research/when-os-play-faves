.class public Landroid/net/MarkMaskParcel$1;
.super Ljava/lang/Object;
.source "MarkMaskParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MarkMaskParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/MarkMaskParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/MarkMaskParcel;
    .registers 2

    .line 13
    new-instance p0, Landroid/net/MarkMaskParcel;

    invoke-direct {p0}, Landroid/net/MarkMaskParcel;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/MarkMaskParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Landroid/net/MarkMaskParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/MarkMaskParcel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/MarkMaskParcel;
    .registers 2

    .line 19
    new-array p0, p1, [Landroid/net/MarkMaskParcel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Landroid/net/MarkMaskParcel$1;->newArray(I)[Landroid/net/MarkMaskParcel;

    move-result-object p0

    return-object p0
.end method
