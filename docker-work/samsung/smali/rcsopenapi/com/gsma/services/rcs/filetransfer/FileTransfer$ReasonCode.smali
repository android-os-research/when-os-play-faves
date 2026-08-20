.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
.super Ljava/lang/Enum;
.source "FileTransfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final reasonCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 204
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 209
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "ABORTED_BY_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 214
    new-instance v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v5, "ABORTED_BY_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 219
    new-instance v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v7, "ABORTED_BY_SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 224
    new-instance v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v9, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 229
    new-instance v9, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v11, "REJECTED_BY_TIMEOUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 234
    new-instance v11, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v13, "REJECTED_SPAM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 240
    new-instance v13, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v15, "REJECTED_LOW_SPACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 245
    new-instance v15, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v14, "REJECTED_MAX_SIZE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 250
    new-instance v14, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v12, "REJECTED_MAX_FILE_TRANSFERS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 255
    new-instance v12, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v10, "REJECTED_BY_USER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 260
    new-instance v10, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v8, "REJECTED_BY_REMOTE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 265
    new-instance v8, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v6, "REJECTED_MEDIA_FAILED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 270
    new-instance v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v4, "REJECTED_BY_SYSTEM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 275
    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v2, "PAUSED_BY_SYSTEM"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 280
    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v6, "PAUSED_BY_USER"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 285
    new-instance v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v4, "FAILED_INITIATION"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 290
    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v2, "FAILED_DATA_TRANSFER"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 295
    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v6, "FAILED_SAVING"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 300
    new-instance v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v4, "FAILED_DELIVERY"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 305
    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v2, "FAILED_DISPLAY"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 310
    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v6, "FAILED_NOT_ALLOWED_TO_SEND"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 200
    const/16 v6, 0x16

    new-array v6, v6, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

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

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 321
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 324
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v16

    :goto_15d
    if-ge v2, v1, :cond_16d

    aget-object v3, v0, v2

    .line 325
    .local v3, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    .end local v3    # "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    .line 377
    :cond_16d
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 313
    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    .line 314
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

    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    .line 318
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .registers 5
    .param p0, "value"    # I

    .line 339
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 340
    .local v0, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    if-eqz v0, :cond_b

    .line 341
    return-object v0

    .line 343
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 344
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

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 200
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .registers 1

    .line 200
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 335
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 369
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return-void
.end method
