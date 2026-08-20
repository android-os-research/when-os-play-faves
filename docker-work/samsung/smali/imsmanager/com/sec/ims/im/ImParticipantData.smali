.class public Lcom/sec/ims/im/ImParticipantData;
.super Ljava/lang/Object;
.source "ImParticipantData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:I

.field private mUriString:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Lcom/sec/ims/im/ImParticipantData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImParticipantData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImParticipantData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/im/ImParticipantData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/im/ImParticipantData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "status"    # I
    .param p5, "userAlias"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    .line 41
    iput p4, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    .line 42
    iput-object p5, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    return v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mChatId"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "mId"    # I

    .line 109
    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    .line 110
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "mStatus"    # I

    .line 118
    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    .line 119
    return-void
.end method

.method public setUriString(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUriString"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUserAlias"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImParticipant [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUriString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

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

    .line 147
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
