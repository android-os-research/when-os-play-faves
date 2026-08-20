.class public Lcom/samsung/android/server/wifi/bigdata/BigDataFeature$Factory;
.super Ljava/lang/Object;
.source "BigDataFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/BigDataFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "do not create"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBigDataParser(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    .registers 4

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_126

    goto/16 :goto_b8

    :sswitch_d
    const-string v0, "W24H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_b8

    :cond_17
    const/16 v1, 0xd

    goto/16 :goto_b8

    :sswitch_1b
    const-string v0, "RAPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_b8

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_b8

    :sswitch_29
    const-string v0, "PDC4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_b8

    :cond_33
    const/16 v1, 0xb

    goto/16 :goto_b8

    :sswitch_37
    const-string v0, "PDC2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v1, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v0, "PDC1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v1, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v0, "ONOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v1, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v0, "MHSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v1, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v0, "MHSI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v1, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v0, "MHPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v1, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v0, "MHPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v1, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v0, "MHOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v1, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v0, "MHDC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v1, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v0, "HANG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v1, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v0, "DISC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    packed-switch v1, :pswitch_data_160

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :pswitch_d2
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 75
    :pswitch_d8
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 61
    :pswitch_de
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC4;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 59
    :pswitch_e4
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 57
    :pswitch_ea
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 53
    :pswitch_f0
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemONOF;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemONOF;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 73
    :pswitch_f6
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 63
    :pswitch_fc
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 67
    :pswitch_102
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 65
    :pswitch_108
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 71
    :pswitch_10e
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 69
    :pswitch_114
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 51
    :pswitch_11a
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    .line 49
    :pswitch_120
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    return-object v0

    :sswitch_data_126
    .sparse-switch
        0x200595 -> :sswitch_ae
        0x21b872 -> :sswitch_a3
        0x24175a -> :sswitch_98
        0x2418b2 -> :sswitch_8d
        0x2418de -> :sswitch_82
        0x2418df -> :sswitch_77
        0x241931 -> :sswitch_6c
        0x24193b -> :sswitch_61
        0x2517f6 -> :sswitch_53
        0x256542 -> :sswitch_45
        0x256543 -> :sswitch_37
        0x256545 -> :sswitch_29
        0x26446f -> :sswitch_1b
        0x284e8f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_120
        :pswitch_11a
        :pswitch_114
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_fc
        :pswitch_f6
        :pswitch_f0
        :pswitch_ea
        :pswitch_e4
        :pswitch_de
        :pswitch_d8
        :pswitch_d2
    .end packed-switch
.end method
