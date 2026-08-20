.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkResponseEapSimUmtsAuthParams"
.end annotation


# instance fields
.field public ck:[B

.field public ik:[B

.field public res:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 744
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    new-array v0, v0, [B

    .line 745
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 800
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 803
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 805
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 804
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 808
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 810
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 811
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 812
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;",
            ">;)V"
        }
    .end annotation

    .line 854
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 856
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 857
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 858
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 859
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 861
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 863
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 866
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

    .line 755
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    if-eq v2, v3, :cond_11

    return v1

    .line 758
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    .line 759
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 762
    :cond_1e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 765
    :cond_29
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 773
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    .line 774
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    .line 775
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    .line 776
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 773
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    .line 822
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v4, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 823
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 827
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v6, :cond_3a

    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    .line 830
    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    .line 831
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3a
    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    .line 836
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    const/16 v5, 0x10

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 841
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 794
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 795
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".res = "

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .ik = "

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .ck = "

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 789
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 872
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    .line 873
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    .line 874
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 875
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1e
    if-ge v7, v0, :cond_35

    mul-int/lit8 v6, v7, 0x1

    int-to-long v8, v6

    .line 877
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_35
    add-long/2addr v3, v1

    .line 879
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 883
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_5e

    .line 885
    array-length v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5e

    .line 889
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    .line 894
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    if-eqz p0, :cond_58

    .line 896
    array-length v0, p0

    if-ne v0, v5, :cond_58

    .line 900
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    return-void

    .line 897
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 886
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 847
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 848
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 849
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
