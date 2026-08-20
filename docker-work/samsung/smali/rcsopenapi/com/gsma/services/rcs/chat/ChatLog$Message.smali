.class public Lcom/gsma/services/rcs/chat/ChatLog$Message;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;,
        Lcom/gsma/services/rcs/chat/ChatLog$Message$MimeType;
    }
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXPIRED_DELIVERY:Ljava/lang/String; = "expired_delivery"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x1

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 185
    const-string v0, "content://com.gsma.services.rcs.provider.chat/chatmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeoloc(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;
    .registers 21
    .param p0, "body"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    move-object/from16 v0, p0

    if-nez v0, :cond_6

    .line 535
    const/4 v1, 0x0

    return-object v1

    .line 538
    :cond_6
    const/4 v1, 0x0

    .line 539
    .local v1, "label":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .local v2, "longitude":D
    const-wide/16 v4, 0x0

    .line 540
    .local v4, "latitude":D
    const-wide/16 v6, 0x0

    .line 541
    .local v6, "expiration":J
    const/4 v8, 0x0

    .line 543
    .local v8, "accuracy":F
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 544
    .local v9, "info":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 545
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 546
    const/4 v10, 0x2

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 547
    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 548
    array-length v10, v9

    const/4 v11, 0x5

    if-eq v10, v11, :cond_47

    .line 549
    const-string v1, ""

    goto :goto_4a

    .line 551
    :cond_47
    const/4 v10, 0x4

    aget-object v1, v9, v10

    .line 554
    :goto_4a
    new-instance v10, Lcom/gsma/services/rcs/Geoloc;

    move-object v11, v10

    move-object v12, v1

    move-wide v13, v4

    move-wide v15, v2

    move-wide/from16 v17, v6

    move/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJF)V

    return-object v10
.end method
