.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final greylist-max-o KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final greylist-max-o KEY_MESSAGES:Ljava/lang/String; = "messages"

.field static final greylist-max-o KEY_ON_READ:Ljava/lang/String; = "on_read"

.field static final greylist-max-o KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final greylist-max-o KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field static final greylist-max-o KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final greylist-max-o KEY_TEXT:Ljava/lang/String; = "text"

.field private static final greylist-max-o KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final greylist-max-o mLatestTimestamp:J

.field private final greylist-max-o mMessages:[Ljava/lang/String;

.field private final greylist-max-o mParticipants:[Ljava/lang/String;

.field private final greylist-max-o mReadPendingIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mRemoteInput:Landroid/app/RemoteInput;

.field private final greylist-max-o mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .registers 8
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    .line 12061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12062
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 12063
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    .line 12064
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 12065
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 12066
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 12067
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    .line 12068
    return-void
.end method

.method static greylist-max-o getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 16
    .param p0, "b"    # Landroid/os/Bundle;

    .line 12147
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 12148
    return-object v0

    .line 12150
    :cond_4
    const-string/jumbo v1, "messages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 12151
    .local v1, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 12152
    .local v2, "messages":[Ljava/lang/String;
    if-eqz v1, :cond_39

    .line 12153
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 12154
    .local v3, "tmp":[Ljava/lang/String;
    const/4 v4, 0x1

    .line 12155
    .local v4, "success":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    array-length v6, v3

    if-ge v5, v6, :cond_34

    .line 12156
    aget-object v6, v1, v5

    instance-of v6, v6, Landroid/os/Bundle;

    if-nez v6, :cond_1e

    .line 12157
    const/4 v4, 0x0

    .line 12158
    goto :goto_34

    .line 12160
    :cond_1e
    aget-object v6, v1, v5

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 12161
    aget-object v6, v3, v5

    if-nez v6, :cond_31

    .line 12162
    const/4 v4, 0x0

    .line 12163
    goto :goto_34

    .line 12155
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 12166
    .end local v5    # "i":I
    :cond_34
    :goto_34
    if-eqz v4, :cond_38

    .line 12167
    move-object v2, v3

    goto :goto_39

    .line 12169
    :cond_38
    return-object v0

    .line 12173
    .end local v3    # "tmp":[Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_39
    :goto_39
    const-class v3, Landroid/app/PendingIntent;

    const-string/jumbo v4, "on_read"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 12174
    .local v3, "onRead":Landroid/app/PendingIntent;
    const-class v4, Landroid/app/PendingIntent;

    const-string/jumbo v5, "on_reply"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 12176
    .local v4, "onReply":Landroid/app/PendingIntent;
    const-class v5, Landroid/app/RemoteInput;

    const-string/jumbo v6, "remote_input"

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/app/RemoteInput;

    .line 12178
    .local v13, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v5, "participants"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 12179
    .local v14, "participants":[Ljava/lang/String;
    if-eqz v14, :cond_7c

    array-length v5, v14

    const/4 v6, 0x1

    if-eq v5, v6, :cond_69

    goto :goto_7c

    .line 12183
    :cond_69
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    .line 12187
    const-string/jumbo v5, "timestamp"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v5, v0

    move-object v6, v2

    move-object v7, v13

    move-object v8, v4

    move-object v9, v3

    move-object v10, v14

    invoke-direct/range {v5 .. v12}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    .line 12183
    return-object v0

    .line 12180
    :cond_7c
    :goto_7c
    return-object v0
.end method


# virtual methods
.method greylist-max-o getBundleForUnreadConversation()Landroid/os/Bundle;
    .registers 8

    .line 12123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12124
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 12125
    .local v1, "author":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    if-eqz v2, :cond_11

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 12126
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 12128
    :cond_11
    iget-object v2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/os/Parcelable;

    .line 12129
    .local v2, "messages":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_33

    .line 12130
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12131
    .local v4, "m":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12132
    const-string v5, "author"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12133
    aput-object v4, v2, v3

    .line 12129
    .end local v4    # "m":Landroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 12135
    .end local v3    # "i":I
    :cond_33
    const-string/jumbo v3, "messages"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 12136
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v3, :cond_43

    .line 12137
    const-string/jumbo v4, "remote_input"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12139
    :cond_43
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v4, "on_reply"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12140
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v4, "on_read"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12141
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const-string/jumbo v4, "participants"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12142
    iget-wide v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12143
    return-object v0
.end method

.method public whitelist getLatestTimestamp()J
    .registers 3

    .line 12119
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public whitelist getMessages()[Ljava/lang/String;
    .registers 2

    .line 12074
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParticipant()Ljava/lang/String;
    .registers 3

    .line 12112
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getParticipants()[Ljava/lang/String;
    .registers 2

    .line 12105
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReadPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 12098
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 12082
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getReplyPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 12090
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
