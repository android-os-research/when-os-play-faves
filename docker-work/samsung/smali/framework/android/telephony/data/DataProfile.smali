.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataProfile$Builder;,
        Landroid/telephony/data/DataProfile$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_3GPP:I = 0x1

.field public static final whitelist TYPE_3GPP2:I = 0x2

.field public static final whitelist TYPE_COMMON:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private final blacklist mCid:I

.field private blacklist mPreferred:Z

.field private final greylist-max-o mProfileId:I

.field private blacklist mSetupTimestamp:J

.field private final blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 521
    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 123
    const-class v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 124
    const-class v0, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/TrafficDescriptor;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    .line 133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/DataProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;)V
    .registers 8
    .param p1, "builder"    # Landroid/telephony/data/DataProfile$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 91
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 92
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 94
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 95
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_4f

    .line 96
    :cond_23
    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 97
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    .line 99
    .local v0, "networkTypes":I
    if-nez v0, :cond_2f

    .line 100
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_4c

    .line 101
    :cond_2f
    int-to-long v2, v0

    const-wide/16 v4, 0x2878

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    .line 103
    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_4c

    .line 104
    :cond_3c
    int-to-long v2, v0

    const-wide/32 v4, 0xdd387

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4a

    .line 106
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_4c

    .line 108
    :cond_4a
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 110
    .end local v0    # "networkTypes":I
    :goto_4c
    goto :goto_4f

    .line 111
    :cond_4d
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 114
    :goto_4f
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmCid(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    .line 117
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmProfileId(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;)V

    return-void
.end method

.method private static blacklist networkCapabilityToApnType(I)I
    .registers 2
    .param p0, "networkCapability"    # I

    .line 438
    sparse-switch p0, :sswitch_data_2e

    .line 468
    const/4 v0, 0x0

    return v0

    .line 462
    :sswitch_5
    const/16 v0, 0x2000

    return v0

    .line 464
    :sswitch_8
    const/16 v0, 0x1000

    return v0

    .line 466
    :sswitch_b
    const/16 v0, 0x4000

    return v0

    .line 458
    :sswitch_e
    const/16 v0, 0x400

    return v0

    .line 456
    :sswitch_11
    const/16 v0, 0x11

    return v0

    .line 454
    :sswitch_14
    const/16 v0, 0x200

    return v0

    .line 452
    :sswitch_17
    const/16 v0, 0x800

    return v0

    .line 460
    :sswitch_1a
    const/16 v0, 0x100

    return v0

    .line 450
    :sswitch_1d
    const/16 v0, 0x80

    return v0

    .line 448
    :sswitch_20
    const/16 v0, 0x40

    return v0

    .line 446
    :sswitch_23
    const/16 v0, 0x20

    return v0

    .line 444
    :sswitch_26
    const/16 v0, 0x8

    return v0

    .line 442
    :sswitch_29
    const/4 v0, 0x4

    return v0

    .line 440
    :sswitch_2b
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_2b
        0x1 -> :sswitch_29
        0x2 -> :sswitch_26
        0x3 -> :sswitch_23
        0x4 -> :sswitch_20
        0x5 -> :sswitch_1d
        0x7 -> :sswitch_1a
        0x9 -> :sswitch_17
        0xa -> :sswitch_14
        0xc -> :sswitch_11
        0x17 -> :sswitch_e
        0x1d -> :sswitch_b
        0x1e -> :sswitch_8
        0x1f -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canSatisfy(I)Z
    .registers 4
    .param p1, "networkCapability"    # I

    .line 426
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_10

    .line 427
    invoke-static {p1}, Landroid/telephony/data/DataProfile;->networkCapabilityToApnType(I)I

    move-result v1

    .line 426
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist canSatisfy([I)Z
    .registers 7
    .param p1, "networkCapabilities"    # [I

    .line 406
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 407
    array-length v0, p1

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_15

    aget v3, p1, v2

    .line 408
    .local v3, "netCap":I
    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 409
    return v1

    .line 407
    .end local v3    # "netCap":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 412
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_17
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 536
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 537
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 538
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 539
    .local v2, "that":Landroid/telephony/data/DataProfile;
    iget v3, p0, Landroid/telephony/data/DataProfile;->mType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mType:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 540
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 541
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/telephony/data/DataProfile;->mCid:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mCid:I

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 539
    :goto_37
    return v0

    .line 537
    .end local v2    # "that":Landroid/telephony/data/DataProfile;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist getApn()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_d

    .line 160
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public whitelist getAuthType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v0

    return v0

    .line 186
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBearerBitmask()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    return v0

    .line 302
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCid()I
    .registers 2

    .line 376
    iget v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    return v0
.end method

.method public blacklist getLastSetupTimestamp()J
    .registers 3

    .line 487
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    return-wide v0
.end method

.method public blacklist getMaxConnections()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 239
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v0

    return v0

    .line 241
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxConnectionsTime()I
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 227
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v0

    return v0

    .line 229
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtu()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v0

    return v0
.end method

.method public whitelist getMtuV4()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    return v0

    .line 325
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtuV6()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 335
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    return v0

    .line 337
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    if-ltz v0, :cond_5

    .line 143
    return v0

    .line 146
    :cond_5
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_e

    .line 147
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    return v0

    .line 149
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtocolType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    return v0

    .line 174
    :cond_9
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getRoamingProtocolType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 287
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    return v0

    .line 289
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportedApnTypesBitmask()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 275
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    return v0

    .line 277
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 196
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWaitTime()I
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v0

    return v0

    .line 255
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 549
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mCid:I

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 549
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 264
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v0

    return v0

    .line 266
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPersistent()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_9

    .line 347
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v0

    return v0

    .line 349
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferred()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return v0
.end method

.method public blacklist setLastSetupTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 478
    iput-wide p1, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 479
    return-void
.end method

.method public blacklist setPreferred(Z)V
    .registers 2
    .param p1, "preferred"    # Z

    .line 359
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 360
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 508
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 510
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 511
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    iget v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    return-void
.end method
