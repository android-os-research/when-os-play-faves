.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BypassReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/audio/AudioService$BypassReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 15058
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "NO_BYPASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15059
    new-instance v1, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v3, "DISPLAY_VOLUME_CONTROL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15060
    new-instance v3, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v5, "CANNOT_UNMUTE_SILENT_VIBRATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15061
    new-instance v5, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v7, "ALL_SOUND_MUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15062
    new-instance v7, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v9, "TMS_CONNECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15063
    new-instance v9, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v11, "CONSUME_ADJUST_SAME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15064
    new-instance v11, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v13, "MULTISOUND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15065
    new-instance v13, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v15, "MEDIA_VOLUME_STEP_ON"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15066
    new-instance v15, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v14, "SKIP_WARNING_POPUP_VISIBLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15067
    new-instance v14, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v12, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 15068
    new-instance v12, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v10, "VOLUME_LIMITER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 15057
    sput-object v10, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15057
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .registers 2

    .line 15057
    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioService$BypassReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .registers 1

    .line 15057
    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    invoke-virtual {v0}, [Lcom/android/server/audio/AudioService$BypassReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method
