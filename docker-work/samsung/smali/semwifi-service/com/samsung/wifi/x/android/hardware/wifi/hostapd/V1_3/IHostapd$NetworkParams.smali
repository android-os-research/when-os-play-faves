.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkParams"
.end annotation


# instance fields
.field public V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

.field public isMetered:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;",
            ">;"
        }
    .end annotation

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 629
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 632
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 634
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 633
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 637
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 639
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 640
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 641
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;",
            ">;)V"
        }
    .end annotation

    .line 662
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 665
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 666
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 667
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 669
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 671
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 674
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 590
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 593
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;

    .line 594
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 597
    :cond_1e
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    if-eq p0, p1, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    .line 606
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    .line 607
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 605
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 650
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x40

    add-long/2addr p3, v0

    .line 651
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 623
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 624
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_2 = "

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .isMetered = "

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 618
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 679
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->V1_2:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x40

    add-long/2addr p2, v0

    .line 680
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->isMetered:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 655
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 656
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 657
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
