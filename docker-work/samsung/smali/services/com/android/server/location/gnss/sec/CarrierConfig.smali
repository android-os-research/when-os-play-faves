.class public Lcom/android/server/location/gnss/sec/CarrierConfig;
.super Ljava/lang/Object;
.source "CarrierConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    }
.end annotation


# static fields
.field public static final KTT_SIM_OPERATOR:Ljava/lang/String; = "45008"

.field public static final LGU_SIM_OPERATOR:Ljava/lang/String; = "45006"

.field public static final MCC_ATT:I = 0x136

.field public static final MNC_AIO1:I = 0x96

.field public static final SKT_SIM_OPERATOR:Ljava/lang/String; = "45005"

.field public static final TAG:Ljava/lang/String; = "CarrierConfigForGnss"

.field public static final TPLUS_SKT_MVNO_SIM_OPERATOR:Ljava/lang/String; = "45011"

.field public static mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;


# instance fields
.field public mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public mExtraConfigHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSalesCode:Ljava/lang/String;

.field public mSalesCodeToCarrierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;",
            ">;"
        }
    .end annotation
.end field

.field public mSimOperator:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSalescodeToHashMap()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/sec/CarrierConfig;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    if-nez v1, :cond_e

    .line 51
    new-instance v1, Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 53
    :cond_e
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_58

    goto :goto_3b

    :sswitch_10
    const-string v2, "45011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string v2, "45008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v1, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v2, "45006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v1, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v2, "45005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    packed-switch v1, :pswitch_data_6a

    goto :goto_4b

    .line 476
    :pswitch_3f
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    .line 472
    :pswitch_42
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    .line 474
    :pswitch_45
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    .line 470
    :pswitch_48
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    .line 481
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    :sswitch_data_58
    .sparse-switch
        0x2f59814 -> :sswitch_31
        0x2f59815 -> :sswitch_26
        0x2f59817 -> :sswitch_1b
        0x2f5982f -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method

.method public getConfigMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 486
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setCarrierConfigMap()V

    .line 487
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public isArgentinaTelefonica()Z
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isAttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 530
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 541
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public isCanadaMarket()Z
    .registers 6

    const-string/jumbo v0, "ro.csc.country_code"

    .line 301
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 302
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCaMarket : code/country_Code/countryISO_Code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarrierConfigForGnss"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "BMC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "RWC"

    .line 308
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TLS"

    .line 309
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "SJR"

    .line 310
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v2, "XAC"

    .line 311
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    const-string p0, "Canada"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    const-string p0, "CA"

    .line 313
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    goto :goto_7a

    :cond_78
    const/4 p0, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 p0, 0x1

    .line 314
    :goto_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCaMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isChcSuplRequired()Z
    .registers 2

    .line 618
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object p0

    .line 619
    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isChinaCarrier()Z
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_19

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_19

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_19

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_19

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public isChinaMobile()Z
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isChinaOpen()Z
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isChinaSuplNiSupported()Z
    .registers 2

    .line 335
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaMobile()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaTdOpen()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isChinaTdOpen()Z
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isChinaTelecom()Z
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isChinaUnicom()Z
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isCmcConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 591
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isDcmConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 595
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEPDNListenRequired()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanKdi()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isGoogleServerAgpsOnlyRequired()Z
    .registers 3

    .line 611
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    .line 612
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isAttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isSprConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isVzwConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUscConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public final isIndiaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 575
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isJapanDocomo()Z
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isJapanJcom()Z
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "JCO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isJapanKdi()Z
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isJapanUQMobile()Z
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "UQM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isKdiConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 599
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isKorSuplNiSupported()Z
    .registers 2

    .line 330
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaKttSim()Z

    move-result v0

    if-nez v0, :cond_15

    .line 331
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaLguSim()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public isKoreaKtt()Z
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "KTC"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "KTO"

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isKoreaKttSim()Z
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    const-string v0, "45008"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isKoreaLgu()Z
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LUC"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "LUO"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isKoreaLguSim()Z
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    const-string v0, "45006"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isKoreaMarket()Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SKC"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SKO"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LGT"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LUC"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LUO"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "KTT"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "KTC"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "KTO"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "KOO"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 p0, 0x1

    .line 85
    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isKORMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isKoreaSkt()Z
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SKC"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "SKO"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isKoreaSktSim()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    const-string v0, "45011"

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public final isKttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 583
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isLgtConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 579
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isLppeSupportMarket()Z
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "ATT"

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "AIO"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAU"

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAA"

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAR"

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAG"

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "TMK"

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "DSH"

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "DSA"

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "TFO"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "TFA"

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SPR"

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "VMU"

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "BST"

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAS"

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "GCF"

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b5

    goto :goto_b7

    :cond_b5
    const/4 p0, 0x0

    goto :goto_b8

    :cond_b7
    :goto_b7
    const/4 p0, 0x1

    .line 285
    :goto_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isLppeSupportMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isMexicoConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 565
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isNoOperator()Z
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOTDOASupportMarket()Z
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "USC"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "ACG"

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "GCF"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    .line 295
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOTDOASupportMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isPeruConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 570
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isRktConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 603
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isSktConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 587
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isSprConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 552
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isSupportSuplNiWithSettingOff()Z
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_69

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_67

    goto :goto_69

    :cond_67
    const/4 p0, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 p0, 0x1

    :goto_6a
    return p0
