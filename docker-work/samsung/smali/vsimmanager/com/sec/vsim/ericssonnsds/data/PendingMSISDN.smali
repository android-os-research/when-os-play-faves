.class public Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;
.super Ljava/lang/Object;
.source "PendingMSISDN.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public msisdn:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->msisdn:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->status:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->transactionId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 28
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
