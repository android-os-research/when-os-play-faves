.class public Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
.super Ljava/lang/Object;
.source "ReachabilityLossInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final message:Ljava/lang/String;

.field public final reason:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .registers 1

    invoke-static {p0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;-><init>()V

    sput-object v0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    .line 49
    iput p2, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .registers 8

    .line 53
    new-instance v0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_60

    .line 57
    :try_start_15
    invoke-virtual {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 58
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_34

    invoke-virtual {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2e

    :goto_25
    add-int/2addr v1, v2

    .line 70
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-virtual {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0

    .line 68
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->setMessage(Ljava/lang/String;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;

    .line 62
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_4f

    invoke-virtual {v0}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->build()Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_49

    goto :goto_25

    .line 68
    :cond_49
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    invoke-virtual {v0, v3}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;->setReason(I)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$Builder;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_5a

    goto :goto_25

    .line 68
    :cond_5a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_60
    :try_start_60
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    :catchall_68
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_6c

    goto :goto_25

    .line 68
    :cond_6c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

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

    .line 85
    :cond_8
    instance-of v2, p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    if-nez v2, :cond_d

    return v1

    .line 86
    :cond_d
    check-cast p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 87
    iget-object v2, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 88
    :cond_1a
    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v1

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    .line 94
    iget-object v1, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

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

    .line 76
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.networkstack.aidl.ip.ReachabilityLossInfoParcelable"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p0, p0, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->reason:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
