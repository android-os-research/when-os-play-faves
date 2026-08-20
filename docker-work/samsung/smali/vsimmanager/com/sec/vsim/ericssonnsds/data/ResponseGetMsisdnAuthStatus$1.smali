.class Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;
.super Ljava/lang/Object;
.source "ResponseGetMsisdnAuthStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;

    invoke-direct {v0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;
    .registers 3
    .param p1, "size"    # I

    .line 55
    new-array v0, p1, [Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;->newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;

    move-result-object p1

    return-object p1
.end method
