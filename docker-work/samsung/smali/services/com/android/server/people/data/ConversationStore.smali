.class public Lcom/android/server/people/data/ConversationStore;
.super Ljava/lang/Object;
.source "ConversationStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    }
.end annotation


# static fields
.field public static final CONVERSATIONS_FILE_NAME:Ljava/lang/String; = "conversations"

.field public static final CONVERSATION_INFOS_END_TOKEN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ConversationStore"


# instance fields
.field public final mContactUriToShortcutIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mConversationInfoMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

.field public final mLocusIdToShortcutIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/LocusId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifChannelIdToShortcutIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageDir:Ljava/io/File;

.field public final mPhoneNumberToShortcutIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$qBYKt9lcjm3XQdMBcn5Y5fR2YGg(Ljava/io/DataOutputStream;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/ConversationStore;->lambda$getBackupPayload$0(Ljava/io/DataOutputStream;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 85
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    return-void
.end method

.method public static synthetic lambda$getBackupPayload$0(Ljava/io/DataOutputStream;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 3

    .line 222
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getBackupPayload()[B

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 227
    :cond_7
    :try_start_7
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    .line 230
    sget-object p1, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v0, "Failed to write conversation info to backup payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method


# virtual methods
.method public addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 4

    .line 137
    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 140
    monitor-exit p0

    return-object p1

    .line 143
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 145
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 150
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 155
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 160
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3f

    .line 163
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    return-object p1

    :catchall_3f
    move-exception p1

    .line 162
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mConversationInfoMap"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 387
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mLocusIdToShortcutIdMap"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mContactUriToShortcutIdMap"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 389
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mPhoneNumberToShortcutIdMap"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 390
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "mNotifChannelIdToShortcutIdMap"

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 173
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    .line 171
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getBackupPayload()[B
    .registers 4

    .line 219
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    new-instance v2, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;)V

    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    const/4 p0, -0x1

    .line 234
    :try_start_13
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1b

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_1b
    move-exception p0

    .line 236
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversation infos end token to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 179
    :try_start_3
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConversationByNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    .line 303
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package data directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_26
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    if-nez v0, :cond_37

    .line 307
    new-instance v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v3, "conversations"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 310
    :cond_37
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    return-object p0
.end method

.method public loadConversationsFromDisk()V
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "conversations"

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_12

    return-void

    .line 105
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_16

    :cond_26
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 204
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 209
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    .line 211
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 213
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->deleteConversationsFile()V

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    .line 210
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public restore([B)V
    .registers 5

    .line 243
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    :goto_e
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2d

    .line 248
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 250
    invoke-static {v1}, Lcom/android/server/people/data/ConversationInfo;->readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 247
    :cond_20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_e

    :catch_25
    move-exception p0

    .line 257
    sget-object p1, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read conversation info from payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    return-void
.end method

.method public saveConversationsToDisk()V
    .registers 4

    .line 117
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 120
    monitor-enter p0

    .line 121
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->saveConversationsImmediately(Ljava/util/List;)V

    goto :goto_1a

    :catchall_17
    move-exception v0

    .line 122
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final scheduleUpdateConversationsOnDisk()V
    .registers 4

    .line 290
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 293
    monitor-enter p0

    .line 294
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->scheduleConversationsSave(Ljava/util/List;)V

    goto :goto_1a

    :catchall_17
    move-exception v0

    .line 295
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final declared-synchronized updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5

    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 267
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 272
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 277
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 282
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 284
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method
