.class public Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine$DeviceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateImpl"
.end annotation


# instance fields
.field private final blacklist mCr:Landroid/content/ContentResolver;

.field private final blacklist mNitzNetworkDisconnectRetentionMillis:I

.field private final blacklist mNitzUpdateDiffMillis:I

.field private final blacklist mNitzUpdateSpacingMillis:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "ro.nitz_update_spacing"

    const v1, 0x927c0

    .line 166
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateSpacingMillis:I

    const-string v0, "ro.nitz_update_diff"

    const/16 v1, 0x7d0

    .line 169
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateDiffMillis:I

    const-string v0, "ro.nitz_network_disconnect_retention"

    const v1, 0x493e0

    .line 171
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzNetworkDisconnectRetentionMillis:I

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public blacklist currentTimeMillis()J
    .registers 3

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist elapsedRealtimeMillis()J
    .registers 3

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIgnoreNitz()Z
    .registers 2

    const-string p0, "gsm.ignore-nitz"

    .line 199
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "yes"

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public blacklist getNitzNetworkDisconnectRetentionMillis()I
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzNetworkDisconnectRetentionMillis:I

    const-string v1, "nitz_network_disconnect_retention"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNitzUpdateDiffMillis()I
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateDiffMillis:I

    const-string v1, "nitz_update_diff"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNitzUpdateSpacingMillis()I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateSpacingMillis:I

    const-string v1, "nitz_update_spacing"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method
