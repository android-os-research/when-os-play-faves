.class public Lcom/samsung/android/game/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/AlarmReceiver$Task;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mFullyUpdatedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    const-class v0, Lcom/samsung/android/game/AlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 16
    sget-object v0, Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()J
    .registers 2

    .line 16
    sget-wide v0, Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .registers 2
    .param p0, "x0"    # J

    .line 16
    sput-wide p0, Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J

    return-wide p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    sget-object v0, Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive() begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz p1, :cond_20

    if-nez p2, :cond_c

    goto :goto_20

    .line 29
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/game/AlarmReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 30
    .local v0, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcom/samsung/android/game/AlarmReceiver$Task;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/samsung/android/game/AlarmReceiver$Task;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/samsung/android/game/AlarmReceiver$1;)V

    .line 31
    .local v1, "asyncTask":Lcom/samsung/android/game/AlarmReceiver$Task;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/AlarmReceiver$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void

    .line 25
    .end local v0    # "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    .end local v1    # "asyncTask":Lcom/samsung/android/game/AlarmReceiver$Task;
    :cond_20
    :goto_20
    const-string v1, "onReceive() failed. context or intent is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
