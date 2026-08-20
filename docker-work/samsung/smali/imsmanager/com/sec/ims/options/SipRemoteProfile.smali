.class public Lcom/sec/ims/options/SipRemoteProfile;
.super Ljava/lang/Object;
.source "SipRemoteProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/SipRemoteProfile$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/options/SipRemoteProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvailability:I

.field public transient mCapabilities:Landroid/os/Bundle;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputmProfileName(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/options/SipRemoteProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/SipRemoteProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/options/SipRemoteProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ims/options/SipRemoteProfile-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/ims/options/SipRemoteProfile;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/options/SipRemoteProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/sec/ims/options/SipRemoteProfile;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getCapabilities()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    .line 49
    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getAvailability()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/sec/ims/options/SipRemoteProfile;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/sec/ims/options/SipRemoteProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailability()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    return v0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 66
    iget v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
