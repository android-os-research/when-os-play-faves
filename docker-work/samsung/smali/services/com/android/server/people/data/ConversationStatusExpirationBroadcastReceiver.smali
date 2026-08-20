.class public Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationStatusExpirationBroadcastReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "ConversationStatusExpiration"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final REQUEST_CODE:I = 0xa

.field public static final SCHEME:Ljava/lang/String; = "expStatus"


# direct methods
.method public static synthetic $r8$lambda$27DqBUht_WIIM1LZcFr4Swg0myI(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ConversationStatusExpiration"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "expStatus"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getKey(ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)Ljava/lang/String;
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .registers 4

    .line 89
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 90
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 92
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v2, "userId"

    .line 91
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-string p1, "ConversationStatusExpiration"

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 88
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1c
    return-void
.end method

.method public scheduleExpiration(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 11

    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 p0, 0xa

    .line 51
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ConversationStatusExpiration"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "expStatus"

    .line 55
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 56
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->getKey(ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 57
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 55
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 58
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    const-string/jumbo p4, "userId"

    .line 59
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0xc000000

    .line 51
    invoke-static {p1, p0, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 61
    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p5}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide p3

    .line 61
    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_55

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_55
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
.end method
