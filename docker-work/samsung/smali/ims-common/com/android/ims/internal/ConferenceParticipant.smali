.class public Lcom/android/ims/internal/ConferenceParticipant;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist ANONYMOUS_INVALID_HOST:Ljava/lang/String; = "anonymous.invalid"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ConferenceParticipant"


# instance fields
.field private blacklist mCallDirection:I

.field private blacklist mConfExtra:Landroid/os/Bundle;

.field private blacklist mConnectElapsedTime:J

.field private blacklist mConnectTime:J

.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mEndpoint:Landroid/net/Uri;

.field private final blacklist mHandle:Landroid/net/Uri;

.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Lcom/android/ims/internal/ConferenceParticipant$1;

    invoke-direct {v0}, Lcom/android/ims/internal/ConferenceParticipant$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/ConferenceParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 7
    .param p1, "extra"    # Landroid/os/Bundle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "endpoint"    # Landroid/net/Uri;
    .param p5, "state"    # I
    .param p6, "callDirection"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConfExtra:Landroid/os/Bundle;

    .line 102
    iput-object p2, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    .line 103
    iput-object p3, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    .line 105
    iput p5, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    .line 106
    iput p6, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    .line 107
    return-void
.end method

.method public static blacklist getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .param p0, "address"    # Landroid/net/Uri;
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 333
    if-nez p0, :cond_3

    .line 334
    return-object p0

    .line 352
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 354
    return-object p0

    .line 357
    :cond_e
    const-string v1, "[@;:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "numberParts":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_18

    .line 359
    return-object p0

    .line 361
    :cond_18
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 370
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_26
    nop

    .line 374
    if-eqz v2, :cond_2b

    move-object v3, v2

    goto :goto_2c

    :cond_2b
    move-object v3, v0

    :goto_2c
    const/4 v4, 0x0

    .line 373
    const-string v5, "tel"

    invoke-static {v5, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallDirection()I
    .registers 2

    .line 305
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    return v0
.end method

.method public blacklist getConfExtra()Landroid/os/Bundle;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConfExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getConnectElapsedTime()J
    .registers 3

    .line 292
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    return-wide v0
.end method

.method public blacklist getConnectTime()J
    .registers 3

    .line 281
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEndpoint()Landroid/net/Uri;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getHandle()Landroid/net/Uri;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getParticipantPresentation()I
    .registers 10

    .line 154
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "address":Landroid/net/Uri;
    const/4 v1, 0x2

    if-nez v0, :cond_8

    .line 156
    return v1

    .line 159
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 162
    return v1

    .line 170
    :cond_13
    const-string v3, "[;]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "hostParts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 175
    .local v4, "addressPart":Ljava/lang/String;
    const-string v5, "[@]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "numberParts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-eq v6, v1, :cond_27

    .line 180
    return v7

    .line 182
    :cond_27
    aget-object v6, v5, v7

    .line 186
    .local v6, "hostName":Ljava/lang/String;
    const-string v8, "anonymous.invalid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 187
    return v1

    .line 190
    :cond_32
    return v7
.end method

.method public blacklist getState()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    return v0
.end method

.method public blacklist setCallDirection(I)V
    .registers 2
    .param p1, "callDirection"    # I

    .line 317
    iput p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    .line 318
    return-void
.end method

.method public blacklist setConnectElapsedTime(J)V
    .registers 3
    .param p1, "connectElapsedTime"    # J

    .line 296
    iput-wide p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    .line 297
    return-void
.end method

.method public blacklist setConnectTime(J)V
    .registers 3
    .param p1, "connectTime"    # J

    .line 285
    iput-wide p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    .line 286
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ConferenceParticipant Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConfExtra:Landroid/os/Bundle;

    const-string v2, "ConferenceParticipant"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, " Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, " DisplayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, " Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, " ConnectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getConnectTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, " ConnectElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getConnectElapsedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getCallDirection()I

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "Incoming"

    goto :goto_75

    :cond_73
    const-string v1, "Outgoing"

    :goto_75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 201
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConfExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void
.end method
