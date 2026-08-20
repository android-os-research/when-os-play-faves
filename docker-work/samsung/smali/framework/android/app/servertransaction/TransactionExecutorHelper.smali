.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final greylist-max-o DESTRUCTION_PENALTY:I = 0xa

.field private static final greylist-max-o ON_RESUME_PRE_EXCUTION_STATES:[I


# instance fields
.field private greylist-max-o mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method private static blacklist getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 297
    if-nez p0, :cond_4

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_4
    invoke-virtual {p1, p0}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 279
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_f

    .line 281
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 283
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .registers 3
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 184
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 186
    .local v0, "prevState":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1e

    .line 198
    :pswitch_8
    invoke-static {v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    .local v1, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_1d

    .line 195
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_d
    invoke-static {v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(I)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v1

    .line 196
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_1d

    .line 192
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_12
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    .line 193
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_1d

    .line 189
    .end local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :pswitch_17
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/app/servertransaction/StartActivityItem;->obtain(Landroid/app/ActivityOptions;)Landroid/app/servertransaction/StartActivityItem;

    move-result-object v1

    .line 190
    .restart local v1    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    nop

    .line 202
    :goto_1d
    return-object v1

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_17
        :pswitch_8
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method static blacklist getShortActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 288
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_f

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getStateName(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 305
    packed-switch p0, :pswitch_data_38

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_1c
    const-string v0, "ON_RESTART"

    return-object v0

    .line 321
    :pswitch_1f
    const-string v0, "ON_DESTROY"

    return-object v0

    .line 319
    :pswitch_22
    const-string v0, "ON_STOP"

    return-object v0

    .line 317
    :pswitch_25
    const-string v0, "ON_PAUSE"

    return-object v0

    .line 315
    :pswitch_28
    const-string v0, "ON_RESUME"

    return-object v0

    .line 313
    :pswitch_2b
    const-string v0, "ON_START"

    return-object v0

    .line 311
    :pswitch_2e
    const-string v0, "ON_CREATE"

    return-object v0

    .line 309
    :pswitch_31
    const-string v0, "PRE_ON_CREATE"

    return-object v0

    .line 307
    :pswitch_34
    const-string v0, "UNDEFINED"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static greylist-max-o lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I
    .registers 8
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 231
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    const/4 v1, -0x1

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2e

    .line 238
    :cond_e
    const/4 v2, -0x1

    .line 239
    .local v2, "lastRequestedState":I
    const/4 v3, -0x1

    .line 240
    .local v3, "lastRequestingCallback":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_16
    if-ltz v4, :cond_2d

    .line 241
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/servertransaction/ClientTransactionItem;

    .line 242
    .local v5, "callback":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v5}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v6

    .line 243
    .local v6, "postExecutionState":I
    if-eq v6, v1, :cond_2a

    .line 245
    if-eq v2, v1, :cond_28

    if-ne v2, v6, :cond_2d

    .line 249
    :cond_28
    move v2, v6

    .line 250
    move v3, v4

    .line 240
    .end local v5    # "callback":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v6    # "postExecutionState":I
    :cond_2a
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 257
    .end local v4    # "i":I
    :cond_2d
    return v3

    .line 233
    .end local v2    # "lastRequestedState":I
    .end local v3    # "lastRequestingCallback":I
    :cond_2e
    :goto_2e
    return v1
.end method

.method private static greylist-max-o pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .registers 5
    .param p0, "lifecycleSequence"    # Landroid/util/IntArray;

    .line 210
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 211
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 212
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    .line 213
    const/4 v2, 0x1

    return v2

    .line 211
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 216
    .end local v1    # "i":I
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;
    .registers 3
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 7
    .param p0, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p1, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 263
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 264
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 265
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Landroid/app/servertransaction/TransactionExecutorHelper;->tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Landroid/app/servertransaction/ClientTransaction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Target activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 268
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public greylist-max-o getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStates"    # [I

    .line 162
    if-eqz p2, :cond_31

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_31

    .line 166
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 167
    .local v0, "currentState":I
    const/4 v1, -0x1

    .line 168
    .local v1, "closestState":I
    const/4 v2, 0x0

    .local v2, "i":I
    const v3, 0x7fffffff

    .local v3, "shortestPath":I
    :goto_f
    array-length v4, p2

    if-ge v2, v4, :cond_30

    .line 169
    aget v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    .line 170
    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    .line 171
    .local v4, "pathLength":I
    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 172
    add-int/lit8 v4, v4, 0xa

    .line 174
    :cond_28
    if-le v3, v4, :cond_2d

    .line 175
    move v3, v4

    .line 176
    aget v1, p2, v2

    .line 168
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 179
    .end local v2    # "i":I
    .end local v3    # "shortestPath":I
    .end local v4    # "pathLength":I
    :cond_30
    return v1

    .line 163
    .end local v0    # "currentState":I
    .end local v1    # "closestState":I
    :cond_31
    :goto_31
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "postExecutionState"    # I

    .line 140
    sparse-switch p2, :sswitch_data_2c

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-execution states for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :sswitch_22
    sget-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result v0

    return v0

    .line 142
    :sswitch_29
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        -0x1 -> :sswitch_29
        0x3 -> :sswitch_22
    .end sparse-switch
.end method

.method public greylist-max-o getLifecyclePath(IIZ)Landroid/util/IntArray;
    .registers 8
    .param p1, "start"    # I
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z

    .line 65
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9c

    if-eq p2, v0, :cond_9c

    .line 68
    const/4 v0, 0x7

    if-eq p1, v0, :cond_94

    if-eq p2, v0, :cond_94

    .line 72
    if-nez p2, :cond_17

    if-ne p1, p2, :cond_f

    goto :goto_17

    .line 73
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start in pre-onCreate state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 77
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-lt p2, p1, :cond_37

    .line 78
    if-ne p1, v1, :cond_2a

    if-ne p2, v2, :cond_2a

    .line 81
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_7c

    .line 84
    :cond_2a
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_2c
    if-gt v0, p2, :cond_36

    .line 85
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .end local v0    # "i":I
    :cond_36
    goto :goto_7c

    .line 89
    :cond_37
    const/4 v3, 0x4

    if-ne p1, v3, :cond_43

    const/4 v3, 0x3

    if-ne p2, v3, :cond_43

    .line 91
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_7c

    .line 92
    :cond_43
    if-gt p1, v2, :cond_64

    if-lt p2, v1, :cond_64

    .line 96
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_49
    if-gt v1, v2, :cond_53

    .line 97
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 100
    .end local v1    # "i":I
    :cond_53
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 102
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_59
    if-gt v0, p2, :cond_63

    .line 103
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .end local v0    # "i":I
    :cond_63
    goto :goto_7c

    .line 109
    :cond_64
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_66
    const/4 v1, 0x6

    if-gt v0, v1, :cond_71

    .line 110
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 113
    .end local v0    # "i":I
    :cond_71
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_72
    if-gt v0, p2, :cond_7c

    .line 114
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 120
    .end local v0    # "i":I
    :cond_7c
    :goto_7c
    if-eqz p3, :cond_91

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_91

    .line 121
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 124
    :cond_91
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object v0

    .line 69
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
