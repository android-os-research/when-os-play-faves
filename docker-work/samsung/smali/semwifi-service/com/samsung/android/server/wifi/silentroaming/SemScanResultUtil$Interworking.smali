.class public Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;
.super Ljava/lang/Object;
.source "SemScanResultUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field public static final MAXIMUM_INTEGER_SIZE:I = 0x8

.field public static final MINIMUM_INTEGER_SIZE:I = 0x1


# instance fields
.field public ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

.field public hessid:J

.field public internet:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->internet:Z

    const-wide/16 v0, 0x0

    .line 536
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->hessid:J

    return-void
.end method

.method public static readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .registers 10

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2e

    const/16 v1, 0x8

    if-gt p2, v1, :cond_2e

    .line 574
    new-array v2, p2, [B

    .line 575
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    .line 579
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, p0, :cond_20

    sub-int/2addr p2, v0

    :goto_13
    if-ltz p2, :cond_2d

    shl-long p0, v3, v1

    .line 581
    aget-byte v0, v2, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long/2addr v3, p0

    add-int/lit8 p2, p2, -0x1

    goto :goto_13

    :cond_20
    const/4 p0, 0x0

    :goto_21
    if-ge p0, p2, :cond_2d

    .line 584
    aget-byte p1, v2, p0

    shl-long/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v5, p1

    or-long/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_2d
    return-wide v3

    .line 570
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 8

    .line 539
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_83

    .line 542
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 544
    invoke-static {}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;->values()[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 545
    :goto_2a
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->internet:Z

    .line 551
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v5, 0x9

    if-eq v1, v2, :cond_5f

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-eq v1, v4, :cond_5f

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-eq v1, v3, :cond_5f

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-ne v1, v5, :cond_45

    goto :goto_5f

    .line 555
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad Interworking element length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :cond_5f
    :goto_5f
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-eq v1, v4, :cond_69

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-ne v1, v5, :cond_6f

    .line 560
    :cond_69
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    .line 563
    :cond_6f
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    if-eq v1, v3, :cond_79

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length p1, p1

    if-ne p1, v5, :cond_82

    .line 564
    :cond_79
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->hessid:J

    :cond_82
    return-void

    .line 540
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element id is not INTERWORKING, : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
