.class public Lcom/samsung/android/server/wifi/util/IeParser;
.super Ljava/lang/Object;
.source "IeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/IeParser$InformationElement;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field public static final KEY_CAPACITY:Ljava/lang/String; = "capacity"

.field public static final KEY_CHANNEL_UTILIZATION:Ljava/lang/String; = "channelUtilization"

.field public static final KEY_COUNTRY_CODE:Ljava/lang/String; = "country"

.field public static final KEY_HAS_KTT_VHT_VSI:Ljava/lang/String; = "hasKttVhtVsi"

.field public static final KEY_HAS_KT_HOME_VSD:Ljava/lang/String; = "hasKttHomeVsd"

.field public static final KEY_IS_SAMSUNG_MOBILE_HOTSPOT:Ljava/lang/String; = "isMobileHotspot"

.field public static final KEY_STA_COUNT:Ljava/lang/String; = "staCount"

.field static final KTT_VSI_VSD_OUI:I = 0x11c31700

.field static final KT_HOME_AP_VSD_02:B = 0x0t

.field static final KT_VSI_VSD_26:B = 0x1t

.field static final SAMSUNG_MOBILE_HOTSPOT_OUI:I = 0x321600

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "SemWifi.IeParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;
    .registers 12

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 55
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    const-string v6, " BufferUnderflowException ie:"

    const-string v7, "SemWifi.IeParser"

    if-eq v3, v4, :cond_eb

    const/16 v4, 0xb

    if-eq v3, v4, :cond_9b

    const/16 v4, 0xdd

    if-eq v3, v4, :cond_2e

    goto :goto_d

    .line 72
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const v8, 0xffffff

    and-int/2addr v8, v4

    const v9, 0x321600

    const/4 v10, 0x1

    if-ne v8, v9, :cond_52

    ushr-int/lit8 v2, v4, 0x18

    const/16 v4, 0x80

    if-ne v2, v4, :cond_d

    const-string v2, "isMobileHotspot"

    .line 77
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_52
    const v8, 0x11c31700

    if-ne v4, v8, :cond_d

    .line 80
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v8, v4, [B

    .line 81
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-lez v4, :cond_6b

    .line 82
    aget-byte v2, v8, v5

    if-nez v2, :cond_6b

    const-string v2, "hasKttHomeVsd"

    .line 83
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6b
    const/16 v2, 0x18

    if-le v4, v2, :cond_d

    .line 85
    aget-byte v2, v8, v2

    if-ne v2, v10, :cond_d

    const-string v2, "hasKttVhtVsi"

    .line 86
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_78
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2e .. :try_end_78} :catch_79

    goto :goto_d

    .line 90
    :catch_79
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 61
    :cond_9b
    :try_start_9b
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "staCount"

    .line 62
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    const v8, 0xffff

    and-int/2addr v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "channelUtilization"

    .line 63
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "capacity"

    .line 64
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_c7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9b .. :try_end_c7} :catch_c9

    goto/16 :goto_d

    .line 66
    :catch_c9
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_eb
    const/4 v4, 0x2

    :try_start_ec
    new-array v8, v4, [B

    .line 98
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 100
    new-instance v2, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v8, v5, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "country"

    .line 103
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_ec .. :try_end_10b} :catch_10d

    goto/16 :goto_d

    .line 106
    :catch_10d
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_12f
    return-object v0
.end method
