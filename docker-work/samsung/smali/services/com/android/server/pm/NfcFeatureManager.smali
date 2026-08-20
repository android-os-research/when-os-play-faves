.class public Lcom/android/server/pm/NfcFeatureManager;
.super Ljava/lang/Object;
.source "NfcFeatureManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NfcFeatureManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportEse(Ljava/lang/String;Z)Z
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Z)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "ese"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static supportEse(Z)Z
    .registers 3

    const-string/jumbo v0, "ro.vendor.nfc.support.ese"

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p0, :cond_18

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_NFC_DisableEseCardMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    :cond_18
    return v0
.end method

.method public static supportNfc()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSim(Ljava/lang/String;Z)Z
    .registers 2

    .line 117
    invoke-static {p1}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string/jumbo p1, "sim"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static supportSim(Z)Z
    .registers 3

    const-string/jumbo v0, "ro.vendor.nfc.support.uicc"

    const/4 v1, 0x0

    .line 134
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p0, :cond_18

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_NFC_DisableUiccCardMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    :cond_18
    return v0
.end method

.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Lcom/samsung/android/server/pm/install/SkippingApks;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    const-string v1, ""

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hcesimese"

    const-string/jumbo v2, "hceese"

    const-string/jumbo v3, "hcesim"

    const-string/jumbo v4, "hce"

    const-string v5, "disabled"

    .line 29
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "removed eSE feature"

    const-string v3, "cannot remove eSE feature"

    const-string/jumbo v4, "removed SIM feature"

    const-string v6, "cannot remove SIM feature"

    const-string v7, "android.hardware.nfc.ese"

    const-string v8, "android.hardware.nfc.uicc"

    const-string v9, "NfcFeatureManager"

    if-eqz v1, :cond_cd

    .line 35
    :try_start_35
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    if-eqz p0, :cond_62

    const-string p2, "android.hardware.nfc"

    .line 37
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.hce"

    .line 38
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.hcef"

    .line 39
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.any"

    .line 40
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.sofware.nfc.beam"

    .line 43
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.nxp.mifare"

    .line 44
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_62
    const-string p0, "cannot remove NFC features"

    .line 47
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    if-eqz p1, :cond_95

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->getSkippingApkList()Ljava/util/ArrayList;

    const-string p0, "Nfc.apk"

    .line 52
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcNci.apk"

    .line 53
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcFn.apk"

    .line 54
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcTest.apk"

    .line 55
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcTag.apk"

    .line 56
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "Tag.apk"

    .line 57
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "SamsungNfcTag.apk"

    .line 58
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcFactoryCard.apk"

    .line 59
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    goto :goto_9a

    :cond_95
    const-string p0, "cannot remove NFC packages"

    .line 62
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    const-string/jumbo p0, "removed NFC features and packages"

    .line 65
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 68
    :cond_a1
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_b3

    if-eqz p0, :cond_b0

    .line 70
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 74
    :cond_b0
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_b3
    :goto_b3
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_cc

    if-eqz p0, :cond_c2

    .line 79
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 83
    :cond_c2
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_c5} :catch_c6

    goto :goto_cc

    :catch_c6
    move-exception p0

    const-string p1, "Unexpected exception: "

    .line 88
    invoke-static {v9, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cc
    :goto_cc
    return-void

    .line 92
    :cond_cd
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportNfc()Z

    move-result p1

    if-nez p1, :cond_d4

    return-void

    .line 95
    :cond_d4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-single binary (sku: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p2}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Z)Z

    move-result p1

    if-nez p1, :cond_ff

    if-eqz p0, :cond_fc

    .line 98
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 101
    :cond_fc
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_ff
    :goto_ff
    invoke-static {p2}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Z)Z

    move-result p1

    if-nez p1, :cond_111

    if-eqz p0, :cond_10e

    .line 106
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 109
    :cond_10e
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    :goto_111
    return-void
.end method
