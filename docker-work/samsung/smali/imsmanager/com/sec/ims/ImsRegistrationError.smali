.class public Lcom/sec/ims/ImsRegistrationError;
.super Ljava/lang/Object;
.source "ImsRegistrationError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/ImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDeregistrationReason:I

.field mDetailedDeregiReason:I

.field mSipErrorCode:I

.field mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/sec/ims/ImsRegistrationError$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    .line 17
    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "sipErrorCode"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "sipErrorCode"    # I
    .param p2, "sipErrorReason"    # Ljava/lang/String;
    .param p3, "detailedDeregiReason"    # I
    .param p4, "deregistrationReason"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    .line 26
    iput-object p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    .line 28
    iput p4, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistrationError-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDeregistrationReason()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return v0
.end method

.method public getDetailedDeregiReason()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    return v0
.end method

.method public getSipErrorCode()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    return v0
.end method

.method public getSipErrorReason()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
