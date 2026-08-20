.class public Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;
.super Ljava/lang/Object;
.source "SemIWCBDTracking.java"


# static fields
.field private static NA:I = -0xa

.field private static NAL:J = -0xaL


# instance fields
.field private mCLN:I

.field private mCS:Ljava/lang/String;

.field private mDQ:I

.field private mE:[I

.field private mEL:Ljava/lang/String;

.field private mID:I

.field private mNQ:I

.field private mOUI:Ljava/lang/String;

.field private mPLN:I

.field private mPON:I

.field private mPQ:I

.field private mQT:Ljava/lang/String;

.field private mQTN:I

.field private mRLN:I

.field private mSS:[I

.field private mSSN:I

.field private mSST:J

.field private mSTO:I

.field private mSUI:I

.field private mTCL:I

.field private mTSD:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSS:[I

    const/16 v1, 0xd

    new-array v2, v1, [I

    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mE:[I

    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mOUI:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCS:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mEL:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQT:Ljava/lang/String;

    .line 75
    sget v2, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NA:I

    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPQ:I

    .line 76
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mNQ:I

    .line 77
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mID:I

    .line 78
    sget-wide v3, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NAL:J

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSST:J

    .line 79
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQTN:I

    .line 80
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSSN:I

    .line 81
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCLN:I

    .line 82
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mRLN:I

    .line 83
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPLN:I

    .line 84
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSUI:I

    .line 85
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSTO:I

    const/4 v2, 0x0

    move v3, v2

    :goto_33
    if-ge v3, v1, :cond_3c

    .line 87
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mE:[I

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3c
    move v1, v2

    :goto_3d
    if-ge v1, v0, :cond_46

    .line 90
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSS:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 92
    :cond_46
    sget v0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NA:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mDQ:I

    .line 93
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPON:I

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTSD:J

    .line 95
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTCL:I

    return-void
.end method


# virtual methods
.method public cleanBD()V
    .registers 5

    .line 168
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mOUI:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCS:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mEL:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQT:Ljava/lang/String;

    .line 173
    sget v0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NA:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPQ:I

    .line 174
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mNQ:I

    .line 175
    sget-wide v2, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NAL:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSST:J

    .line 176
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQTN:I

    .line 177
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSSN:I

    .line 178
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCLN:I

    .line 179
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mRLN:I

    .line 180
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPLN:I

    .line 181
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSUI:I

    .line 182
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSTO:I

    const/4 v0, 0x0

    move v2, v0

    :goto_28
    const/16 v3, 0xd

    if-ge v2, v3, :cond_33

    .line 184
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mE:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_33
    move v2, v0

    :goto_34
    if-ge v2, v1, :cond_3d

    .line 187
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSS:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 189
    :cond_3d
    sget v0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->NA:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mDQ:I

    .line 190
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPON:I

    .line 192
    :cond_43
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mID:I

    return-void
.end method

.method public get24HEventAccWithIdx(I)I
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mE:[I

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0
.end method

.method public getDefaultQaiInfo()I
    .registers 1

    .line 160
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mDQ:I

    return p0
.end method

.method public getEVInfo()Ljava/lang/String;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mEL:Ljava/lang/String;

    return-object p0
.end method

.method public getIdInfo()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mID:I

    return p0
.end method

.method public getListCountInfo(I)I
    .registers 3

    if-nez p1, :cond_5

    .line 144
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCLN:I

    return p0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 145
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mRLN:I

    return p0

    .line 146
    :cond_b
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPLN:I

    return p0
.end method

.method public getOUIInfo()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mOUI:Ljava/lang/String;

    return-object p0
.end method

.method public getPoorLinkCountInfo()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPON:I

    return p0
.end method

.method public getQAIInfo(I)I
    .registers 2

    if-nez p1, :cond_5

    .line 229
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPQ:I

    return p0

    .line 230
    :cond_5
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mNQ:I

    return p0
.end method

.method public getQTCountInfo(I)I
    .registers 2

    if-nez p1, :cond_5

    .line 133
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQTN:I

    return p0

    .line 134
    :cond_5
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSSN:I

    return p0
.end method

.method public getQTableValueInfo()Ljava/lang/String;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQT:Ljava/lang/String;

    return-object p0
.end method

.method public getSNSToggleInfo()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSTO:I

    return p0
.end method

.method public getSNSUIStateInfo()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSUI:I

    return p0
.end method

.method public getSSCountInfo(I)I
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSS:[I

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0
.end method

.method public getSSTakenTimeInfo()J
    .registers 3

    .line 250
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSST:J

    return-wide v0
.end method

.method public getStateInfo()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCS:Ljava/lang/String;

    return-object p0
.end method

.method public getTipsClick()I
    .registers 1

    .line 266
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTCL:I

    return p0
.end method

.method public getTipsShowingDuration()J
    .registers 3

    .line 258
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTSD:J

    return-wide v0
.end method

.method public set24HEventAccWithIdx(I)V
    .registers 3

    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mE:[I

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public setDefaultQaiInfo(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mDQ:I

    return-void
.end method

.method public setEVInfo(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mEL:Ljava/lang/String;

    return-void
.end method

.method public setIdInfo(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mID:I

    return-void
.end method

.method public setListCountInfo(III)V
    .registers 4

    .line 138
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCLN:I

    .line 139
    iput p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mRLN:I

    .line 140
    iput p3, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPLN:I

    return-void
.end method

.method public setOUIInfo(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mOUI:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method public setPoorLinkCountInfo(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPON:I

    return-void
.end method

.method public setQAIInfo(II)V
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 224
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mPQ:I

    add-int/lit8 p2, p2, 0x1

    .line 225
    iput p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mNQ:I

    return-void
.end method

.method public setQTCountInfo(II)V
    .registers 3

    .line 128
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQTN:I

    .line 129
    iput p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSSN:I

    return-void
.end method

.method public setQTableValueInfo(Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mQT:Ljava/lang/String;

    return-void
.end method

.method public setSNSUIStateInfo(II)V
    .registers 3

    .line 107
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSUI:I

    .line 108
    iput p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSTO:I

    return-void
.end method

.method public setSSCountInfo(III)V
    .registers 5

    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSS:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    .line 151
    aput p2, p0, p1

    const/4 p1, 0x2

    .line 152
    aput p3, p0, p1

    return-void
.end method

.method public setSSTakenTimeInfo(J)V
    .registers 3

    .line 254
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mSST:J

    return-void
.end method

.method public setStateInfo(Z)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    const-string p1, "switched"

    .line 218
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCS:Ljava/lang/String;

    goto :goto_c

    :cond_8
    const-string p1, "connected"

    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mCS:Ljava/lang/String;

    :goto_c
    return-void
.end method

.method public setTipsClick(Z)V
    .registers 2

    .line 270
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTCL:I

    return-void
.end method

.method public setTipsShowingDuration(J)V
    .registers 3

    .line 262
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->mTSD:J

    return-void
.end method
