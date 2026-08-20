.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
.super Ljava/lang/Enum;
.source "MultimediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMsgDeliveryStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 244
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v1, "MSRP_RESP_CODE_INVALID"

    const/4 v2, 0x0

    const/16 v3, 0xc6

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 247
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_UNKNOWN"

    const/4 v4, 0x1

    const/16 v5, 0xc7

    invoke-direct {v1, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 248
    new-instance v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v5, "MSRP_RESP_CODE_200_SUCCESS"

    const/4 v6, 0x2

    const/16 v7, 0xc8

    invoke-direct {v3, v5, v6, v7}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 249
    new-instance v5, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v7, "MSRP_RESP_CODE_400_UNINTELLIGIBLE"

    const/4 v8, 0x3

    const/16 v9, 0x190

    invoke-direct {v5, v7, v8, v9}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 250
    new-instance v7, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v9, "MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED"

    const/4 v10, 0x4

    const/16 v11, 0x193

    invoke-direct {v7, v9, v10, v11}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 251
    new-instance v9, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v11, "MSRP_RESP_CODE_408_TRANS_TIMEOUT"

    const/4 v12, 0x5

    const/16 v13, 0x198

    invoke-direct {v9, v11, v12, v13}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 252
    new-instance v11, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v13, "MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG"

    const/4 v14, 0x6

    const/16 v15, 0x19d

    invoke-direct {v11, v13, v14, v15}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 253
    new-instance v13, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v15, "MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE"

    const/4 v14, 0x7

    const/16 v12, 0x19f

    invoke-direct {v13, v15, v14, v12}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 254
    new-instance v12, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v15, "MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND"

    const/16 v14, 0x8

    const/16 v10, 0x1a7

    invoke-direct {v12, v15, v14, v10}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 255
    new-instance v10, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v15, "MSRP_RESP_CODE_481_SESSION_NOT_EXIST"

    const/16 v14, 0x9

    const/16 v8, 0x1e1

    invoke-direct {v10, v15, v14, v8}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 256
    new-instance v8, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v15, "MSRP_RESP_CODE_501_UNKNOWN_METHOD"

    const/16 v14, 0xa

    const/16 v6, 0x1f5

    invoke-direct {v8, v15, v14, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 257
    new-instance v6, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v15, "MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN"

    const/16 v14, 0xb

    const/16 v4, 0x1fa

    invoke-direct {v6, v15, v14, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 239
    const/16 v4, 0xc

    new-array v4, v4, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 263
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    .line 276
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    array-length v1, v0

    :goto_d2
    if-ge v2, v1, :cond_e2

    aget-object v3, v0, v2

    .line 277
    .local v3, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    .end local v3    # "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 279
    :cond_e2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 297
    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    .line 298
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

    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    .line 302
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .registers 5
    .param p0, "value"    # I

    .line 282
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 283
    .local v0, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    if-eqz v0, :cond_b

    .line 284
    return-object v0

    .line 286
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 287
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 239
    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .registers 1

    .line 239
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 311
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    return-void
.end method
