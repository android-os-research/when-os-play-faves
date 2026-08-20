.class public Lcom/samsung/android/telephony/SemSmsCbMessage;
.super Ljava/lang/Object;
.source "SemSmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/telephony/SemSmsCbMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSmsCbMessage:Landroid/telephony/SmsCbMessage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/samsung/android/telephony/SemSmsCbMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/telephony/SemSmsCbMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telephony/SemSmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/telephony/SmsCbMessage;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SmsCbMessage;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCmasAlertHandling()I
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasAlertHandling()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasCategory()I
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasCategory()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasCertainty()I
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasCertainty()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasMessageId()I
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasMessageId()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasMsgExpires()J
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCmasRecordTypeFirstExists()Z
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result p0

    return p0
.end method

.method public blacklist getCmasRecordTypeSecondExists()Z
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result p0

    return p0
.end method

.method public blacklist getCmasResponseType()I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasResponseType()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasSeverity()I
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasSeverity()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasUrgency()I
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasUrgency()I

    move-result p0

    return p0
.end method

.method public blacklist getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getGeographicalScope()I
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    move-result p0

    return p0
.end method

.method public blacklist getLanguageCode()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLocation()Landroid/telephony/SmsCbLocation;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMessageBody()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMessageFormat()I
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result p0

    return p0
.end method

.method public blacklist getSerialNumber()I
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result p0

    return p0
.end method

.method public blacklist getServiceCategory()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result p0

    return p0
.end method

.method public blacklist isCmasMessage()Z
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencyMessage()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result p0

    return p0
.end method

.method public blacklist isEtwsMessage()Z
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/samsung/android/telephony/SemSmsCbMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
