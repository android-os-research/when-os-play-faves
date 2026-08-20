.class public Landroid/net/networkstack/aidl/NetworkMonitorParameters;
.super Ljava/lang/Object;
.source "NetworkMonitorParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/networkstack/aidl/NetworkMonitorParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public linkProperties:Landroid/net/LinkProperties;

.field public networkAgentConfig:Landroid/net/NetworkAgentConfig;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;

    invoke-direct {v0}, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;-><init>()V

    sput-object v0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 87
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 88
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-direct {p0, v0}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 81
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

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

    .line 65
    :cond_8
    instance-of v2, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    if-nez v2, :cond_d

    return v1

    .line 66
    :cond_d
    check-cast p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 67
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 68
    :cond_1a
    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 69
    :cond_25
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    iget-object p1, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 75
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

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

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_75

    .line 40
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_73

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 48
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_25
    :try_start_25
    sget-object v2, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkAgentConfig;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_73

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 48
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_40
    :try_start_40
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_73

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    goto :goto_1a

    .line 48
    :cond_55
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_5b
    :try_start_5b
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    iput-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_73

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6d

    add-int/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 48
    :cond_6d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_73
    move-exception p0

    goto :goto_7d

    .line 39
    :cond_75
    :try_start_75
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_73

    :goto_7d
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_86

    .line 48
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    add-int/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 55
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkAgentConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkProperties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.networkstack.aidl.NetworkMonitorParameters"

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

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 27
    iget-object v1, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    iget-object p0, p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
