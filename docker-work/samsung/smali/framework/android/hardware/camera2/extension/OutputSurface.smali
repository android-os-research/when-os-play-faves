.class public Landroid/hardware/camera2/extension/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist imageFormat:I

.field public blacklist size:Landroid/hardware/camera2/extension/Size;

.field public blacklist surface:Landroid/view/Surface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface$1;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/extension/OutputSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 66
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/OutputSurface;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/OutputSurface;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7e

    .line 41
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 48
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 51
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void

    .line 49
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_26
    :try_start_26
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, p0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 48
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 51
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void

    .line 49
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_46
    :try_start_46
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    iput-object v2, p0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 48
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 51
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void

    .line 49
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_7c

    .line 48
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_76

    .line 51
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    nop

    .line 53
    return-void

    .line 49
    :cond_76
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :catchall_7c
    move-exception v2

    goto :goto_86

    .line 40
    :cond_7e
    :try_start_7e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/camera2/extension/OutputSurface;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_7c

    .line 48
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/camera2/extension/OutputSurface;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_86
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8f

    .line 49
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_8f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 26
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object v1, p0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    iget-object v1, p0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 29
    iget v1, p0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 31
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
