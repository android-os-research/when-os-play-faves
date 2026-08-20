.class public final enum Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
.super Ljava/lang/Enum;
.source "GroupDeliveryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final reasoncode:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 88
    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    const-string v3, "FAILED_DELIVERY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    new-instance v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    const-string v5, "FAILED_DISPLAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 87
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 101
    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_35
    if-ge v2, v1, :cond_45

    aget-object v3, v0, v2

    .line 102
    .local v3, "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .end local v3    # "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 148
    :cond_45
    new-instance v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->reasoncode:I

    .line 91
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

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->reasoncode:I

    .line 95
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .registers 5
    .param p0, "value"    # I

    .line 115
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 116
    .local v0, "entry":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    if-eqz v0, :cond_b

    .line 117
    return-object v0

    .line 119
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .registers 1

    .line 87
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->reasoncode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->reasoncode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
