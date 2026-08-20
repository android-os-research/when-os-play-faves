.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
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
    name = "Disposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field public static final enum ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 46
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 52
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const-string v3, "RENDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 42
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    .line 59
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v0

    array-length v1, v0

    :goto_29
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 60
    .local v3, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .end local v3    # "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 102
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValue:I

    .line 66
    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .registers 5
    .param p0, "value"    # I

    .line 84
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 85
    .local v0, "entry":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    if-eqz v0, :cond_b

    .line 86
    return-object v0

    .line 88
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum const class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .registers 1

    .line 42
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
