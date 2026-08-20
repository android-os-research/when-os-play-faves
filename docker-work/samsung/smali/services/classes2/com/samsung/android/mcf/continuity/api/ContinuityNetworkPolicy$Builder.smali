.class public final Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final SUPPORTED_AVAILABLE_WIFI_INTERFACE_ARRAY:[I

.field public final SUPPORTED_AVAILABLE_WIFI_INTERFACE_FLAG:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final SUPPORTED_CONNECTED_WIFI_INTERFACE_ARRAY:[I

.field public final SUPPORTED_CONNECTED_WIFI_INTERFACE_FLAG:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public mDesiredAvailableWifiInterface:I

.field public mDesiredConnectedWifiInterface:I

.field public mTopology:I

.field public mType:I


# direct methods
.method public static synthetic $r8$lambda$BbrH8aoGJXUFNEKVQuymXVI_CFc(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->lambda$new$1(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rTNXNVwcKwnwU_kIhtzZvHlYmXk(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->lambda$new$0(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/SemPlatformUtil;->isAboveOneUi411()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x4

    aput v2, v0, v1

    goto :goto_13

    :cond_11
    new-array v0, v1, [I

    :goto_13
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_AVAILABLE_WIFI_INTERFACE_ARRAY:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_AVAILABLE_WIFI_INTERFACE_FLAG:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_CONNECTED_WIFI_INTERFACE_ARRAY:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_CONNECTED_WIFI_INTERFACE_FLAG:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    const/16 v2, 0x15

    iput v2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    iput v1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredAvailableWifiInterface:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredConnectedWifiInterface:I

    return-void

    :array_4a
    .array-data 4
        0x1
        0x4
        0x8
    .end array-data
.end method

.method public static synthetic lambda$new$0(II)I
    .registers 2

    or-int/2addr p0, p1

    return p0
.end method

.method public static synthetic lambda$new$1(II)I
    .registers 2

    or-int/2addr p0, p1

    return p0
.end method

.method public static notSuperSet(II)Z
    .registers 2

    or-int/2addr p0, p1

    if-eq p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    iget v2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    iget v3, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredAvailableWifiInterface:I

    iget v4, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredConnectedWifiInterface:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(IIIILcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$1;)V

    return-object v6
.end method

.method public setDesiredWifiInterface(II)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-lez p2, :cond_71

    const/16 v0, 0xf

    if-gt p2, v0, :cond_71

    const-string v1, "not supported availableWifiInterface "

    if-ltz p1, :cond_5c

    if-gt p1, v0, :cond_5c

    if-eq p1, v0, :cond_2c

    iget v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_AVAILABLE_WIFI_INTERFACE_FLAG:I

    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->notSuperSet(II)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2c

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->notSuperSet(II)Z

    move-result v0

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_AVAILABLE_WIFI_INTERFACE_FLAG:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredAvailableWifiInterface:I

    iget p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->SUPPORTED_CONNECTED_WIFI_INTERFACE_FLAG:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mDesiredConnectedWifiInterface:I

    return-object p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectedWifiInterface must include availableWifiInterface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported connectedWifiInterface "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTopology(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x15

    if-lt p1, v0, :cond_b

    const/16 v0, 0x16

    if-gt p1, v0, :cond_b

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid topology"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setType(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xb

    if-lt p1, v0, :cond_b

    const/16 v0, 0xc

    if-gt p1, v0, :cond_b

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
