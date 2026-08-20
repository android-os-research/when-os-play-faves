.class public final enum Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
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
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum RINGING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field public static final enum TRANSFERRED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCode(Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;)I
    .registers 1

    iget p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 51
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v1, "INVITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v3, "INITIATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v5, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v7, "ABORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v7, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->FAILED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v9, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v11, "TRANSFERRED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v11, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v13, "REJECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v13, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v15, "RINGING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    new-instance v15, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    const-string v14, "ACCEPTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->ACCEPTING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 50
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

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

    sput-object v14, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    .line 57
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v0

    array-length v1, v0

    :goto_82
    if-ge v2, v1, :cond_92

    aget-object v3, v0, v2

    .line 58
    .local v3, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .end local v3    # "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 112
    :cond_92
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    .line 63
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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    .line 67
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 5
    .param p0, "value"    # I

    .line 77
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 78
    .local v0, "entry":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    if-eqz v0, :cond_b

    .line 79
    return-object v0

    .line 81
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    .line 82
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 1

    .line 50
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->$VALUES:[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 135
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
