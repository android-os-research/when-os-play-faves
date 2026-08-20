.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .registers 2

    .line 141
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "check":I
    const-string v1, "IdleReaper"

    invoke-virtual {p0, v1}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    .line 147
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 149
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    monitor-enter v1

    .line 150
    :goto_e
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2c

    .line 152
    :try_start_11
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_19
    .catchall {:try_start_11 .. :try_end_18} :catchall_34

    .line 154
    goto :goto_1a

    .line 153
    :catch_19
    move-exception v2

    .line 155
    :goto_1a
    :try_start_1a
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-static {v2}, Landroid/net/http/IdleCache;->-$$Nest$fgetmCount(Landroid/net/http/IdleCache;)I

    move-result v2

    if-nez v2, :cond_25

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 158
    :cond_25
    const/4 v0, 0x0

    .line 159
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-static {v2}, Landroid/net/http/IdleCache;->-$$Nest$mclearIdle(Landroid/net/http/IdleCache;)V

    goto :goto_e

    .line 162
    :cond_2c
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/http/IdleCache;->-$$Nest$fputmThread(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)V

    .line 163
    monitor-exit v1

    .line 170
    return-void

    .line 163
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw v2
.end method
