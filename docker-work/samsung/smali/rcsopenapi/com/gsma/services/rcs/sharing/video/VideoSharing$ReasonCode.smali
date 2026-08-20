.class public final enum Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
.super Ljava/lang/Enum;
.source "VideoSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;


# instance fields
.field private final reasonCodeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 112
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 117
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v3, "ABORTED_BY_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 122
    new-instance v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v5, "ABORTED_BY_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 127
    new-instance v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v7, "ABORTED_BY_SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 132
    new-instance v7, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v9, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 137
    new-instance v9, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v11, "REJECTED_SPAM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 143
    new-instance v11, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v13, "REJECTED_MAX_SHARING_SESSIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 148
    new-instance v13, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v15, "REJECTED_BY_USER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 153
    new-instance v15, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v14, "REJECTED_BY_REMOTE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 158
    new-instance v14, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v12, "REJECTED_BY_TIMEOUT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 163
    new-instance v12, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v10, "REJECTED_BY_SYSTEM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 168
    new-instance v10, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v8, "FAILED_INITIATION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 173
    new-instance v8, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v6, "FAILED_SHARING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 107
    const/16 v6, 0xd

    new-array v6, v6, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v0, v6, v2

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

    aput-object v8, v6, v4

    sput-object v6, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    .line 221
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "reasonCodeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    .line 179
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 7
    .param p0, "id"    # I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "reasoncode":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 184
    .local v4, "r":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    iget v5, v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    if-ne v5, p0, :cond_11

    .line 185
    move-object v0, v4

    .line 186
    goto :goto_14

    .line 183
    .end local v4    # "r":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 189
    :cond_14
    :goto_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 107
    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 1

    .line 107
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public toInt()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 194
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 214
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void
.end method
