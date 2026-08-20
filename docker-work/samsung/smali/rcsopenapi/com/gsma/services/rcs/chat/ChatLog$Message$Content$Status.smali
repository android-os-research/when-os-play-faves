.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
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
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 347
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "REJECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v3, "QUEUED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v5, "SENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v7, "SENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v11, "DELIVERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v11, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v13, "DISPLAY_REPORT_REQUESTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v13, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v15, "RECEIVED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 348
    new-instance v15, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v14, "DISPLAYED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 346
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 397
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 350
    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    .line 351
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

    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    .line 355
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .registers 2
    .param p0, "status"    # I

    .line 408
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_17

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_17

    .line 409
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 412
    :cond_17
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 346
    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .registers 1

    .line 346
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 366
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 390
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return-void
.end method
