.class public Lcom/android/server/ssrm/common/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;,
        Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mexecutePendingBroadcasts(Lcom/android/server/ssrm/common/LocalBroadcastManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/common/LocalBroadcastManager$1;-><init>(Lcom/android/server/ssrm/common/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 8

    .line 244
    :goto_0
    const/4 v0, 0x0

    .line 245
    .local v0, "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 246
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, "N":I
    if-gtz v2, :cond_e

    .line 248
    monitor-exit v1

    return-void

    .line 250
    :cond_e
    new-array v3, v2, [Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;

    move-object v0, v3

    .line 251
    iget-object v3, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_43

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_42

    .line 255
    aget-object v2, v0, v1

    .line 256
    .local v2, "br":Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_23
    iget-object v4, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 257
    iget-object v4, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    iget-object v4, v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 254
    .end local v2    # "br":Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "j":I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 260
    .end local v0    # "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    .end local v1    # "i":I
    :cond_42
    goto :goto_0

    .line 253
    .restart local v0    # "brs":[Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    if-nez v1, :cond_12

    .line 75
    new-instance v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/common/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    .line 77
    :cond_12
    sget-object v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mInstance:Lcom/android/server/ssrm/common/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 105
    :try_start_3
    new-instance v1, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 106
    .local v1, "entry":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 107
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_1e

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 109
    iget-object v4, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1e
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_48

    .line 113
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 115
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_41

    .line 116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 117
    iget-object v7, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_41
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    nop

    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 121
    .end local v1    # "entry":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :cond_48
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;

    .line 169
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 170
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 174
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 175
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 176
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    move v14, v4

    .line 178
    .local v14, "debug":Z
    if-eqz v14, :cond_5d

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_5d
    iget-object v4, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v15, v4

    .line 182
    .local v15, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v15, :cond_178

    .line 183
    if-eqz v14, :cond_86

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_86
    const/4 v4, 0x0

    .line 185
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v6, 0x0

    move-object v10, v4

    move v7, v6

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v7, "i":I
    .local v10, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_8a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_143

    .line 186
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    move-object v6, v4

    .line 187
    .local v6, "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    if-eqz v14, :cond_b3

    const-string v4, "LocalBroadcastManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Matching against filter "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_b3
    iget-boolean v4, v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v4, :cond_ce

    .line 189
    if-eqz v14, :cond_c7

    .line 190
    const-string v4, "LocalBroadcastManager"

    const-string v12, "  Filter\'s target already added"

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    goto/16 :goto_13c

    .line 189
    :cond_c7
    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    goto/16 :goto_13c

    .line 194
    :cond_ce
    iget-object v4, v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v12, "LocalBroadcastManager"

    move-object v13, v6

    .end local v6    # "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .local v13, "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    move-object v6, v0

    move/from16 v16, v7

    .end local v7    # "i":I
    .local v16, "i":I
    move-object v7, v11

    move-object/from16 v17, v0

    move-object v0, v10

    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v17, "type":Ljava/lang/String;
    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 196
    .local v4, "match":I
    if-ltz v4, :cond_110

    .line 197
    if-eqz v14, :cond_ff

    const-string v6, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Filter matched!  match=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_ff
    if-nez v0, :cond_108

    .line 200
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v6

    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    goto :goto_109

    .line 199
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_108
    move-object v10, v0

    .line 202
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_109
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_13d

    .line 205
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_110
    if-eqz v14, :cond_13c

    .line 207
    packed-switch v4, :pswitch_data_180

    .line 212
    const-string v6, "unknown reason"

    goto :goto_124

    .line 211
    :pswitch_118
    const-string v6, "type"

    .local v6, "reason":Ljava/lang/String;
    goto :goto_124

    .line 210
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_11b
    const-string v6, "data"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_124

    .line 208
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_11e
    const-string v6, "action"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_124

    .line 209
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_121
    const-string v6, "category"

    .restart local v6    # "reason":Ljava/lang/String;
    nop

    .line 214
    :goto_124
    const-string v7, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Filter did not match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4    # "match":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;
    .end local v16    # "i":I
    .end local v17    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_13c
    :goto_13c
    move-object v10, v0

    .end local v0    # "type":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v16    # "i":I
    .restart local v17    # "type":Ljava/lang/String;
    :goto_13d
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v17

    .end local v16    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_8a

    .end local v17    # "type":Ljava/lang/String;
    .restart local v0    # "type":Ljava/lang/String;
    :cond_143
    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    .line 218
    .end local v7    # "i":I
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v17    # "type":Ljava/lang/String;
    if-eqz v0, :cond_17a

    .line 219
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_15d

    .line 220
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_14b

    .line 222
    .end local v4    # "i":I
    :cond_15d
    iget-object v4, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v6, v2, v0}, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v4, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_175

    .line 224
    iget-object v4, v1, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    :cond_175
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 182
    .end local v17    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    :cond_178
    move-object/from16 v17, v0

    .line 229
    .end local v0    # "type":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v14    # "debug":Z
    .end local v15    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_17a
    monitor-exit v3

    .line 230
    const/4 v0, 0x0

    return v0

    .line 229
    :catchall_17d
    move-exception v0

    monitor-exit v3
    :try_end_17f
    .catchall {:try_start_7 .. :try_end_17f} :catchall_17d

    throw v0

    :pswitch_data_180
    .packed-switch -0x4
        :pswitch_121
        :pswitch_11e
        :pswitch_11b
        :pswitch_118
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    invoke-direct {p0}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 241
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 133
    iget-object v0, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 135
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_f

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 140
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1d
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 143
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_55

    .line 144
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4a

    .line 145
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;

    iget-object v8, v8, Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v8, p1, :cond_47

    .line 146
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    add-int/lit8 v7, v7, -0x1

    .line 144
    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 150
    .end local v7    # "k":I
    :cond_4a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_55

    .line 151
    iget-object v7, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 138
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 156
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v2    # "i":I
    :cond_5b
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method
