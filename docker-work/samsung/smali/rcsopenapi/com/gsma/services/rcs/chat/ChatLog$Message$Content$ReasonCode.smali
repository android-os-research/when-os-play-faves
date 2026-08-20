.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
.super Ljava/lang/Enum;
.source "ChatLog.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum FAILED_SEND:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final reasoncode:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 420
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v3, "FAILED_SEND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->FAILED_SEND:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v5, "FAILED_DELIVERY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v7, "FAILED_DISPLAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v9, "REJECTED_SPAM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 419
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 462
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "reasoncode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->reasoncode:I

    .line 423
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

    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->reasoncode:I

    .line 427
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .registers 3
    .param p0, "reason"    # I

    .line 480
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->ordinal()I

    move-result v1

    if-lt p0, v1, :cond_17

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->ordinal()I

    move-result v1

    if-gt p0, v1, :cond_17

    .line 481
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 484
    :cond_17
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 419
    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .registers 1

    .line 419
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 477
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->reasoncode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 455
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->reasoncode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return-void
.end method
