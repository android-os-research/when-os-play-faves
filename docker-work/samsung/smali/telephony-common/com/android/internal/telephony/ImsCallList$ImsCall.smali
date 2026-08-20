.class public Lcom/android/internal/telephony/ImsCallList$ImsCall;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsCall"
.end annotation


# instance fields
.field private blacklist mConnHashCode:I

.field private blacklist mConnState:Lcom/android/internal/telephony/Call$State;

.field private blacklist mImsCallHashCode:I

.field private blacklist mIsMpty:I

.field private blacklist mIsMt:I

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mState:I

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const-string v1, ""

    .line 155
    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 158
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 159
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 160
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V
    .registers 8

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const-string v2, ""

    .line 155
    iput-object v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 160
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    if-nez p1, :cond_1d

    return-void

    .line 170
    :cond_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 172
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 173
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 177
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_44

    .line 178
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_46

    .line 180
    :cond_44
    iput v4, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    .line 183
    :goto_46
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 184
    iget v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    .line 187
    :cond_52
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 188
    iget v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    :cond_5e
    if-nez p2, :cond_c7

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 193
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const/16 p2, 0x100

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p2

    if-eqz p2, :cond_75

    const-string p2, "Conference call"

    .line 195
    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    goto :goto_88

    .line 197
    :cond_75
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_82

    const-string p2, " "

    goto :goto_86

    :cond_82
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p2

    :goto_86
    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 199
    :goto_88
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 200
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v3, :cond_ae

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getBigData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 205
    :cond_ae
    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v3, :cond_f5

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRingbackTonePlaying()Z

    move-result p2

    if-nez p2, :cond_f5

    .line 207
    iget p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_f5

    .line 210
    :cond_c7
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getCallDirection()I

    move-result v3

    if-nez v3, :cond_cf

    move v3, v0

    goto :goto_d0

    :cond_cf
    move v3, v1

    :goto_d0
    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 211
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    .line 212
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 214
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getState()I

    move-result p2

    const/4 v3, 0x6

    if-eq p2, v3, :cond_f1

    .line 215
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    goto :goto_f5

    .line 217
    :cond_f1
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 220
    :cond_f5
    :goto_f5
    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    .line 223
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p2

    if-eqz p2, :cond_10b

    const/16 p2, 0x80

    .line 224
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p1

    if-eqz p1, :cond_10c

    :cond_10b
    move v0, v1

    .line 227
    :cond_10c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11b

    const-string p2, "-Y"

    goto :goto_11d

    :cond_11b
    const-string p2, "-N"

    :goto_11d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private static blacklist fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I
    .registers 2

    .line 273
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 277
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x2

    return p0

    .line 279
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_18

    const/4 p0, 0x3

    return p0

    .line 281
    :cond_18
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1e

    const/4 p0, 0x4

    return p0

    .line 283
    :cond_1e
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_24

    const/4 p0, 0x5

    return p0

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_30

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :pswitch_1a
    const-string p0, "WAITING"

    goto :goto_2e

    :pswitch_1d
    const-string p0, "INCOMING"

    goto :goto_2e

    :pswitch_20
    const-string p0, "ALERTING"

    goto :goto_2e

    :pswitch_23
    const-string p0, "DIALING"

    goto :goto_2e

    :pswitch_26
    const-string p0, "HOLDING"

    goto :goto_2e

    :pswitch_29
    const-string p0, "ACTIVE"

    goto :goto_2e

    :pswitch_2c
    const-string p0, "IDLE"

    :goto_2e
    return-object p0

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .registers 5

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string v2, "vo"

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_12
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    const-string v2, "vi"

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 333
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2a

    const-string v2, "wifi"

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_2a
    const-string v2, "lte"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3a

    const-string v2, "_emergency"

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v1, :cond_43

    const-string v1, "_remoteringback"

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const/16 v1, 0x40

    if-lt p0, v1, :cond_4c

    const-string p0, "_error"

    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 232
    instance-of v0, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 236
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    .line 237
    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    if-ne v0, v2, :cond_2b

    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 238
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 243
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist toSehImsCall()Lvendor/samsung/hardware/radio/V2_0/SehImsCall;
    .registers 3

    .line 247
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;-><init>()V

    .line 249
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->state:I

    .line 250
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->type:I

    .line 251
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMt:I

    .line 252
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMpty:I

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const-string p0, ""

    :goto_1c
    iput-object p0, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->number:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "state:"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    invoke-static {v1}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    invoke-static {v1}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    const-string v1, ", mt"

    goto :goto_2d

    :cond_2b
    const-string v1, ", mo"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    if-ne v1, v2, :cond_37

    const-string v1, ", conf, "

    goto :goto_39

    :cond_37
    const-string v1, ", norm, "

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objId:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
