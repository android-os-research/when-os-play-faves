.class public Landroid/net/NativeNetworkConfig;
.super Ljava/lang/Object;
.source "NativeNetworkConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NativeNetworkConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NativeNetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final excludeLocalRoutes:Z

.field public final netId:I

.field public final networkType:I

.field public final permission:I

.field public final secure:Z

.field public final vpnType:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/NativeNetworkConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/net/NativeNetworkConfig$1;

    invoke-direct {v0}, Landroid/net/NativeNetworkConfig$1;-><init>()V

    sput-object v0, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZIZ)V
    .registers 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    .line 78
    iput p2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    .line 79
    iput p3, p0, Landroid/net/NativeNetworkConfig;->permission:I

    .line 80
    iput-boolean p4, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    .line 81
    iput p5, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    .line 82
    iput-boolean p6, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/NativeNetworkConfig;
    .registers 8

    .line 86
    new-instance v0, Landroid/net/NativeNetworkConfig$Builder;

    invoke-direct {v0}, Landroid/net/NativeNetworkConfig$Builder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 88
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_ce

    .line 90
    :try_start_15
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_34

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2e

    :goto_25
    add-int/2addr v1, v2

    .line 119
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;

    move-result-object p0

    return-object p0

    .line 117
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setNetId(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_4f

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_49

    goto :goto_25

    .line 117
    :cond_49
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_6a

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_64

    goto :goto_25

    .line 117
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setPermission(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_85

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_7f

    goto :goto_25

    .line 117
    :cond_7f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_85
    :try_start_85
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;

    .line 107
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_a0

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_96
    .catchall {:try_start_85 .. :try_end_96} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_9a

    goto :goto_25

    .line 117
    :cond_9a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_a0
    :try_start_a0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_bc

    invoke-virtual {v0}, Landroid/net/NativeNetworkConfig$Builder;->build()Landroid/net/NativeNetworkConfig;
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_b6

    goto/16 :goto_25

    .line 117
    :cond_b6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_bc
    :try_start_bc
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/net/NativeNetworkConfig$Builder;->setExcludeLocalRoutes(Z)Landroid/net/NativeNetworkConfig$Builder;
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_d6

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_c8

    goto/16 :goto_25

    .line 117
    :cond_c8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_ce
    :try_start_ce
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d6

    :catchall_d6
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_db

    goto/16 :goto_25

    .line 117
    :cond_db
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

    .line 138
    :cond_8
    instance-of v2, p1, Landroid/net/NativeNetworkConfig;

    if-nez v2, :cond_d

    return v1

    .line 139
    :cond_d
    check-cast p1, Landroid/net/NativeNetworkConfig;

    .line 140
    iget v2, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 141
    :cond_22
    iget v2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    return v1

    .line 142
    :cond_35
    iget v2, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    return v1

    .line 143
    :cond_48
    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    return v1

    .line 144
    :cond_5b
    iget v2, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    return v1

    .line 145
    :cond_6e
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    return v1

    :cond_81
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/Serializable;

    .line 151
    iget v1, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

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

    .line 125
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vpnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excludeLocalRoutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.NativeNetworkConfig"

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

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/net/NativeNetworkConfig;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroid/net/NativeNetworkConfig;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/net/NativeNetworkConfig;->permission:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Landroid/net/NativeNetworkConfig;->secure:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget v0, p0, Landroid/net/NativeNetworkConfig;->vpnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean p0, p0, Landroid/net/NativeNetworkConfig;->excludeLocalRoutes:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
