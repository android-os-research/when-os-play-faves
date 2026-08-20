.class public Lcom/gsma/services/rcs/capability/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPABILITY_FILE_TRANSFER_SUPPORT:I = 0x1

.field public static final CAPABILITY_GEOLOC_PUSH_SUPPORT:I = 0x4

.field public static final CAPABILITY_IMAGE_SHARING_SUPPORT:I = 0x8

.field public static final CAPABILITY_IM_SUPPORT:I = 0x2

.field public static final CAPABILITY_VIDEO_SHARING_SUPPORT:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_NONE:I


# instance fields
.field private mAutomata:Z

.field private mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:I

.field private mLastSeen:J

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/capability/Capabilities$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;ZJ)V
    .registers 8
    .param p1, "features"    # I
    .param p3, "automata"    # Z
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 84
    .local p2, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 62
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mLastSeen:J

    .line 85
    iput p1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    .line 86
    iput-object p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 87
    iput-boolean p3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 88
    iput-wide p4, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/util/Set;ZJJ)V
    .registers 8
    .param p1, "features"    # I
    .param p3, "automata"    # Z
    .param p4, "timestamp"    # J
    .param p6, "lastseen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZJJ)V"
        }
    .end annotation

    .line 102
    .local p2, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/gsma/services/rcs/capability/Capabilities;-><init>(ILjava/util/Set;ZJ)V

    .line 103
    iput-wide p6, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mLastSeen:J

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 62
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    .line 73
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mLastSeen:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "extsThere":I
    if-eqz v2, :cond_2b

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 119
    :cond_2b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v0, 0x1

    :cond_39
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSeen()J
    .registers 3

    .line 215
    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mLastSeen:J

    return-wide v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-wide v0
.end method

.method public hasCapabilities(I)Z
    .registers 3
    .param p1, "capabilties"    # I

    .line 224
    iget v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isAutomata()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    return v0
.end method

.method public isExtensionSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capabilities{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", mExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", mAutomata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", mLastSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mLastSeen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    .end local v0    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_25

    .line 150
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_25
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    return-void
.end method
