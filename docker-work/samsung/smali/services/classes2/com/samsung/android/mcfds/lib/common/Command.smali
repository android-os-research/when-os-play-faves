.class public Lcom/samsung/android/mcfds/lib/common/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field public static final BIND_REASON_AUTO_SWITCH_SETTINGS_ON:I = 0x4

.field public static final BIND_REASON_BOOT_COMPLETED:I = 0x1

.field public static final BIND_REASON_CONTINUITY_SETTINGS_ON:I = 0x3

.field public static final BIND_REASON_MULTI_CONTROL_SETTINGS_ON:I = 0x7

.field public static final BIND_REASON_PACKAGE_CHANGED:I = 0x5

.field public static final BIND_REASON_PACKAGE_RESTARTED:I = 0x6

.field public static final BIND_REASON_SA_LOGIN:I = 0x2

.field public static final BIND_REASON_UNKNOWN:I = 0x0

.field public static final BIND_REASON_VIDEO_CALL_CONTINUITY_SETTINGS_ON:I = 0x8

.field public static final CB_SERVICE_STATUS_CHANGED:I = 0x2710

.field public static final CMD_COPY_PASTE_CANCEL_DOWNLOAD:I = 0x69

.field public static final CMD_COPY_PASTE_REGISTER_CLIP_STATE_LISTENER:I = 0x64

.field public static final CMD_COPY_PASTE_REMOVE_CLIPDATA:I = 0x67

.field public static final CMD_COPY_PASTE_REQUEST_DOWNLOAD:I = 0x68

.field public static final CMD_COPY_PASTE_UNREGISTER_CLIP_STATE_LISTENER:I = 0x65

.field public static final CMD_COPY_PASTE_UPDATE_CLIPDATA:I = 0x66

.field public static final CMD_EMPTY:I = -0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final CMD_REGISTER_DEVICE_SYNC_CALLBACK:I = 0x1

.field public static final CMD_REGISTER_SERVICE_STATE_LISTENER:I = 0xa

.field public static final CMD_SYNC_END:I = 0x3eb

.field public static final CMD_SYNC_GET_NEARBY_DEVICE_LIST:I = 0x3e9

.field public static final CMD_SYNC_GET_NEARBY_MYDEVICE_COUNT:I = 0x3e8

.field public static final CMD_SYNC_INIT_MAIN_CONTROLLER:I = 0x3ea

.field public static final CMD_SYNC_START:I = 0x3e8

.field public static final CMD_UNREGISTER_DEVICE_SYNC_CALLBACK:I = 0x2

.field public static final CMD_UNREGISTER_SERVICE_STATE_LISTENER:I = 0xb

.field public static final KEY_AUTO_SWITCH_DEVICE:Ljava/lang/String; = "KEY_AUTO_SWITCH_DEVICE"

.field public static final KEY_BIND_REASON:Ljava/lang/String; = "KEY_BIND_REASON"

.field public static final KEY_CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final KEY_INPUT:Ljava/lang/String; = "input"

.field public static final RETURN_FAILED:I = -0x1

.field public static final RETURN_NOT_ALLOWED:I = 0x3

.field public static final RETURN_SUCCESS:I = 0x0

.field public static final RETURN_SVC_AVAILABLE:I = 0x1

.field public static final RETURN_SVC_UNAVAILABLE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEmptyMessage()Landroid/os/Message;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    .line 71
    iput v1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public static isEmptyMessage(Landroid/os/Message;)Z
    .registers 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
