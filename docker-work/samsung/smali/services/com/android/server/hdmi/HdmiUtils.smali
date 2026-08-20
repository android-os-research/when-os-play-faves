.class public final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiUtils$CodecSad;,
        Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;,
        Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
    }
.end annotation


# static fields
.field public static final ADDRESS_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAMES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "HdmiUtils"

.field public static final TARGET_NOT_UNDER_LOCAL_DEVICE:I = -0x1

.field public static final TARGET_SAME_PHYSICAL_ADDRESS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 60
    new-instance v0, Lcom/android/server/hdmi/HdmiUtils$1;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    const-string v1, "TV"

    const-string v2, "Recorder_1"

    const-string v3, "Recorder_2"

    const-string v4, "Tuner_1"

    const-string v5, "Playback_1"

    const-string v6, "AudioSystem"

    const-string v7, "Tuner_2"

    const-string v8, "Tuner_3"

    const-string v9, "Playback_2"

    const-string v10, "Recorder_3"

    const-string v11, "Tuner_4"

    const-string v12, "Playback_3"

    const-string v13, "Backup_1"

    const-string v14, "Backup_2"

    const-string v15, "Secondary_TV"

    .line 93
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asImmutableList([I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 257
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildMessage(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 9

    const-string v0, ":"

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 540
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_67

    .line 543
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v1, :cond_31

    aget-object v5, v0, v4

    .line 544
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_1a

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 545
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformatted CEC message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_31
    aget-object p0, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x10

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 550
    aget-object v5, v0, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 551
    aget-object v1, v0, v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 552
    array-length v6, v0

    sub-int/2addr v6, v2

    new-array v2, v6, [B

    :goto_52
    if-ge v3, v6, :cond_62

    add-int/lit8 v7, v3, 0x2

    .line 554
    aget-object v7, v0, v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 556
    :cond_62
    invoke-static {p0, v5, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 541
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message is too short"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .registers 5

    .line 200
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p0

    if-eq p0, p1, :cond_29

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid source [Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Actual:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static dumpIterable(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 455
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 457
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 458
    invoke-virtual {p0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    .line 460
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 434
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 436
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_e

    .line 440
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpSparseArray(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 406
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 408
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_22

    .line 410
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 411
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 415
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public static getAbortFeatureOpcode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    .line 518
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getAbortReason(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    .line 529
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    return p0
.end method

.method public static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    .line 236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 237
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x7f

    if-ltz p0, :cond_f

    const/16 v0, 0x64

    if-ge v0, p0, :cond_10

    :cond_f
    const/4 p0, -0x1

    :cond_10
    return p0
.end method

.method public static getDefaultDeviceName(I)Ljava/lang/String;
    .registers 2

    .line 169
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 170
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public static getEndOfSequence([BI)I
    .registers 5

    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    .line 571
    :cond_4
    :goto_4
    array-length v1, p0

    if-ge p1, v1, :cond_12

    aget-byte v1, p0, p1

    shr-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 574
    :cond_12
    array-length p0, p0

    if-lt p1, p0, :cond_16

    return v0

    :cond_16
    return p1
.end method

.method public static getLocalPortFromPhysicalAddress(II)I
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const v0, 0xf000

    move v2, p1

    move v1, v0

    :goto_9
    if-eqz v2, :cond_11

    and-int v2, p1, v1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0x4

    goto :goto_9

    :cond_11
    and-int/2addr p0, v0

    shl-int/lit8 v0, v0, 0x4

    and-int/2addr v0, p0

    if-eq v0, p1, :cond_19

    const/4 p0, -0x1

    return p0

    :cond_19
    shl-int/lit8 p1, v1, 0x4

    and-int/2addr p0, p1

    :goto_1c
    shr-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_22

    move p0, p1

    goto :goto_1c

    :cond_22
    return p0
.end method

.method public static getTypeFromAddress(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 155
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_13
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static isAffectingActiveRoutingPath(II)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_15

    shr-int v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_12

    const v1, 0xfff0

    shl-int v0, v1, v0

    and-int/2addr p1, v0

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_15
    :goto_15
    if-nez p1, :cond_19

    const/4 p0, 0x1

    return p0

    .line 343
    :cond_19
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result p0

    return p0
.end method

.method public static isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 226
    aget-byte p0, p0, v0

    const/16 v1, 0x80

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public static isEligibleAddressForCecVersion(II)Z
    .registers 5

    .line 137
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const/16 v0, 0xc

    const/4 v2, 0x1

    if-eq p1, v0, :cond_12

    const/16 v0, 0xd

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    return v2

    :cond_12
    :goto_12
    const/4 p1, 0x6

    if-lt p0, p1, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method public static isEligibleAddressForDevice(II)Z
    .registers 3

    .line 132
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static isInActiveRoutingPath(II)Z
    .registers 2

    .line 354
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_10

    const/4 p1, 0x3

    if-eq p0, p1, :cond_10

    const/4 p1, 0x5

    if-ne p0, p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static isValidAddress(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0xe

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 300
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 303
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 304
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 306
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 307
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 309
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3

    .line 215
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    move v0, v1

    :cond_b
    return v0
.end method

.method public static pathRelationship(II)I
    .registers 8
    .annotation build Lcom/android/server/hdmi/Constants$PathRelationship;
    .end annotation

    const/4 v0, 0x0

    const v1, 0xffff

    if-eq p0, v1, :cond_38

    if-ne p1, v1, :cond_9

    goto :goto_38

    :cond_9
    :goto_9
    const/4 v1, 0x3

    if-gt v0, v1, :cond_36

    mul-int/lit8 v2, v0, 0x4

    rsub-int/lit8 v2, v2, 0xc

    shr-int v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    shr-int v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    if-eq v3, v4, :cond_33

    const/4 v5, 0x4

    sub-int/2addr v2, v5

    shr-int/2addr p0, v2

    and-int/lit8 p0, p0, 0xf

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0xf

    if-nez v3, :cond_26

    const/4 p0, 0x2

    return p0

    :cond_26
    if-nez v4, :cond_29

    return v1

    :cond_29
    if-eq v0, v1, :cond_32

    if-nez p0, :cond_30

    if-nez p1, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    return v5

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_36
    const/4 p0, 0x5

    return p0

    :cond_38
    :goto_38
    return v0
.end method

.method public static printWithTrailingColon(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, ":"

    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 293
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 294
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public static threeBytesToInt([B)I
    .registers 3

    const/4 v0, 0x0

    .line 288
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static twoBytesToInt([B)I
    .registers 3

    const/4 v0, 0x0

    .line 267
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static twoBytesToInt([BI)I
    .registers 3

    .line 278
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static verifyAddressType(II)V
    .registers 5

    .line 184
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)Ljava/util/List;

    move-result-object p0

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 186
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device type missmatch:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Actual:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
