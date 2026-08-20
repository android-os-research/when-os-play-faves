.class public Lcom/android/server/vcn/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;,
        Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;,
        Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;,
        Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;
    }
.end annotation


# static fields
.field public static final BYTE_ARRAY_KEY:Ljava/lang/String; = "BYTE_ARRAY_KEY"

.field public static final COLLECTION_SIZE_KEY:Ljava/lang/String; = "COLLECTION_LENGTH"

.field public static final INTEGER_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTEGER_KEY:Ljava/lang/String; = "INTEGER_KEY"

.field public static final INTEGER_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_KEY_FORMAT:Ljava/lang/String; = "LIST_ITEM_%d"

.field public static final MAP_KEY_FORMAT:Ljava/lang/String; = "MAP_KEY_%d"

.field public static final MAP_VALUE_FORMAT:Ljava/lang/String; = "MAP_VALUE_%d"

.field public static final PARCEL_UUID_KEY:Ljava/lang/String; = "PARCEL_UUID"

.field public static final STRING_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_KEY:Ljava/lang/String; = "STRING_KEY"

.field public static final STRING_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$40RB7VP5ENTb3DYPqSyg7rykHXM(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4QphMxyrUiifNTLRcefek75g5iA(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sluwcm3D3WjLfriI8wkIaZELlkc(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uGu9W9AJLY_ZgnBy7_B3heKgE_g(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->lambda$static$3(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;

    .line 93
    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;

    .line 100
    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;

    .line 108
    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Landroid/os/PersistableBundle;
    .registers 3

    .line 201
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 203
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "BYTE_ARRAY_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromDiskStableBytes([B)Landroid/os/PersistableBundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 321
    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static fromList(Ljava/util/List;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TT;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "COLLECTION_LENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    move v2, v1

    .line 158
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "LIST_ITEM_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_33
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TK;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TV;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 244
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 246
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "COLLECTION_LENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 248
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "MAP_KEY_%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "MAP_VALUE_%d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 253
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 252
    invoke-virtual {v0, v6, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/2addr v2, v4

    goto :goto_18

    :cond_59
    return-object v0
.end method

.method public static fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;
    .registers 3

    .line 124
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 126
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PARCEL_UUID"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHashCode(Landroid/os/PersistableBundle;)I
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 445
    :cond_4
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 446
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 448
    instance-of v5, v4, Landroid/os/PersistableBundle;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v5, :cond_45

    new-array v5, v8, [Ljava/lang/Object;

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object v3, v5, v7

    check-cast v4, Landroid/os/PersistableBundle;

    invoke-static {v4}, Lcom/android/server/vcn/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    goto :goto_13

    :cond_45
    new-array v5, v8, [Ljava/lang/Object;

    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object v3, v5, v7

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    goto :goto_13

    :cond_56
    return v2
.end method

.method public static isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 9

    .line 463
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 468
    :cond_8
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    return v3

    .line 472
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v3

    .line 476
    :cond_23
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 478
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 481
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_2b

    .line 483
    :cond_46
    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_51

    return v3

    .line 486
    :cond_51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    return v3

    .line 490
    :cond_60
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_6f

    .line 491
    check-cast v4, Landroid/os/PersistableBundle;

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-static {v4, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 494
    :cond_6f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 495
    instance-of v5, v4, [Z

    if-eqz v5, :cond_88

    .line 496
    check-cast v4, [Z

    check-cast v2, [Z

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 499
    :cond_88
    instance-of v5, v4, [D

    if-eqz v5, :cond_97

    .line 500
    check-cast v4, [D

    check-cast v2, [D

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 503
    :cond_97
    instance-of v5, v4, [I

    if-eqz v5, :cond_a6

    .line 504
    check-cast v4, [I

    check-cast v2, [I

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 507
    :cond_a6
    instance-of v5, v4, [J

    if-eqz v5, :cond_b5

    .line 508
    check-cast v4, [J

    check-cast v2, [J

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 511
    :cond_b5
    check-cast v4, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    .line 515
    :cond_c0
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v3

    :cond_c7
    return v1
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .registers 3

    .line 87
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "INTEGER_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static synthetic lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 2

    const-string v0, "PersistableBundle is null"

    .line 95
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "INTEGER_KEY"

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3

    .line 102
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "STRING_KEY"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$static$3(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "PersistableBundle is null"

    .line 110
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "STRING_KEY"

    .line 111
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 8

    .line 394
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 400
    :cond_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_9f

    aget-object v3, p1, v2

    .line 401
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 402
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1c

    goto/16 :goto_9b

    .line 407
    :cond_1c
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2b

    .line 408
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_9b

    .line 409
    :cond_2b
    instance-of v5, v4, [Z

    if-eqz v5, :cond_36

    .line 410
    check-cast v4, [Z

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_9b

    .line 411
    :cond_36
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_44

    .line 412
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9b

    .line 413
    :cond_44
    instance-of v5, v4, [D

    if-eqz v5, :cond_4e

    .line 414
    check-cast v4, [D

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_9b

    .line 415
    :cond_4e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5c

    .line 416
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9b

    .line 417
    :cond_5c
    instance-of v5, v4, [I

    if-eqz v5, :cond_66

    .line 418
    check-cast v4, [I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_9b

    .line 419
    :cond_66
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_74

    .line 420
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9b

    .line 421
    :cond_74
    instance-of v5, v4, [J

    if-eqz v5, :cond_7e

    .line 422
    check-cast v4, [J

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_9b

    .line 423
    :cond_7e
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_88

    .line 424
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    .line 425
    :cond_88
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_92

    .line 426
    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9b

    .line 427
    :cond_92
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_9b

    .line 428
    check-cast v4, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_9f
    return-object v0
.end method

.method public static toByteArray(Landroid/os/PersistableBundle;)[B
    .registers 2

    const-string v0, "PersistableBundle is null"

    .line 215
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BYTE_ARRAY_KEY"

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    .line 222
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 219
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PersistableBundle contains invalid byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toDiskStableBytes(Landroid/os/PersistableBundle;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    .line 176
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_2c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "LIST_ITEM_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 183
    invoke-interface {p1, v4}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2c
    return-object v1
.end method

.method public static toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TK;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    .line 284
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_42

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "MAP_KEY_%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "MAP_VALUE_%d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 291
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 293
    invoke-interface {p1, v5}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v5

    .line 294
    invoke-interface {p2, v4}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v4

    .line 295
    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_42
    return-object v1
.end method

.method public static toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;
    .registers 2

    const-string v0, "PARCEL_UUID"

    .line 138
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method
