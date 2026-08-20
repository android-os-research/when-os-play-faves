.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManagePushToken.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;->readFromParcel(Landroid/os/Parcel;)V

    .line 11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 23
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method
