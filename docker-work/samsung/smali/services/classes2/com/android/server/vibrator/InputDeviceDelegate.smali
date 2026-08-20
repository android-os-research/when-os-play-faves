.class public final Lcom/android/server/vibrator/InputDeviceDelegate;
.super Ljava/lang/Object;
.source "InputDeviceDelegate.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "InputDeviceDelegate"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceVibrators:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorManager;",
            ">;"
        }
    .end annotation
.end field

.field public mInputManager:Landroid/hardware/input/InputManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mShouldVibrateInputDevices:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 54
    iput-object p2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancelVibrateIfAvailable()Z
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 114
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 115
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibratorManager;

    invoke-virtual {v3}, Landroid/os/VibratorManager;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 117
    :cond_1b
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    monitor-exit v0

    return v1

    :catchall_26
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDevice(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onSystemReady()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 61
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final updateInputDevice(I)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_9

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-nez v2, :cond_f

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_f
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 178
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_1c
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_31

    .line 183
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_36

    .line 185
    :cond_31
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    :goto_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public updateInputDeviceVibrators(Z)Z
    .registers 8

    .line 129
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 132
    monitor-exit v0

    return v2

    .line 134
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    if-ne p1, v1, :cond_10

    .line 136
    monitor-exit v0

    return v2

    .line 139
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mShouldVibrateInputDevices:Z

    .line 140
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_4b

    .line 146
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v1, p1

    :goto_27
    if-ge v2, v1, :cond_50

    aget v3, p1, v2

    .line 149
    iget-object v4, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_48

    .line 153
    :cond_34
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_48

    .line 155
    iget-object v5, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 159
    :cond_4b
    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 161
    :cond_50
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z
    .registers 16

    .line 99
    iget-object v0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 100
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 101
    iget-object v3, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/VibratorManager;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 103
    :cond_21
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-exit v0

    return v1

    :catchall_2c
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p0
.end method
