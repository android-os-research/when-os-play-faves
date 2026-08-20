.class public final enum Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
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
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum RINGING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;


# instance fields
.field private final stateId:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 45
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v1, "INVITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v3, "INITIATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v7, "ABORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v7, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v9, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v11, "REJECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v11, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v13, "RINGING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    new-instance v13, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    const-string v15, "ACCEPTING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 44
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    .line 93
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "stateId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    .line 51
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .registers 7
    .param p0, "id"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "state":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 56
    .local v4, "s":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    iget v5, v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    if-ne v5, p0, :cond_11

    .line 57
    move-object v0, v4

    .line 58
    goto :goto_14

    .line 55
    .end local v4    # "s":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 61
    :cond_14
    :goto_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .registers 1

    .line 44
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toInt()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 66
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 86
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->stateId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
