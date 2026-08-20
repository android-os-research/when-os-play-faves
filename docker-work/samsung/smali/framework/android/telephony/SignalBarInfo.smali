.class public Landroid/telephony/SignalBarInfo;
.super Ljava/lang/Object;
.source "SignalBarInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalBarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCdmaLevel:I

.field private blacklist mEvdoLevel:I

.field private blacklist mGsmLevel:I

.field private blacklist mLteLevel:I

.field private blacklist mNrLevel:I

.field private blacklist mTdscdmaLevel:I

.field private blacklist mWcdmaLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 210
    new-instance v0, Landroid/telephony/SignalBarInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalBarInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalBarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 43
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 44
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 45
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 46
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 47
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 48
    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalBarInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SignalBarInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SignalBarInfo;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/SignalBarInfo;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getCdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 76
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getEvdoLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 77
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getGsmLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 78
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getWcdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 79
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getTdscdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 80
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getLteLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 81
    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getNrLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V
    .registers 3
    .param p1, "signalBar"    # Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 54
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 55
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 56
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 57
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 58
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 59
    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lvendor/samsung/hardware/radio/network/SehSignalBar;)V
    .registers 3
    .param p1, "signalBar"    # Lvendor/samsung/hardware/radio/network/SehSignalBar;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->cdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 65
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->evdoLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 66
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->gsmLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 67
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->wcdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 68
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->tdscdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 69
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->lteLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 70
    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->nrLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 268
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 270
    :cond_4
    instance-of v1, p1, Landroid/telephony/SignalBarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 271
    return v2

    .line 274
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalBarInfo;

    .line 275
    .local v1, "other":Landroid/telephony/SignalBarInfo;
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    iget v4, v1, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    if-ne v3, v4, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    return v0
.end method

.method public blacklist getCdmaLevel()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    return v0
.end method

.method public blacklist getEvdoLevel()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    return v0
.end method

.method public blacklist getGsmLevel()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    return v0
.end method

.method public blacklist getLteLevel()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    return v0
.end method

.method public blacklist getNrLevel()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return v0
.end method

.method public blacklist getTdscdmaLevel()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    return v0
.end method

.method public blacklist getWcdmaLevel()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 263
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setCdmaLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 106
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    .line 107
    return-void
.end method

.method public blacklist setEvdoLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 121
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    .line 122
    return-void
.end method

.method public blacklist setGsmLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 136
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    .line 137
    return-void
.end method

.method public blacklist setLteLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 181
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    .line 182
    return-void
.end method

.method public blacklist setNrLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 196
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    .line 197
    return-void
.end method

.method public blacklist setTdscdmaLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 166
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    .line 167
    return-void
.end method

.method public blacklist setWcdmaLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 151
    iput p1, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    .line 152
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "hasValidLevel":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "SignalBarInfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    if-eqz v2, :cond_1d

    .line 227
    const-string v2, " cdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_1d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    if-eqz v2, :cond_2d

    .line 231
    const-string v2, " evdoLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const/4 v0, 0x1

    .line 234
    :cond_2d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    if-eqz v2, :cond_3d

    .line 235
    const-string v2, " gsmLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_3d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    if-eqz v2, :cond_4d

    .line 239
    const-string v2, " wcdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const/4 v0, 0x1

    .line 242
    :cond_4d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    if-eqz v2, :cond_5d

    .line 243
    const-string v2, " tdscdmaLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const/4 v0, 0x1

    .line 246
    :cond_5d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    if-eqz v2, :cond_6d

    .line 247
    const-string v2, " lteLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const/4 v0, 0x1

    .line 250
    :cond_6d
    iget v2, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    if-eqz v2, :cond_7d

    .line 251
    const-string v2, " nrLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const/4 v0, 0x1

    .line 254
    :cond_7d
    if-nez v0, :cond_84

    .line 255
    const-string v2, " no level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_84
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 286
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
