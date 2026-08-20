.class public Lcom/sec/ims/cmc/CmcCallInfo;
.super Ljava/lang/Object;
.source "CmcCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_INCALL:I = 0x3

.field public static final CALL_STATE_INCOMING:I = 0x1

.field public static final CALL_STATE_OUTGOING:I = 0x2

.field public static final CALL_STATE_PDCALL:I = 0x4

.field public static final CMC_TYPE_NONE:I = 0x0

.field public static final CMC_TYPE_PRIMARY:I = 0x1

.field public static final CMC_TYPE_SECONDARY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallInfo"


# instance fields
.field private mCmcCallState:I

.field private mCmcType:I

.field private mLineSlotId:I

.field private mPdDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 36
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 37
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 36
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 37
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 97
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 98
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 99
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 100
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo;)V
    .registers 3
    .param p1, "src"    # Lcom/sec/ims/cmc/CmcCallInfo;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 36
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 37
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 90
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 91
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 92
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 93
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .registers 1

    .line 109
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getCmcCallState()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    return v0
.end method

.method public getCmcType()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    return v0
.end method

.method public getLineSlotId()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    return v0
.end method

.method public getPdDeviceId()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcCallInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") [mCmcType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCmcCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPdDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
