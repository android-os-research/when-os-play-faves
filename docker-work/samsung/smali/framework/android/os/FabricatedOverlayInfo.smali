.class public Landroid/os/FabricatedOverlayInfo;
.super Ljava/lang/Object;
.source "FabricatedOverlayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist overlayName:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist path:Ljava/lang/String;

.field public blacklist targetOverlayable:Ljava/lang/String;

.field public blacklist targetPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Landroid/os/FabricatedOverlayInfo$1;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInfo$1;-><init>()V

    sput-object v0, Landroid/os/FabricatedOverlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 42
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 44
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ae

    .line 45
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_ac

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void

    .line 57
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_ac

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 57
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_ac

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 57
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_ac

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 57
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_ac

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 57
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_ac

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :cond_a6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :catchall_ac
    move-exception v2

    goto :goto_b6

    .line 44
    :cond_ae
    :try_start_ae
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/os/FabricatedOverlayInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_ac

    .line 56
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/os/FabricatedOverlayInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_b6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bf

    .line 57
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_bf
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 28
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v1, p0, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 35
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    return-void
.end method
