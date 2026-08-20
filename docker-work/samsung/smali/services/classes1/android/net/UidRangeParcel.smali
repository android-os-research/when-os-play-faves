.class public Landroid/net/UidRangeParcel;
.super Ljava/lang/Object;
.source "UidRangeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UidRangeParcel$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UidRangeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .registers 1

    invoke-static {p0}, Landroid/net/UidRangeParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/net/UidRangeParcel$1;

    invoke-direct {v0}, Landroid/net/UidRangeParcel$1;-><init>()V

    sput-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/net/UidRangeParcel;->start:I

    .line 54
    iput p2, p0, Landroid/net/UidRangeParcel;->stop:I

    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/UidRangeParcel;
    .registers 8

    .line 58
    new-instance v0, Landroid/net/UidRangeParcel$Builder;

    invoke-direct {v0}, Landroid/net/UidRangeParcel$Builder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_60

    .line 62
    :try_start_15
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_34

    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2e

    :goto_25
    add-int/2addr v1, v2

    .line 75
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    invoke-virtual {v0, v3}, Landroid/net/UidRangeParcel$Builder;->setStart(I)Landroid/net/UidRangeParcel$Builder;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_4f

    invoke-virtual {v0}, Landroid/net/UidRangeParcel$Builder;->build()Landroid/net/UidRangeParcel;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_49

    goto :goto_25

    .line 73
    :cond_49
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    invoke-virtual {v0, v3}, Landroid/net/UidRangeParcel$Builder;->setStop(I)Landroid/net/UidRangeParcel$Builder;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_68

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_5a

    goto :goto_25

    .line 73
    :cond_5a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
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

    .line 73
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

    .line 90
    :cond_8
    instance-of v2, p1, Landroid/net/UidRangeParcel;

    if-nez v2, :cond_d

    return v1

    .line 91
    :cond_d
    check-cast p1, Landroid/net/UidRangeParcel;

    .line 92
    iget v2, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 93
    :cond_22
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    return v1

    :cond_35
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 99
    iget v1, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

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

    .line 81
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.UidRangeParcel"

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

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p0, p0, Landroid/net/UidRangeParcel;->stop:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
