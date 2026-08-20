.class public final Lcom/android/server/audio/SpatializerHelper$SADeviceState;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SADeviceState"
.end annotation


# static fields
.field public static final SETTING_DEVICE_SEPARATOR:Ljava/lang/String; = "\\|"

.field public static final SETTING_DEVICE_SEPARATOR_CHAR:Ljava/lang/String; = "|"

.field public static final SETTING_FIELD_SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceType:I

.field public mEnabled:Z

.field public mHasHeadTracker:Z

.field public mHeadTrackerEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1531
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const/4 v1, 0x0

    .line 1532
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1533
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1539
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1540
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smisWireless(I)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_17
    const-string p2, ""

    :goto_19
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public static fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1588
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v1, ","

    .line 1591
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1592
    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_16

    return-object v0

    :cond_16
    const/4 v2, 0x0

    .line 1597
    :try_start_17
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1598
    new-instance v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-direct {v4, v3, v6}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 1599
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_30

    move v3, v5

    goto :goto_31

    :cond_30
    move v3, v2

    :goto_31
    iput-boolean v3, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const/4 v3, 0x3

    .line 1600
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3e

    move v3, v5

    goto :goto_3f

    :cond_3e
    move v3, v2

    :goto_3f
    iput-boolean v3, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    const/4 v3, 0x4

    .line 1601
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_4b

    move v2, v5

    :cond_4b
    iput-boolean v2, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_4d} :catch_4e

    return-object v4

    :catch_4e
    move-exception v1

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse setting for SADeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AS.SpatializerHelper"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1552
    :cond_8
    const-class v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    .line 1555
    :cond_11
    check-cast p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 1556
    iget v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    iget v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    if-ne v2, v3, :cond_36

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 1557
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-ne v2, v3, :cond_36

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    iget-boolean v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-ne v2, v3, :cond_36

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    iget-boolean p1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-ne p0, p1, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    return v0
.end method

.method public getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;
    .registers 4

    .line 1610
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1611
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    if-nez p0, :cond_a

    const-string p0, ""

    :cond_a
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1565
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1566
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 1565
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toPersistableString()Ljava/lang/String;
    .registers 6

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_21

    move-object v2, v3

    goto :goto_22

    :cond_21
    move-object v2, v4

    :goto_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v2, :cond_2e

    move-object v2, v3

    goto :goto_2f

    :cond_2e
    move-object v2, v4

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v3, v4

    :goto_3b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HTenabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
