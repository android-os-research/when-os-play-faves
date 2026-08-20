.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;
.super Ljava/lang/Object;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSarManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V
    .registers 2

    .line 1766
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;
    .registers 5

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSarManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_d6

    goto/16 :goto_88

    :sswitch_23
    const-string v0, "Gta4XLSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_88

    :cond_2d
    const/16 v1, 0x8

    goto/16 :goto_88

    :sswitch_31
    const-string v0, "TripleBodySarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_88

    :cond_3a
    const/4 v1, 0x7

    goto :goto_88

    :sswitch_3c
    const-string v0, "JdmProximityHeadSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_88

    :cond_45
    const/4 v1, 0x6

    goto :goto_88

    :sswitch_47
    const-string v0, "DoubleBodySarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_88

    :cond_50
    const/4 v1, 0x5

    goto :goto_88

    :sswitch_52
    const-string v0, "ProximityHeadSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_88

    :cond_5b
    const/4 v1, 0x4

    goto :goto_88

    :sswitch_5d
    const-string v0, "JdmReceiverHeadSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_88

    :cond_66
    const/4 v1, 0x3

    goto :goto_88

    :sswitch_68
    const-string v0, "JdmTripleBodySarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_88

    :cond_71
    const/4 v1, 0x2

    goto :goto_88

    :sswitch_73
    const-string v0, "A03sSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_88

    :cond_7c
    const/4 v1, 0x1

    goto :goto_88

    :sswitch_7e
    const-string v0, "ReceiverHeadSarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto :goto_88

    :cond_87
    const/4 v1, 0x0

    :goto_88
    packed-switch v1, :pswitch_data_fc

    const/4 p0, 0x0

    return-object p0

    .line 1771
    :pswitch_8d
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Gta4XLSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1775
    :pswitch_95
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$TripleBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1778
    :pswitch_9d
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmProximityHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1774
    :pswitch_a5
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DoubleBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1773
    :pswitch_ad
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ProximityHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1777
    :pswitch_b5
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1776
    :pswitch_bd
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmTripleBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1770
    :pswitch_c5
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$A03sSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    .line 1772
    :pswitch_cd
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    return-object p1

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x7be1d6e8 -> :sswitch_7e
        -0x49f8f888 -> :sswitch_73
        -0x4590bea4 -> :sswitch_68
        -0x3e3184d5 -> :sswitch_5d
        -0x208dc098 -> :sswitch_52
        0x492b70bc -> :sswitch_47
        0x57cc2fb5 -> :sswitch_3c
        0x5ebb8689 -> :sswitch_31
        0x6082aefd -> :sswitch_23
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_c5
        :pswitch_bd
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_9d
        :pswitch_95
        :pswitch_8d
    .end packed-switch
.end method

.method createSarManager(Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;
    .registers 7

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSarManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SingleBodySarManager"

    .line 1785
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1786
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$SingleBodySarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;II)V

    return-object p1

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method
