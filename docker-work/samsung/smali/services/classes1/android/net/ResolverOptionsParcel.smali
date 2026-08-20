.class public Landroid/net/ResolverOptionsParcel;
.super Ljava/lang/Object;
.source "ResolverOptionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ResolverOptionsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enforceDnsUid:Z

.field public hosts:[Landroid/net/ResolverHostsParcel;

.field public tcMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/net/ResolverOptionsParcel$1;

    invoke-direct {v0}, Landroid/net/ResolverOptionsParcel$1;-><init>()V

    sput-object v0, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/ResolverHostsParcel;

    .line 8
    iput-object v1, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 9
    iput v0, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    .line 10
    iput-boolean v0, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 62
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 64
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 65
    invoke-direct {p0, v3}, Landroid/net/ResolverOptionsParcel;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 69
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 70
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    invoke-direct {p0, v0}, Landroid/net/ResolverOptionsParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_6d

    .line 41
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_6b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 49
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_25
    :try_start_25
    sget-object v2, Landroid/net/ResolverHostsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/ResolverHostsParcel;

    iput-object v2, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_6b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 49
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_6b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 49
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_6b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_65

    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 49
    :cond_65
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6b
    move-exception p0

    goto :goto_75

    .line 40
    :cond_6d
    :try_start_6d
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_6b

    :goto_75
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_7e

    .line 49
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object v1, p0, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 28
    iget p2, p0, Landroid/net/ResolverOptionsParcel;->tcMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-boolean p0, p0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
