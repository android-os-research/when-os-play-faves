.class public final enum Lcom/gsma/services/rcs/chat/GroupChat$State;
.super Ljava/lang/Enum;
.source "GroupChat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/GroupChat$State;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum ACCEPTING:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/GroupChat$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum INVITED:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

.field private static mValueToEnum:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/GroupChat$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCode(Lcom/gsma/services/rcs/chat/GroupChat$State;)I
    .registers 1

    iget p0, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 43
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v1, "INVITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INVITED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v3, "INITIATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v3, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gsma/services/rcs/chat/GroupChat$State;->STARTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v5, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v7, "ABORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gsma/services/rcs/chat/GroupChat$State;->ABORTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v7, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gsma/services/rcs/chat/GroupChat$State;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v9, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v11, "ACCEPTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gsma/services/rcs/chat/GroupChat$State;->ACCEPTING:Lcom/gsma/services/rcs/chat/GroupChat$State;

    new-instance v11, Lcom/gsma/services/rcs/chat/GroupChat$State;

    const-string v13, "REJECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/gsma/services/rcs/chat/GroupChat$State;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gsma/services/rcs/chat/GroupChat$State;->REJECTED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 42
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/gsma/services/rcs/chat/GroupChat$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/gsma/services/rcs/chat/GroupChat$State;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mValueToEnum:Landroid/util/SparseArray;

    .line 54
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$State;->values()[Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    array-length v1, v0

    :goto_65
    if-ge v2, v1, :cond_75

    aget-object v3, v0, v2

    .line 55
    .local v3, "entry":Lcom/gsma/services/rcs/chat/GroupChat$State;
    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$State;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .end local v3    # "entry":Lcom/gsma/services/rcs/chat/GroupChat$State;
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 105
    :cond_75
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$State$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    .line 49
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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    .line 75
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;
    .registers 5
    .param p0, "value"    # I

    .line 66
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 67
    .local v0, "entry":Lcom/gsma/services/rcs/chat/GroupChat$State;
    if-eqz v0, :cond_b

    .line 68
    return-object v0

    .line 70
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/chat/GroupChat$State;

    .line 71
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$State;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/GroupChat$State;
    .registers 1

    .line 42
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/GroupChat$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/GroupChat$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 125
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$State;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
