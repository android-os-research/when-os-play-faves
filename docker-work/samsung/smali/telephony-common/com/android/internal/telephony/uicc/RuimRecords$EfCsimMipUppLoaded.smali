.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2

    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method blacklist checkLengthLegal(II)Z
    .registers 4

    if-ge p1, p2, :cond_22

    .line 735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CSIM MIPUPP format error, length = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "expected length at least ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimRecords"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_CSIM_MIPUPP"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 13

    .line 746
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 748
    array-length v0, p1

    const-string v1, "RuimRecords"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_10

    const-string p0, "MIPUPP read error"

    .line 749
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 753
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;-><init>([B)V

    const/16 p1, 0x8

    .line 755
    :try_start_17
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    .line 759
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_24

    return-void

    .line 763
    :cond_24
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v4

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v2, :cond_3a

    const/16 v4, 0xb

    .line 767
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v5

    if-nez v5, :cond_35

    return-void

    .line 770
    :cond_35
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v3, v3, -0xb

    :cond_3a
    const/4 v4, 0x4

    .line 775
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v5

    if-nez v5, :cond_42

    return-void

    .line 778
    :cond_42
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v5

    add-int/lit8 v3, v3, -0x4

    const/4 v6, 0x0

    move v7, v6

    :goto_4a
    if-ge v7, v5, :cond_f7

    .line 783
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_53

    return-void

    .line 786
    :cond_53
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x4

    .line 789
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v9

    if-nez v9, :cond_60

    return-void

    .line 792
    :cond_60
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v9

    add-int/lit8 v3, v3, -0x8

    if-nez v8, :cond_ad

    shl-int/lit8 v2, v9, 0x3

    .line 797
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v2

    if-nez v2, :cond_71

    return-void

    .line 800
    :cond_71
    new-array v2, v9, [C

    :goto_73
    if-ge v6, v9, :cond_81

    .line 802
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 804
    :cond_81
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmNai(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 805
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIPUPP Nai = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmNai(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return-void

    :cond_ad
    shl-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v8, 0x66

    .line 811
    invoke-virtual {p0, v3, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v10

    if-nez v10, :cond_b8

    return-void

    :cond_b8
    add-int/lit8 v8, v8, 0x65

    .line 814
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 815
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    sub-int/2addr v3, v9

    const/16 v9, 0x20

    if-ne v8, v2, :cond_d2

    .line 819
    invoke-virtual {p0, v3, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_cd

    return-void

    .line 822
    :cond_cd
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v3, v3, -0x20

    :cond_d2
    const/4 v8, 0x5

    .line 827
    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_da

    return-void

    .line 830
    :cond_da
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v3, v3, -0x4

    .line 832
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v2, :cond_f3

    .line 836
    invoke-virtual {p0, v3, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_ee

    return-void

    .line 839
    :cond_ee
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_f1} :catch_f8

    add-int/lit8 v3, v3, -0x20

    :cond_f3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4a

    :cond_f7
    return-void

    :catch_f8
    const-string p0, "MIPUPP read Exception error!"

    .line 845
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
