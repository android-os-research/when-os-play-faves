.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationData"
.end annotation


# static fields
.field public static final EXTRA_KEY_NOTIFICATION_ACTIONS:Ljava/lang/String; = "noti_actions"

.field public static final KEY_BUBBLE:Ljava/lang/String; = "bubble"

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final KEY_COMPONENT_TIME:Ljava/lang/String; = "component_time"

.field public static final KEY_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field public static final KEY_FLAG:Ljava/lang/String; = "flag"

.field public static final KEY_GROUP_KEY:Ljava/lang/String; = "group_key"

.field public static final KEY_IS_HEADUP:Ljava/lang/String; = "isHeadup"

.field public static final KEY_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field public static final KEY_NOTIFICATION_COLOR:Ljava/lang/String; = "notification_color"

.field public static final KEY_NOTI_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_NOTI_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final KEY_NOTI_GROUPING_ALERT:Ljava/lang/String; = "alert_group"

.field public static final KEY_NOTI_HAS_AUDIBLE_ALERT:Ljava/lang/String; = "audible_alert"

.field public static final KEY_NOTI_ID:Ljava/lang/String; = "noti_id"

.field public static final KEY_NOTI_KEY:Ljava/lang/String; = "noti_key"

.field public static final KEY_NOTI_TAG:Ljava/lang/String; = "noti_tag"

.field public static final KEY_NOTI_VISIVILITY:Ljava/lang/String; = "noti_visiblity"

.field public static final KEY_PACKAGE_VISIVILITY:Ljava/lang/String; = "package_visiblity"

.field public static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field public static final KEY_SUB_TEXT:Ljava/lang/String; = "subText"

.field public static final KEY_TEXT:Ljava/lang/String; = "text"

.field public static final KEY_TICKER_TEXT:Ljava/lang/String; = "tickerText"

.field public static final KEY_TITLE_TEXT:Ljava/lang/String; = "titleText"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field public mNotificationInfo:Landroid/os/Bundle;

.field public mTime:J


# direct methods
.method public constructor <init>(JLandroid/os/Bundle;)V
    .registers 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-wide p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 219
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public isOnGoing()Z
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v0, "flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NotificationData { "

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tag= "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "noti_tag"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " } "

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
