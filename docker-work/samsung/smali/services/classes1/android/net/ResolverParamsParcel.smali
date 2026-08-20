.class public Landroid/net/ResolverParamsParcel;
.super Ljava/lang/Object;
.source "ResolverParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ResolverParamsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseTimeoutMsec:I

.field public caCertificate:Ljava/lang/String;

.field public domains:[Ljava/lang/String;

.field public maxSamples:I

.field public minSamples:I

.field public netId:I

.field public resolverOptions:Landroid/net/ResolverOptionsParcel;

.field public retryCount:I

.field public sampleValiditySeconds:I

.field public servers:[Ljava/lang/String;

.field public successThreshold:I

.field public tlsConnectTimeoutMs:I

.field public tlsFingerprints:[Ljava/lang/String;

.field public tlsName:Ljava/lang/String;

.field public tlsServers:[Ljava/lang/String;

.field public transportTypes:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/net/ResolverParamsParcel$1;

    invoke-direct {v0}, Landroid/net/ResolverParamsParcel$1;-><init>()V

    sput-object v0, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 9
    iput v0, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 10
    iput v0, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 11
    iput v0, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 12
    iput v0, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 13
    iput v0, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 14
    iput v0, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    new-array v1, v0, [Ljava/lang/String;

    .line 19
    iput-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    const-string v1, ""

    .line 20
    iput-object v1, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    .line 21
    iput v0, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    new-array v0, v0, [I

    .line 23
    iput-object v0, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 114
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 115
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    invoke-direct {p0, v0}, Landroid/net/ResolverParamsParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1a2

    .line 67
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 101
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 101
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 101
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 101
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 101
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 101
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 101
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 101
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 101
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    goto/16 :goto_1a

    .line 101
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    goto/16 :goto_1a

    .line 101
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11a
    .catchall {:try_start_110 .. :try_end_11a} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_128

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    goto/16 :goto_1a

    .line 101
    :cond_122
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_128
    :try_start_128
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_140

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    goto/16 :goto_1a

    .line 101
    :cond_13a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_140
    :try_start_140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_158

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_152

    goto/16 :goto_1a

    .line 101
    :cond_152
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_158
    :try_start_158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_170

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16a

    goto/16 :goto_1a

    .line 101
    :cond_16a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_170
    :try_start_170
    sget-object v2, Landroid/net/ResolverOptionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ResolverOptionsParcel;

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17e
    .catchall {:try_start_170 .. :try_end_17e} :catchall_1a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_18c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_186

    goto/16 :goto_1a

    .line 101
    :cond_186
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_18c
    :try_start_18c
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I
    :try_end_192
    .catchall {:try_start_18c .. :try_end_192} :catchall_1a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_19a

    add-int/2addr v0, v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 101
    :cond_19a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a0
    move-exception p0

    goto :goto_1aa

    .line 66
    :cond_1a2
    :try_start_1a2
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1aa
    .catchall {:try_start_1a2 .. :try_end_1aa} :catchall_1a0

    :goto_1aa
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1b3

    .line 101
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b3
    add-int/2addr v0, v1

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/net/ResolverParamsParcel;->netId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/net/ResolverParamsParcel;->retryCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->caCertificate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v1, p0, Landroid/net/ResolverParamsParcel;->tlsConnectTimeoutMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v1, p0, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 55
    iget-object p0, p0, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
