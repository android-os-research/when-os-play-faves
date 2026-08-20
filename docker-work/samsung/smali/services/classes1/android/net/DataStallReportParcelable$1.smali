.class public Landroid/net/DataStallReportParcelable$1;
.super Ljava/lang/Object;
.source "DataStallReportParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DataStallReportParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/DataStallReportParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DataStallReportParcelable;
    .registers 2

    .line 15
    new-instance p0, Landroid/net/DataStallReportParcelable;

    invoke-direct {p0}, Landroid/net/DataStallReportParcelable;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataStallReportParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/DataStallReportParcelable;
    .registers 2

    .line 21
    new-array p0, p1, [Landroid/net/DataStallReportParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/DataStallReportParcelable$1;->newArray(I)[Landroid/net/DataStallReportParcelable;

    move-result-object p0

    return-object p0
.end method
