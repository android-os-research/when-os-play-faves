.class Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus$1;
.super Ljava/lang/Object;
.source "ResponseServiceEntitlementStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    invoke-direct {v0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;
    .registers 3
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus$1;->newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ResponseServiceEntitlementStatus;

    move-result-object p1

    return-object p1
.end method
