.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
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
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum FAILED_SESSION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_CS_CALL_IN_PROGRESS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DEFAULT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DVC_FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_LOW_BATTERY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_MAX:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_MAX_FILE_SIZE_REACHED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOANS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NONE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOREG_INCOMCALL_RECVED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_UNSUPPORTED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReasonCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 37

    .line 37
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 38
    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v3, "ABORTED_BY_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 39
    new-instance v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v5, "ABORTED_BY_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 40
    new-instance v5, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v7, "ABORTED_BY_SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 41
    new-instance v7, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v9, "ABORTED_BY_INACTIVITY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 42
    new-instance v9, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v11, "REJECTED_BY_USER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 43
    new-instance v11, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v13, "REJECTED_BY_REMOTE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 44
    new-instance v13, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v15, "REJECTED_BY_TIMEOUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 45
    new-instance v15, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v14, "REJECTED_BY_SYSTEM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 46
    new-instance v14, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v12, "FAILED_INITIATION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 47
    new-instance v12, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v10, "FAILED_SESSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_SESSION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 48
    new-instance v10, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v8, "FAILED_MEDIA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 56
    new-instance v8, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_NONE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NONE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 57
    new-instance v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v4, "REJECT_REASON_DEFAULT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DEFAULT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 58
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_NOANS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOANS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 59
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_BUSY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 60
    new-instance v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v4, "REJECT_REASON_DECLINE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 61
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_TEMP_UNAVAILABLE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 62
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_DVC_FAILED"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DVC_FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 63
    new-instance v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v4, "REJECT_REASON_TEMP_NOT_ACCEPTABLE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 64
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_CS_CALL_IN_PROGRESS"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_CS_CALL_IN_PROGRESS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 65
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_BAD_REQUEST"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 66
    new-instance v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v4, "REJECT_REASON_REQ_TERMINATED"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 67
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v4, "REJECT_REASON_SERVICE_UNAVAILABLE"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 68
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_UNSUPPORTED_MEDIA"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_UNSUPPORTED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 69
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_LOW_BATTERY"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_LOW_BATTERY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 70
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_REQUEST_PENDING"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 71
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_USER_CALL_BLOCK"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 72
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_MAX_FILE_SIZE_REACHED"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX_FILE_SIZE_REACHED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 73
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_NOREG_INCOMCALL_RECVED"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOREG_INCOMCALL_RECVED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 74
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_REMOTE_USER_INVALID"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 75
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_NOT_IMPLEMENTED"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 76
    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_SERVER_TIMEOUT"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v8, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 77
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v6, "REJECT_REASON_MAX"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 33
    const/16 v4, 0x22

    new-array v4, v4, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    sput-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 83
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 96
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_24a
    if-ge v2, v1, :cond_25a

    aget-object v3, v0, v2

    .line 97
    .local v3, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .end local v3    # "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_24a

    .line 99
    :cond_25a
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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    .line 118
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

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    .line 122
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .registers 5
    .param p0, "value"    # I

    .line 102
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 103
    .local v0, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    if-eqz v0, :cond_b

    .line 104
    return-object v0

    .line 106
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 107
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .registers 1

    .line 33
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 131
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
