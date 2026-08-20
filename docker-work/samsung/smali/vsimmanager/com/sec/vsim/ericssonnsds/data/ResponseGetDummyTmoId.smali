.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;
.source "ResponseGetDummyTmoId.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public atn1:Ljava/lang/String;

.field public atn2:Ljava/lang/String;

.field public emailId:Ljava/lang/String;

.field public tmoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;-><init>(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->tmoId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->emailId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->atn1:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->atn2:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->tmoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->emailId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->atn1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetDummyTmoId;->atn2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method
