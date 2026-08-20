.class public final Landroid/telephony/BarringInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo;,
        Landroid/telephony/BarringInfo$BarringServiceType;
    }
.end annotation


# static fields
.field private static final blacklist BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field private static final blacklist BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

.field public static final whitelist BARRING_SERVICE_TYPE_CS_FALLBACK:I = 0x5

.field public static final whitelist BARRING_SERVICE_TYPE_CS_SERVICE:I = 0x0

.field public static final whitelist BARRING_SERVICE_TYPE_CS_VOICE:I = 0x2

.field public static final whitelist BARRING_SERVICE_TYPE_EMERGENCY:I = 0x8

.field public static final whitelist BARRING_SERVICE_TYPE_MMTEL_VIDEO:I = 0x7

.field public static final whitelist BARRING_SERVICE_TYPE_MMTEL_VOICE:I = 0x6

.field public static final whitelist BARRING_SERVICE_TYPE_MO_DATA:I = 0x4

.field public static final whitelist BARRING_SERVICE_TYPE_MO_SIGNALLING:I = 0x3

.field public static final whitelist BARRING_SERVICE_TYPE_PS_SERVICE:I = 0x1

.field public static final whitelist BARRING_SERVICE_TYPE_SMS:I = 0x9

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBarringServiceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 250
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 253
    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(I)V

    sput-object v0, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 316
    new-instance v0, Landroid/telephony/BarringInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 266
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 307
    const-class v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 308
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "barringCellId"    # Landroid/telephony/CellIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellIdentity;",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p2, "barringServiceInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/BarringInfo$BarringServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 277
    iput-object p2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 278
    return-void
.end method


# virtual methods
.method public whitelist createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v0, :cond_5

    return-object p0

    .line 301
    :cond_5
    new-instance v0, Landroid/telephony/BarringInfo;

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 346
    instance-of v0, p1, Landroid/telephony/BarringInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 348
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/BarringInfo;

    .line 350
    .local v0, "bi":Landroid/telephony/BarringInfo;
    invoke-virtual {p0}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/BarringInfo;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_14

    return v1

    .line 352
    :cond_14
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_23

    return v1

    .line 354
    :cond_23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 355
    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_3b

    return v1

    .line 356
    :cond_3b
    iget-object v3, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    .line 357
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 356
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 358
    return v1

    .line 354
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 361
    .end local v2    # "i":I
    :cond_51
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;
    .registers 4
    .param p1, "service"    # I

    .line 286
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 291
    .local v0, "bsi":Landroid/telephony/BarringInfo$BarringServiceInfo;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_19

    :cond_c
    iget-object v1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 292
    sget-object v1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNBARRED:Landroid/telephony/BarringInfo$BarringServiceInfo;

    goto :goto_19

    :cond_17
    sget-object v1, Landroid/telephony/BarringInfo;->BARRING_SERVICE_INFO_UNKNOWN:Landroid/telephony/BarringInfo$BarringServiceInfo;

    .line 291
    :goto_19
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 336
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x7

    .line 337
    .local v0, "hash":I
    :goto_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 338
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    .line 339
    iget-object v2, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo$BarringServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 341
    .end local v1    # "i":I
    :cond_2e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarringInfo {mCellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBarringServiceInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 312
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/telephony/BarringInfo;->mBarringServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 314
    return-void
.end method
