.class public Landroid/content/AttributionSourceState;
.super Ljava/lang/Object;
.source "AttributionSourceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/AttributionSourceState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist attributionTag:Ljava/lang/String;

.field public blacklist next:[Landroid/content/AttributionSourceState;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist renouncedPermissions:[Ljava/lang/String;

.field public blacklist token:Landroid/os/IBinder;

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/content/AttributionSourceState$1;

    invoke-direct {v0}, Landroid/content/AttributionSourceState$1;-><init>()V

    sput-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/AttributionSourceState;->pid:I

    .line 16
    iput v0, p0, Landroid/content/AttributionSourceState;->uid:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 95
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/content/AttributionSourceState;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 94
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 97
    :cond_19
    return v1

    .line 99
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 102
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    invoke-direct {p0, v1}, Landroid/content/AttributionSourceState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 60
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ea

    .line 63
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 79
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/AttributionSourceState;->pid:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 79
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/AttributionSourceState;->uid:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 79
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 79
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 79
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 79
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_e8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 79
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_ce
    :try_start_ce
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/AttributionSourceState;

    iput-object v2, p0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_e8

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e2

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    nop

    .line 83
    return-void

    .line 79
    :cond_e2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :catchall_e8
    move-exception v2

    goto :goto_f2

    .line 62
    :cond_ea
    :try_start_ea
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/content/AttributionSourceState;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_e8

    .line 78
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/content/AttributionSourceState;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_f2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_fb

    .line 79
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_fb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 50
    iget-object v1, p0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 53
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void
.end method
