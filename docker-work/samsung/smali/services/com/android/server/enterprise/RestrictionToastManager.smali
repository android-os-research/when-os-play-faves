.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
    }
.end annotation


# static fields
.field public static final MSG_REMOVE_ID:I = 0x1

.field public static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field public static final MSG_SHOW_TOAST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field public static mContext:Landroid/content/Context;

.field public static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmRecentlyDisplayedMsgQueue()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 82
    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "RestrictionToastManagerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    return-void
.end method

.method public static show(I)V
    .registers 2

    if-ltz p0, :cond_16

    .line 98
    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_16

    .line 105
    :cond_7
    :try_start_7
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    const-string p0, "RestrictionToastManager"

    const-string v0, "Resource Id not found: will not display any restriction message toast"

    .line 109
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v0

    if-eqz p0, :cond_5b

    .line 124
    :try_start_5
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    goto :goto_5b

    .line 129
    :cond_a
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_58

    if-eqz v2, :cond_14

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_14
    :try_start_14
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 134
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "message"

    .line 135
    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v3, 0x2

    .line 137
    iput v3, v2, Landroid/os/Message;->what:I

    .line 138
    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "RestrictionToastManager"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added message to recently displayed queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 144
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_58

    .line 145
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0

    throw p0

    .line 125
    :cond_5b
    :goto_5b
    monitor-exit v0

    return-void
.end method
