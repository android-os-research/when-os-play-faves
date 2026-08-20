.class public Lcom/sec/ims/IMSRegistrationInfo;
.super Ljava/lang/Object;
.source "IMSRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSRegistrationInfo$ECMP_MODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mECMPMode:I

.field private mEPDGStatus:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:I

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mIMSCkIk:Ljava/lang/String;

.field private mLimitedMode:I

.field private mLocalProfileUri:Ljava/lang/String;

.field private mNetworkType:I

.field private mRegisterRetryOver:I

.field private mURIfromPAU:Ljava/lang/String;

.field private mURIfromPAU2nd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 252
    new-instance v0, Lcom/sec/ims/IMSRegistrationInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSRegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/sec/ims/IMSRegistrationInfo;->initialize()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;II)V
    .registers 13
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "expiryTime"    # I
    .param p3, "featureMask"    # I
    .param p4, "networkType"    # I
    .param p5, "ecmpmode"    # I
    .param p6, "imsckik"    # Ljava/lang/String;
    .param p7, "limitedMode"    # I
    .param p8, "errorCode"    # I
    .param p9, "errorMessage"    # Ljava/lang/String;
    .param p10, "registerRetryOver"    # I
    .param p11, "epdgstatus"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 54
    iput p3, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 55
    iput p4, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 56
    iput p5, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 57
    iput-object p6, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 58
    iput p7, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 59
    iput p8, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 60
    iput-object p9, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 61
    iput p10, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 62
    iput p11, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 63
    return-void
.end method

.method private final initialize()V
    .registers 4

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 85
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 87
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 88
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 90
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 91
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 93
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 94
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSRegistrationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    .line 213
    .local v0, "clone":Lcom/sec/ims/IMSRegistrationInfo;
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 214
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 217
    :cond_11
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 218
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 221
    :cond_1c
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 222
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 225
    :cond_27
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/ims/IMSRegistrationInfo;->clone()Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getECMPMode()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    return v0
.end method

.method public getEPDGStatus()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    return v0
.end method

.method public getFeatureMask()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    return v0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSCkIk()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitedMode()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    return v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    return v0
.end method

.method public getPAssociatedUri()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUri2nd()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterRetryOver()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    return v0
.end method

.method public setECMPMode(I)V
    .registers 2
    .param p1, "ecmpmode"    # I

    .line 130
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 131
    return-void
.end method

.method public setEPDGStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 178
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 179
    return-void
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 154
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 155
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setExpiryTime(I)V
    .registers 2
    .param p1, "expiryTime"    # I

    .line 106
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 107
    return-void
.end method

.method public setFeatureMask(I)V
    .registers 2
    .param p1, "featureMask"    # I

    .line 114
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 115
    return-void
.end method

.method public setFeatureTags(Ljava/lang/String;)V
    .registers 2
    .param p1, "featureTags"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setIMSCkIk(Ljava/lang/String;)V
    .registers 2
    .param p1, "ckik"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setLimitedMode(I)V
    .registers 2
    .param p1, "limitedMode"    # I

    .line 146
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 147
    return-void
.end method

.method public setLocalProfileUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "localProfileUri"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setNetworkType(I)V
    .registers 2
    .param p1, "networkType"    # I

    .line 122
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 123
    return-void
.end method

.method public setPAssociatedUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uriFromPAU"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)V
    .registers 2
    .param p1, "uriFromPAU2nd"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setRegisterRetryOver(I)V
    .registers 2
    .param p1, "flag"    # I

    .line 170
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 171
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 235
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return-void
.end method
