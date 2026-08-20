.class public Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;
.super Ljava/lang/Object;
.source "SemScanResultUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;
    }
.end annotation


# static fields
.field private static final ANQP_DOMAIN_ID_PRESENT_BIT:I = 0x4

.field private static final ANQP_PPS_MO_ID_BIT:I = 0x2

.field public static final BYTE_MASK:I = 0xff

.field public static final MBO_AP_CAP_IND_ATTR_CELL_DATA_AWARE:I = 0x40

.field public static final MBO_OCE_AID_ASSOCIATION_DISALLOWED:I = 0x4

.field public static final MBO_OCE_AID_MBO_AP_CAPABILITY_INDICATION:I = 0x1

.field public static final MBO_OCE_AID_OCE_AP_CAPABILITY_INDICATION:I = 0x65

.field public static final MBO_OCE_ATTRIBUTE_NOT_PRESENT:I = -0x1

.field public static final NIBBLE_MASK:I = 0xf

.field private static final OUI_TYPE_HS20:I = 0x10

.field private static final OUI_TYPE_MBO_OCE:I = 0x16

.field private static final OUI_WFA_ALLIANCE:I = 0x506f9a

.field public static final SHORT_MASK:I = 0xffff


# instance fields
.field public IsMboApCellularDataAware:Z

.field public IsMboCapable:Z

.field public IsOceCapable:Z

.field public anqpDomainID:I

.field public hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public mboAssociationDisallowedReasonCode:I

.field public oui:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->anqpDomainID:I

    .line 622
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    .line 623
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    .line 624
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    const/4 v0, -0x1

    .line 625
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    return-void
.end method

.method private parseVsaHs20(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 7

    .line 668
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 669
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_96

    .line 672
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 674
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-eqz v2, :cond_3d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_38

    if-eq v2, v3, :cond_33

    .line 686
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->Unknown:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const-string v2, "SemScanResultUtil"

    const-string v4, "parseVsaHs20, hsRelease is Unknown"

    .line 691
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 683
    :cond_33
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R3:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    goto :goto_41

    .line 680
    :cond_38
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R2:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    goto :goto_41

    .line 677
    :cond_3d
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R1:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->hsRelease:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    :goto_41
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_96

    const/4 v2, 0x7

    and-int/2addr v1, v3

    const-string v3, "HS20 indication element too short: "

    if-eqz v1, :cond_6e

    const/16 v2, 0x9

    .line 701
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-lt v1, v2, :cond_56

    .line 705
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    goto :goto_6e

    .line 702
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 707
    :cond_6e
    :goto_6e
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-lt v1, v2, :cond_7e

    .line 711
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->anqpDomainID:I

    goto :goto_96

    .line 708
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    :goto_96
    return-void
.end method

.method private parseVsaMboOce(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 7

    .line 629
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 635
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_53

    .line 636
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 637
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_52

    .line 639
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_2b

    goto :goto_52

    .line 642
    :cond_2b
    new-array v2, v2, [B

    .line 643
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_45

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3e

    const/16 v2, 0x65

    if-eq v0, v2, :cond_3b

    goto :goto_f

    .line 654
    :cond_3b
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    goto :goto_f

    .line 651
    :cond_3e
    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    goto :goto_f

    .line 646
    :cond_45
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    .line 647
    aget-byte v0, v2, v3

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v3

    :goto_4f
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    goto :goto_f

    :cond_52
    :goto_52
    return-void

    .line 660
    :cond_53
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":parseMboOce MBO: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " cellDataAware: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsMboApCellularDataAware:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " AssocDisAllowRC: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->mboAssociationDisallowedReasonCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " :OCE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->IsOceCapable:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemScanResultUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 7

    .line 723
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_26

    .line 724
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 725
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid vendor specific element len: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemScanResultUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    .line 730
    :cond_26
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->oui:[B

    .line 731
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x10

    shl-int/2addr v0, v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    const v3, 0x506f9a

    if-ne v0, v3, :cond_67

    .line 735
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_67

    .line 736
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_64

    const/16 v1, 0x16

    if-eq v0, v1, :cond_60

    goto :goto_67

    .line 742
    :cond_60
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->parseVsaMboOce(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_67

    .line 739
    :cond_64
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;->parseVsaHs20(Landroid/net/wifi/ScanResult$InformationElement;)V

    :cond_67
    :goto_67
    return-void
.end method
