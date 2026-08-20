.class public Landroid/service/controls/ControlsManager;
.super Ljava/lang/Object;
.source "ControlsManager.java"


# instance fields
.field blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x13ec

    iput v0, p0, Landroid/service/controls/ControlsManager;->mVersion:I

    .line 11
    return-void
.end method


# virtual methods
.method public blacklist getVersion()I
    .registers 2

    .line 14
    iget v0, p0, Landroid/service/controls/ControlsManager;->mVersion:I

    return v0
.end method

.method public blacklist hasFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;

    .line 18
    const-string v0, "CONTROLS_SAMSUNG_STYLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 19
    return v1

    .line 20
    :cond_a
    const-string v0, "CONTROLS_LOTTIE_ICON_ANIMATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21
    return v1

    .line 22
    :cond_13
    const-string v0, "CONTROLS_PROVIDER_INFO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23
    return v1

    .line 24
    :cond_1c
    const-string v0, "CONTROLS_CUSTOM_MAIN_ACTION_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 25
    return v1

    .line 26
    :cond_25
    const-string v0, "CONTROLS_USE_FULL_SCREEN_DETAIL_DIALOG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 27
    return v1

    .line 28
    :cond_2e
    const-string v0, "CONTROLS_ALLOW_BASIC_ACTION_WHEN_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 29
    return v1

    .line 30
    :cond_37
    const-string v0, "CONTROLS_CUSTOM_STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 31
    return v1

    .line 32
    :cond_40
    const-string v0, "CONTROLS_AUTO_ADD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 33
    return v1

    .line 34
    :cond_49
    const-string v0, "CONTROLS_AUTO_REMOVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 35
    return v1

    .line 36
    :cond_52
    const-string v0, "CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 37
    return v1

    .line 38
    :cond_5b
    const-string v0, "CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 39
    return v1

    .line 40
    :cond_64
    const-string v0, "CONTROLS_DYNAMIC_ORDERING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 41
    return v1

    .line 42
    :cond_6d
    const-string v0, "CONTROLS_CUSTOM_STATUS_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 43
    return v1

    .line 44
    :cond_76
    const-string v0, "CONTROLS_LAYOUT_TYPE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 45
    return v1

    .line 46
    :cond_7f
    const-string v0, "CONTROLS_AUI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 47
    return v1

    .line 48
    :cond_88
    const-string v0, "CONTROLS_OVERLAY_CUSTOM_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 49
    return v1

    .line 52
    :cond_91
    const/4 v0, 0x0

    return v0
.end method