.end method

.method public final isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 535
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public isTmbSuplServerRequired()Z
    .registers 2

    .line 607
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result p0

    return p0
.end method

.method public isUSAMarket()Z
    .registers 6

    const-string/jumbo v0, "ro.csc.country_code"

    .line 150
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 151
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUSAMarket : code/country_Code/countryISO_Code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarrierConfigForGnss"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TMB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "ATT"

    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TFA"

    .line 158
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TFO"

    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TFN"

    .line 160
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TFC"

    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "AIO"

    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "TMK"

    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "DSH"

    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "DSA"

    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "XAU"

    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "XAR"

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "XAG"

    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "XAA"

    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "VZW"

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "SPR"

    .line 171
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "USC"

    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "ACG"

    .line 173
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "BST"

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "VMU"

    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v2, "XAS"

    .line 176
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    const-string p0, "USA"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    const-string p0, "US"

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_118

    goto :goto_11a

    :cond_118
    const/4 p0, 0x0

    goto :goto_11b

    :cond_11a
    :goto_11a
    const/4 p0, 0x1

    .line 179
    :goto_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUSAMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isUfnConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 561
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isUneSuplRequired()Z
    .registers 2

    .line 623
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isMexicoConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result p0

    return p0
.end method

.method public isUsaAtt()Z
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUsaCdmaMarket()Z
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "SPR"

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "USC"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "BST"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "VMU"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "XAS"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "LRA"

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v1, "TFNVZW"

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "ACG"

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    .line 211
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUsaCdmaMarket : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isUsaTmbServerCarrier()Z
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isUsaVerizon()Z
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v0, "VZW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUscConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 557
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p1, p0, :cond_b

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isVendorIgnoreNfwLocPolicy()Z
    .registers 1

    .line 326
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p0

    return p0
.end method

