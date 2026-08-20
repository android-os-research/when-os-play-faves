.class public Lcom/sec/ims/IMSProfileParams;
.super Ljava/lang/Object;
.source "IMSProfileParams.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSProfileParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private mAvailable:I

.field private transient mCallingUid:I

.field private transient mCapabilities:Landroid/os/Bundle;

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z

.field private mUriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/sec/ims/IMSProfileParams$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSProfileParams$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSProfileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    .line 16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 17
    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_3d

    move v2, v1

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    iput-boolean v2, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_47

    move v0, v1

    :cond_47
    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/IMSUserProfile;)V
    .registers 4
    .param p1, "profile"    # Lcom/sec/ims/IMSUserProfile;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    .line 16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 17
    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    .line 29
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    .line 36
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSendKeepAlive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    .line 37
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAutoRegistration()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 38
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    .line 39
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCapabilities()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    .line 40
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAvailability()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    .line 41
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSProfileParams;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSProfileParams;

    .line 62
    .local v0, "clone":Lcom/sec/ims/IMSProfileParams;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/sec/ims/IMSProfileParams;->clone()Lcom/sec/ims/IMSProfileParams;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoRegistration()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    return v0
.end method

.method public getAvailability()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    return v0
.end method

.method public getCallingUid()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    return v0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDN()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSendKeepAlive()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    return v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 72
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method
