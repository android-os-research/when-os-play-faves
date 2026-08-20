.class public Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "Response3gppAuthentication.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public akaChallenge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-challenge"
    .end annotation
.end field

.field public akaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;->akaChallenge:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 25
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;->akaChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    return-void
.end method