.method public final isVzwConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .registers 2

    .line 548
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final setAttConfigMap()V
    .registers 6

    .line 627
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "emergencyExtensionSeconds"

    const-string v2, "300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v3, "TLSv1_2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v4, "SHA256"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "RTI_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ENABLE_GALILEO"

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCanadaConfigMap()V
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "emergencyExtensionSeconds"

    const-string v2, "300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v3, "TLSv1"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v4, "SHA256"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "RTI_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ENABLE_GALILEO"

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCarrierConfigMap()V
    .registers 3

    .line 491
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v0

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isAttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 493
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setAttConfigMap()V

    goto/16 :goto_b4

    .line 494
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 495
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setTmbConfigMap()V

    goto/16 :goto_b4

    .line 496
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 497
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setCanadaConfigMap()V

    goto/16 :goto_b4

    .line 498
    :cond_25
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isVzwConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 499
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setVzwConfigMap()V

    goto/16 :goto_b4

    .line 500
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isSprConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 501
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSprConfigMap()V

    goto/16 :goto_b4

    .line 502
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUscConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 503
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setUscConfigMap()V

    goto/16 :goto_b4

    .line 504
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUfnConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 505
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setUfnConfigMap()V

    goto/16 :goto_b4

    .line 506
    :cond_51
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isMexicoConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 507
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setMexicoConfigMap()V

    goto :goto_b4

    .line 508
    :cond_5b
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isPeruConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 509
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setPeruConfigMap()V

    goto :goto_b4

    .line 510
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isIndiaConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 511
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setIndiaConfigMap()V

    goto :goto_b4

    .line 512
    :cond_6f
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isLgtConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 513
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setLgtConfigMap()V

    goto :goto_b4

    .line 514
    :cond_79
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 515
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setKttConfigMap()V

    goto :goto_b4

    .line 516
    :cond_83
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isSktConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 517
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSktConfigMap()V

    goto :goto_b4

    .line 518
    :cond_8d
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCmcConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 519
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setCmcConfigMap()V

    goto :goto_b4

    .line 520
    :cond_97
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isDcmConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 521
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setDcmConfigMap()V

    goto :goto_b4

    .line 522
    :cond_a1
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKdiConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 523
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setKdiConfigMap()V

    goto :goto_b4

    .line 524
    :cond_ab
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isRktConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 525
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setRktConfigMap()V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public final setCmcConfigMap()V
    .registers 5

    .line 784
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "600"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LOG_ENABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LOG_PATH"

    const-string v3, "/data/AGPSLog.txt"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_NI_GPS_ICON"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "NO_DATA_STANDALONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDcmConfigMap()V
    .registers 4

    .line 793
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT1_SEC"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT2_SEC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT3_SEC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "TCP_CONNETION_TIMEOUT"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_NTT_DOCOMO"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "SUPL_USE_APN"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setIndiaConfigMap()V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_NAVIC"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_5G_CP_CAPS_MSB"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_5G_CP_CAPS_MSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ENABLE_5G_CP_CAPS_AUTO"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setKdiConfigMap()V
    .registers 4

    .line 802
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "emergencyExtensionSeconds"

    const-string v1, "240"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setKttConfigMap()V
    .registers 5

    .line 764
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_VER_SKT_NI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLgtConfigMap()V
    .registers 5

    .line 754
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_VER_SKT_NI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setMexicoConfigMap()V
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "USE_NI_SLP_ADDRESS"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setPeruConfigMap()V
    .registers 3

    .line 742
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "USE_NI_SLP_ADDRESS"

    const-string v1, "TRUE"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRktConfigMap()V
    .registers 4

    .line 809
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "SUPL_LPP_CAPABLE"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSalesCode(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-void
.end method

.method public final setSalescodeToHashMap()V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TMB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TMK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TFN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TFO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "DSH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "DSA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "ATT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "AIO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TFA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TFC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "VZW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "SPR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "BST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "VMU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "USC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "ACG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "DCM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "KDI"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "JCO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "UQM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "RKT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TLS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "KDO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "PMB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "BMC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "VMC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "PCM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "SOL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "BWA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "RWC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "FMC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "CHR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "TBT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "VTR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "FIZ"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "ESK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "SJR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "GLW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "XAC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "CAO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "SKT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "SKC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "SKO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "LGT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "LUC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "LUO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "KTT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "KTC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "KTO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "CHM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "CTC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "CHU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "CHN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v2, "CHC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "UFN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "MNX"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "IUS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "UNE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "PEO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "PNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "PET"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "SWC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "TUR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v2, "INS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    const-string v0, "INU"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSimOperator(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-void
.end method

.method public final setSktConfigMap()V
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_VER_SKT_NI"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setSprConfigMap()V
    .registers 5

    .line 712
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v3, "TLSv1"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v3, "SHA256"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_NI_SLP_ADDRESS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HOST_NI"

    const-string/jumbo v2, "supl2019.lbs.sprint.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "USE_RRLP_GOOGLE_SUPL"

    const-string v1, "FALSE"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setTmbConfigMap()V
    .registers 6

    .line 646
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "emergencyExtensionSeconds"

    const-string v2, "300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v3, "TLSv1_2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    const-string v3, "TRUE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v4, "SHA256"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_ECID_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "RTI_ENABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_GALILEO"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_5G_CP_CAPS_MSB"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_5G_CP_CAPS_MSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_5G_CP_CAPS_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_4G_CP_CAPS_MSB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_4G_CP_CAPS_MSA"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_4G_CP_CAPS_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_3G_CP_CAPS_MSB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_3G_CP_CAPS_MSA"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_3G_CP_CAPS_AUTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_2G_CP_CAPS_MSB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "ENABLE_2G_CP_CAPS_MSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "ENABLE_2G_CP_CAPS_AUTO"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setUfnConfigMap()V
    .registers 4

    .line 730
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "SUPL_USE_APN"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setUscConfigMap()V
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_RRLP_GOOGLE_SUPL"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "SUPL_SSL_METHOD"

    const-string v1, "TLSv1_1"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setVzwConfigMap()V
    .registers 5

    .line 698
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_USE_APN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v3, "SHA256"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT1_SEC"

    const-string v3, "10"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT2_SEC"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_UT3_SEC"

    const-string v3, "30"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "USE_RRLP_GOOGLE_SUPL"

    const-string v3, "FALSE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v3, "TLSv1_2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v1, "SUPL_MULTI_LOCID_CAPABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v0, "SUPL_LPPE_CAPABLE"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldSupportSuplUseApnLatinMarket()Z
    .registers 2

    .line 319
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
