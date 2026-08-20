.class public Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;
.super Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;
.source "ResponseAccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field public expiresIn:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field public scope:Ljava/lang/String;

.field public tmobileid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmobileid"
    .end annotation
.end field

.field public tokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->accessToken:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->tokenType:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->expiresIn:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->refreshToken:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->scope:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->tmobileid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 34
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->expiresIn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAccessToken;->tmobileid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
