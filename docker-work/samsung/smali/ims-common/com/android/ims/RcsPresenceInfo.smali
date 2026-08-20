.class public Lcom/android/ims/RcsPresenceInfo;
.super Ljava/lang/Object;
.source "RcsPresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/RcsPresenceInfo$ServiceInfoKey;,
        Lcom/android/ims/RcsPresenceInfo$ServiceState;,
        Lcom/android/ims/RcsPresenceInfo$ServiceType;,
        Lcom/android/ims/RcsPresenceInfo$VolteStatus;
    }
.end annotation


# static fields
.field private static final blacklist CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/RcsPresenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VOLTE_STATUS:Ljava/lang/String; = "volte_status"


# instance fields
.field private blacklist mServiceInfo:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Lcom/android/ims/RcsPresenceInfo$1;

    invoke-direct {v0}, Lcom/android/ims/RcsPresenceInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/RcsPresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    .line 234
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 241
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;J)V
    .registers 20
    .param p1, "contactNumber"    # Ljava/lang/String;
    .param p2, "volteStatus"    # I
    .param p3, "ipVoiceCallState"    # I
    .param p4, "ipVoiceCallServiceNumber"    # Ljava/lang/String;
    .param p5, "ipVoiceCallTimestamp"    # J
    .param p7, "ipVideoCallState"    # I
    .param p8, "ipVideoCallServiceNumber"    # Ljava/lang/String;
    .param p9, "ipVideoCallTimestamp"    # J

    .line 255
    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v6, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    .line 256
    const-string v1, "contact_number"

    move-object v7, p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, v6, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    const-string v1, "volte_status"

    move v8, p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/ims/RcsPresenceInfo;->set(IILjava/lang/String;J)V

    .line 262
    const/4 v1, 0x2

    move/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/ims/RcsPresenceInfo;->set(IILjava/lang/String;J)V

    .line 264
    return-void
.end method

.method private blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method private blacklist getServiceInfo(ILjava/lang/String;I)I
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "infoType"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 329
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, "serviceInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 331
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 333
    :cond_11
    return p3
.end method

.method private blacklist getServiceInfo(ILjava/lang/String;J)J
    .registers 8
    .param p1, "serviceType"    # I
    .param p2, "infoKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 320
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 321
    .local v0, "serviceInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 325
    :cond_11
    return-wide p3
.end method

.method private blacklist getServiceInfo(ILjava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "infoKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Landroid/net/Uri;

    .line 337
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 338
    .local v0, "serviceInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    return-object v1

    .line 342
    :cond_13
    return-object p3
.end method

.method private blacklist getServiceInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "infoKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .local v0, "serviceInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 314
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_11
    return-object p3
.end method

.method private blacklist set(IILjava/lang/String;J)V
    .registers 9
    .param p1, "serviceType"    # I
    .param p2, "state"    # I
    .param p3, "serviceNumber"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, "capability":Landroid/os/Bundle;
    const-string v1, "service_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v1, "service_contact"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 274
    iget-object v1, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 275
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContactNumber()Ljava/lang/String;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    const-string v1, "contact_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceContact(I)Ljava/lang/String;
    .registers 4
    .param p1, "serviceType"    # I

    .line 213
    const-string v0, "service_contact"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceState(I)I
    .registers 4
    .param p1, "serviceType"    # I

    .line 199
    const-string v0, "state"

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceInfo(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp(I)J
    .registers 5
    .param p1, "serviceType"    # I

    .line 227
    const-string v0, "timestamp"

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/ims/RcsPresenceInfo;->getServiceInfo(ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getVolteStatus()I
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    const-string v1, "volte_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " contactNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/RcsPresenceInfo;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/Logger;->hidePhoneNumberPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volteStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcom/android/ims/RcsPresenceInfo;->getVolteStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ipVoiceCallSate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceState(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ipVoiceCallServiceNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceContact(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/Logger;->hidePhoneNumberPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ipVoiceCallTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getTimeStamp(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ipVideoCallSate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceState(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ipVideoCallServiceNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getServiceContact(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/Logger;->hidePhoneNumberPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ipVideoCallTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/ims/RcsPresenceInfo;->getTimeStamp(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 297
    iget-object v0, p0, Lcom/android/ims/RcsPresenceInfo;->mServiceInfo:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    return-void
.end method
