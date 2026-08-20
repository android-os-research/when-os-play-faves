.class public Landroid/net/netd/aidl/NativeUidRangeConfig;
.super Ljava/lang/Object;
.source "NativeUidRangeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/netd/aidl/NativeUidRangeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final subPriority:I

.field public final uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$1;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$1;-><init>()V

    sput-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/net/UidRangeParcel;I)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    .line 57
    iput-object p2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 58
    iput p3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 119
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 121
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 122
    invoke-direct {p0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 126
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 127
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .registers 8

    .line 62
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_7f

    .line 66
    :try_start_15
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_34

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_87

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2e

    :goto_25
    add-int/2addr v1, v2

    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object p0

    return-object p0

    .line 81
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_4f

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_87

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_49

    goto :goto_25

    .line 81
    :cond_49
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_4f
    :try_start_4f
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 74
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_6e

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_87

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_68

    goto :goto_25

    .line 81
    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_6e
    :try_start_6e
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    invoke-virtual {v0, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_87

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_79

    goto :goto_25

    .line 81
    :cond_79
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_7f
    :try_start_7f
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_87

    :catchall_87
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_8b

    goto :goto_25

    .line 81
    :cond_8b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-direct {p0, v0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 99
    :cond_8
    instance-of v2, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    if-nez v2, :cond_d

    return v1

    .line 100
    :cond_d
    check-cast p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 101
    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 102
    :cond_22
    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    iget-object v3, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 103
    :cond_2d
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    return v1

    :cond_40
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/Serializable;

    .line 109
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 89
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.netd.aidl.NativeUidRangeConfig"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 48
    iget p0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
