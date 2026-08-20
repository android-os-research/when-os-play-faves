.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$DOPConnectionState;
    }
.end annotation


# static fields
.field public static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field public static final ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String; = "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

.field public static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field public static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field public static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field public static final KEYBOARD_BT:I = 0x2

.field public static final KEYBOARD_DEX_ON_PC:I = 0x80

.field public static final KEYBOARD_KMS:I = 0x20

.field public static final KEYBOARD_POGO:I = 0x40

.field public static final KEYBOARD_POGO_BACKFOLDED:I = 0x8

.field public static final KEYBOARD_PSS:I = 0x10

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final KEYBOARD_USB:I = 0x4

.field public static final SIDESYNC_RECEIVER_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

.field public static final TAG:Ljava/lang/String; = "InputMethodManagerServicePhysicalKey"


# instance fields
.field public keyboardState:I

.field public mBTKeyboardCount:I

.field public mContext:Landroid/content/Context;

.field public mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

.field public mUSBKeyboardCount:I

.field public mUSBKeyboardCountOld:I

.field public prevAutoMode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBTKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBrightnessMode(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 41
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 42
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return-void
.end method


# virtual methods
.method public final connectedHWKeyboard()V
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    return-void
.end method

.method public isAccessoryKeyboard()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return p0
.end method

.method public isHWAccessoryKeyboard()Z
    .registers 6

    .line 80
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_11

    move p0, v1

    goto :goto_12

    :cond_11
    move p0, v2

    .line 83
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConnectedDexOnPC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodManagerServicePhysicalKey"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2f

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :cond_2f
    :goto_2f
    return v1
.end method

.method public isPogoBackfolded()Z
    .registers 3

    .line 88
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 89
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPogoBackfolded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerServicePhysicalKey"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isPogoConnected()Z
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isPogoConnectedOnly()Z
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    if-eqz p0, :cond_a

    and-int/lit8 p0, p0, -0x49

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .registers 6

    .line 113
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v2, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->init()V

    return-void
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    return-void
.end method

.method public final updateBrightnessMode()V
    .registers 4

    .line 106
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 107
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    return-void
.end method

.method public updateKeyboardStateForDEXOnPC(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 73
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    goto :goto_10

    .line 75
    :cond_a
    iget p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    :goto_10
    return-void
.end method
