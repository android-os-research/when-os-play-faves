.class public Lcom/gsma/services/rcs/chat/ChatLog$GroupChat;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupChat"
.end annotation


# static fields
.field public static final BASECOLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final HISTORYLOG_MEMBER_ID:I = 0x0

.field public static final PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "content://com.gsma.services.rcs.provider.chat/groupchat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$GroupChat;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "participantInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation

    .line 138
    if-nez p1, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    invoke-static {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v0

    .line 142
    .local v0, "contactUtil":Lcom/gsma/services/rcs/contact/ContactUtil;
    if-eqz v0, :cond_55

    .line 145
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "tokens":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_54

    aget-object v6, v1, v5

    .line 149
    .local v6, "participant":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "keyValue":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_51

    .line 151
    aget-object v8, v7, v4

    .line 152
    .local v8, "contact":Ljava/lang/String;
    sget-object v9, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->DISCONNECTED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 154
    .local v9, "status":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    :try_start_2a
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v12

    array-length v12, v12

    rem-int/2addr v11, v12

    aget-object v10, v10, v11
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_3d} :catch_3f

    move-object v9, v10

    .line 157
    goto :goto_43

    .line 155
    :catch_3f
    move-exception v10

    .line 156
    .local v10, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 158
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :goto_43
    const/4 v10, 0x0

    .line 160
    .local v10, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :try_start_44
    invoke-virtual {v0, v8}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v11
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_48} :catch_4a

    move-object v10, v11

    .line 163
    goto :goto_4e

    .line 161
    :catch_4a
    move-exception v11

    .line 162
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 164
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4e
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v6    # "participant":Ljava/lang/String;
    .end local v7    # "keyValue":[Ljava/lang/String;
    .end local v8    # "contact":Ljava/lang/String;
    .end local v9    # "status":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .end local v10    # "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 167
    :cond_54
    return-object v2

    .line 143
    .end local v1    # "tokens":[Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;>;"
    :cond_55
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot read contact from provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
