.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationCancelledEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    .line 134
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 135
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v3, "NOTIFICATION_CANCEL_CLICK"

    const/4 v4, 0x1

    const/16 v5, 0xa4

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 137
    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v5, "NOTIFICATION_CANCEL_USER_OTHER"

    const/4 v6, 0x2

    const/16 v7, 0xa5

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 139
    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v7, "NOTIFICATION_CANCEL_USER_CANCEL_ALL"

    const/4 v8, 0x3

    const/16 v9, 0xa6

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 142
    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v9, "NOTIFICATION_CANCEL_ERROR"

    const/4 v10, 0x4

    const/16 v11, 0xa7

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 144
    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v11, "NOTIFICATION_CANCEL_PACKAGE_CHANGED"

    const/4 v12, 0x5

    const/16 v13, 0xa8

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 146
    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v13, "NOTIFICATION_CANCEL_USER_STOPPED"

    const/4 v14, 0x6

    const/16 v15, 0xa9

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 148
    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PACKAGE_BANNED"

    const/4 v14, 0x7

    const/16 v12, 0xaa

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 150
    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_APP_CANCEL"

    const/16 v14, 0x8

    const/16 v10, 0xab

    invoke-direct {v12, v15, v14, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 152
    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_APP_CANCEL_ALL"

    const/16 v14, 0x9

    const/16 v8, 0xac

    invoke-direct {v10, v15, v14, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 154
    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_LISTENER_CANCEL"

    const/16 v14, 0xa

    const/16 v6, 0xad

    invoke-direct {v8, v15, v14, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 156
    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL"

    const/16 v14, 0xb

    const/16 v4, 0xae

    invoke-direct {v6, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 158
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED"

    const/16 v14, 0xc

    const/16 v2, 0xaf

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 160
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_GROUP_OPTIMIZATION"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0xb0

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 162
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PACKAGE_SUSPENDED"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0xb1

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 165
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_PROFILE_TURNED_OFF"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0xb2

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 167
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_UNAUTOBUNDLED"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0xb3

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 170
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_CHANNEL_BANNED"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0xb4

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 172
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_SNOOZED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0xb5

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 174
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_TIMEOUT"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0xb6

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 177
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_PEEK"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0xbe

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 179
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_AOD"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0xbf

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 181
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v15, "NOTIFICATION_CANCEL_USER_SHADE"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0xc0

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 184
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_USER_LOCKSCREEN"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0xc1

    invoke-direct {v2, v14, v15, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 186
    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v14, "NOTIFICATION_CANCEL_ASSISTANT"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x38a

    invoke-direct {v4, v14, v15, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 133
    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return-void
.end method

.method public static fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 4
    .param p0    # I
        .annotation build Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    .line 202
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez p0, :cond_a

    .line 205
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 203
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const/4 v0, 0x1

    if-nez p1, :cond_56

    if-gt v0, p0, :cond_31

    const/16 p1, 0x17

    if-gt p0, p1, :cond_31

    .line 218
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    :cond_31
    const/16 p1, 0x16

    if-ne p0, p1, :cond_38

    .line 222
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 224
    :cond_38
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez p1, :cond_3f

    .line 227
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 225
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected cancel reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    const/4 v1, 0x2

    if-eq p0, v1, :cond_77

    .line 232
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez p1, :cond_60

    .line 235
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 233
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected cancel with surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    if-eq p1, v0, :cond_a2

    if-eq p1, v1, :cond_9f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9c

    .line 245
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez p1, :cond_85

    .line 249
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 246
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected surface for user-dismiss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_9c
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 241
    :cond_9f
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0

    .line 239
    :cond_a2
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 2

    .line 133
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .registers 1

    .line 133
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return p0
.end method
