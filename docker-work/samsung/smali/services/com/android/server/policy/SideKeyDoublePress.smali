.class public Lcom/android/server/policy/SideKeyDoublePress;
.super Ljava/lang/Object;
.source "SideKeyDoublePress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    }
.end annotation


# static fields
.field public static final FUNC_KEY_DOUBLE_TYPE_OPEN_APPS:I = 0x2

.field public static final FUNC_KEY_DOUBLE_TYPE_QUICK_LAUNCH_CAMERA:I = 0x0

.field public static final FUNC_KEY_DOUBLE_TYPE_QUICK_SWITCH:I = 0x3

.field public static final FUNC_KEY_DOUBLE_TYPE_SAMSUNG_PAY:I = 0x4

.field public static final TAG:Ljava/lang/String; = "SideKeyDoublePress"

.field public static mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfo(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 112
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 114
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_b
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 118
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBehavior(ILjava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .registers 3

    if-eqz p0, :cond_2a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x4

    if-eq p0, p1, :cond_15

    const-string p0, "SideKeyDoublePress"

    const-string/jumbo p1, "type is not properly."

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const-string/jumbo p0, "samsungpay://simplepay/sidekey"

    .line 62
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string/jumbo p0, "secureFolder/secureFolder"

    .line 60
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    .line 58
    :cond_25
    invoke-static {p1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0

    :cond_2a
    const-string p0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 56
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    return-object p0
.end method

.method public static getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .registers 4

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p0, "SideKeyDoublePress"

    const-string v0, "appInfo is empty."

    .line 72
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 75
    :cond_f
    sget-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAppInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 76
    sget-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    .line 78
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ae

    goto :goto_64

    :sswitch_2a
    const-string/jumbo v2, "secureFolder/secureFolder"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_64

    :cond_34
    const/4 v0, 0x4

    goto :goto_64

    :sswitch_36
    const-string/jumbo v2, "torch/torch"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_64

    :cond_40
    const/4 v0, 0x3

    goto :goto_64

    :sswitch_42
    const-string/jumbo v2, "wakeBixby_openApps/wakeBixby_openApps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_64

    :cond_4c
    const/4 v0, 0x2

    goto :goto_64

    :sswitch_4e
    const-string v2, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_64

    :cond_57
    const/4 v0, 0x1

    goto :goto_64

    :sswitch_59
    const-string/jumbo v2, "samsungpay://simplepay/sidekey"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    packed-switch v0, :pswitch_data_c4

    .line 93
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    sput-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    .line 82
    :pswitch_73
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_QUICK_SWITCH_PRIVATE_MODE:Z

    if-eqz v0, :cond_80

    .line 83
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$QuickSwitch;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$QuickSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object v1

    :cond_80
    sput-object v1, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v1

    .line 88
    :pswitch_83
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TORCH:Z

    if-eqz v0, :cond_90

    .line 89
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object v1

    :cond_90
    sput-object v1, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v1

    .line 85
    :pswitch_93
    sput-object v1, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v1

    .line 80
    :pswitch_96
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$QuickLaunchCamera;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$QuickLaunchCamera;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    sput-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    .line 91
    :pswitch_a2
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAppInfo(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    sput-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    :sswitch_data_ae
    .sparse-switch
        -0x2ed4269d -> :sswitch_59
        0x5a5f84 -> :sswitch_4e
        0x5a741d0f -> :sswitch_42
        0x6a598029 -> :sswitch_36
        0x760519cf -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_96
        :pswitch_93
        :pswitch_83
        :pswitch_73
    .end packed-switch
.end method

.method public static launchAction(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastIntentClone(II)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 103
    :cond_d
    invoke-static {v0}, Lcom/android/server/policy/SideKeyDoublePress;->getAppInfo(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object v1

    if-nez v1, :cond_18

    return-void

    .line 107
    :cond_18
    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;Landroid/view/KeyEvent;Z)V

    return-void
.end method
