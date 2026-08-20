.class public Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"


# instance fields
.field private final blacklist mHasTelephonyRadio:Z

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mHasTelephonyRadio:Z

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist hasAnySim()Z
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1a

    .line 29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 30
    .local v0, "simCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1a

    .line 31
    iget-object v2, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 32
    .local v2, "state":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    if-eqz v2, :cond_17

    .line 34
    return v3

    .line 30
    .end local v2    # "state":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 38
    .end local v0    # "simCount":I
    .end local v1    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasTelephonyRadio()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mHasTelephonyRadio:Z

    return v0
.end method

.method public blacklist isDataEnabled()Z
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method
