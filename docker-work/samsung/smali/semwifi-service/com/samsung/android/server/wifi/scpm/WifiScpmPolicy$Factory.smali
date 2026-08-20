.class Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy$Factory;
.super Ljava/lang/Object;
.source "WifiScpmPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
    .registers 3

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_58

    goto :goto_37

    :sswitch_c
    const-string v0, "EASY_SETUP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "AUTO_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "ROAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "PROFILE_SHARE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_6a

    .line 74
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyUnsupported;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyUnsupported;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 72
    :pswitch_40
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 70
    :pswitch_46
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 68
    :pswitch_4c
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 66
    :pswitch_52
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_58
    .sparse-switch
        -0x3a443a77 -> :sswitch_2d
        0x267729 -> :sswitch_22
        0xae1bfa5 -> :sswitch_17
        0x360677e0 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
    .end packed-switch
.end method
