.class public final enum Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
.super Ljava/lang/Enum;
.source "ImageSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum FAILED_SAVING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCode(Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;)I
    .registers 1

    iget p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 19

    .line 146
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 151
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v3, "ABORTED_BY_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 156
    new-instance v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v5, "ABORTED_BY_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 161
    new-instance v5, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v7, "ABORTED_BY_SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 166
    new-instance v7, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v9, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 171
    new-instance v9, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v11, "REJECTED_SPAM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 176
    new-instance v11, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v13, "REJECTED_BY_TIMEOUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 181
    new-instance v13, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v15, "REJECTED_LOW_SPACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 186
    new-instance v15, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v14, "REJECTED_MAX_SIZE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 191
    new-instance v14, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v12, "REJECTED_MAX_SHARING_SESSIONS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 196
    new-instance v12, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v10, "REJECTED_BY_USER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 201
    new-instance v10, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v8, "REJECTED_BY_REMOTE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 206
    new-instance v8, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v6, "REJECTED_BY_SYSTEM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 211
    new-instance v6, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v4, "FAILED_INITIATION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 216
    new-instance v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v2, "FAILED_SHARING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 221
    new-instance v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const-string v6, "FAILED_SAVING"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 142
    const/16 v6, 0x10

    new-array v6, v6, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 226
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v16

    :goto_f7
    if-ge v2, v1, :cond_107

    aget-object v3, v0, v2

    .line 227
    .local v3, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .end local v3    # "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 287
    :cond_107
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput p3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    .line 232
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .registers 4
    .param p3, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    .line 236
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .registers 5
    .param p0, "value"    # I

    .line 252
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 253
    .local v0, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    if-eqz v0, :cond_b

    .line 254
    return-object v0

    .line 256
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 257
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 142
    const-class v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .registers 1

    .line 142
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 310
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 280
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void
.end method
