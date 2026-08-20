.class public Lcom/sec/ims/IMSUserProfile;
.super Ljava/lang/Object;
.source "IMSUserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSUserProfile$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSUserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PORT:I = 0x13c4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TCP:Ljava/lang/String; = "TCP"

.field private static final UDP:Ljava/lang/String; = "UDP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public available:I

.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private transient mCallingUid:I

.field public transient mCapabilities:Landroid/os/Bundle;

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmAuthUserName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile;->mAuthUserName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutoRegistration(Lcom/sec/ims/IMSUserProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDomain(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPassword(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPort(Lcom/sec/ims/IMSUserProfile;I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProfileName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProtocol(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSendKeepAlive(Lcom/sec/ims/IMSUserProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sec/ims/IMSUserProfile;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/sec/ims/IMSUserProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/IMSUserProfile;->LOG_TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/sec/ims/IMSUserProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSUserProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSUserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "UDP"

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    .line 33
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    .line 36
    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 341
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "UDP"

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    .line 33
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    .line 36
    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSUserProfile;->mProxyAddress:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSUserProfile;->mPassword:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_39

    move v2, v0

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    iput-boolean v2, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mAuthUserName:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mCapabilities:Landroid/os/Bundle;

    .line 356
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/IMSUserProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/IMSUserProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ims/IMSUserProfile-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/ims/IMSUserProfile;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/IMSUserProfile;)V
    .registers 4
    .param p1, "profile"    # Lcom/sec/ims/IMSUserProfile;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "UDP"

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    .line 33
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    .line 36
    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 109
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProxyAddress:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mPassword:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mAuthUserName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 116
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSendKeepAlive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    .line 117
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAutoRegistration()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    .line 118
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 119
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCapabilities()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mCapabilities:Landroid/os/Bundle;

    .line 120
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAvailability()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->available:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/sec/ims/IMSUserProfile;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/sec/ims/IMSUserProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 550
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    if-nez v0, :cond_8

    .line 551
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    .line 552
    :cond_8
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mAuthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoRegistration()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    return v0
.end method

.method public getAvailability()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->available:I

    return v0
.end method

.method public getCallingUid()I
    .registers 2

    .line 539
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    return v0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mCapabilities:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDN()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 475
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSendKeepAlive()Z
    .registers 2

    .line 511
    iget-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    return v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/IMSUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public setCallingUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 530
    iput p1, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    .line 531
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 367
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mSendKeepAlive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-boolean v0, p0, Lcom/sec/ims/IMSUserProfile;->mAutoRegistration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lcom/sec/ims/IMSUserProfile;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 378
    return-void
.end method
