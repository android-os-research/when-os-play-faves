.class public Lcom/android/server/sepunion/VDCObserverService;
.super Lcom/samsung/android/sepunion/IVDCObserverService$Stub;
.source "VDCObserverService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/VDCObserverService$MyHandler;,
        Lcom/android/server/sepunion/VDCObserverService$ObserverType;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final KEY_COM_NAME:Ljava/lang/String; = "component_name"

.field public static final KEY_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final KEY_IS_FOREGROUND:Ljava/lang/String; = "is_foreground"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkg_name"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final MSG_FG_SERVICE_STATE_CHANGED:I = 0xa

.field public static final MSG_LOAD_VIDEO_CALL_APP_SET:I = 0x1e

.field public static final MSG_USAGE_STATE_CHANGED:I = 0x14

.field public static final ON_FOREGROUND_SERVICE_STATE_CHANGED_METHOD:Ljava/lang/String; = "onForegroundServiceStateChanged"

.field public static final ON_USAGE_STATS_STATE_CHANGED_METHOD:Ljava/lang/String; = "onUsageStatsChanged"

.field public static final TAG:Ljava/lang/String; = "VDCObserverService"

.field public static final VDC_OBSERVER_URI:Landroid/net/Uri;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

.field public mHandler:Landroid/os/Handler;

.field public mObserverRegisterState:I

.field public mRegisteredComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# direct methods
.method public static synthetic $r8$lambda$JVn7ZD1hpyX6RB6Y1uXqJYjoeRk(Lcom/android/server/sepunion/VDCObserverService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/VDCObserverService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/VDCObserverService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/VDCObserverService;->handleUsageStatsChanged(IILandroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFgServiceStateChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->onFgServiceStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->onUsageStatsChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerUsageStatsWatcher()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->unregisterUsageStatsWatcher()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.vdc.observer"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IVDCObserverService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 149
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$1;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

    .line 226
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$3;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 72
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 73
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VDCObserverService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/VDCObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 3

    const-string v0, "VDCObserverService"

    const-string/jumbo v1, "init"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerUserUnlockedObserver()V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerForegroundServiceObserver()V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerVideoCallObserver()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "\n##### VDCObserverService #####\n##### (dumpsys sepunion VDCObserverService) #####\n"

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Observer register state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "componentList: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    if-nez p0, :cond_31

    const-string/jumbo p0, "null"

    goto :goto_35

    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getComponentList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "VDCObserverService"

    const/4 v2, 0x0

    if-nez p0, :cond_16

    const-string p0, "get ContentResolver null"

    .line 337
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 340
    :cond_16
    :try_start_16
    sget-object v3, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "video_call_app_info"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_23} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_23} :catch_ba

    if-eqz p0, :cond_b4

    .line 342
    :try_start_25
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b4

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentResolver query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "package_name"

    .line 344
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "activities_name"

    .line 345
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_a6

    if-gez v4, :cond_55

    goto :goto_a6

    .line 350
    :cond_55
    :goto_55
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 351
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_55

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_55

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_55

    .line 356
    :cond_75
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    .line 357
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    .line 358
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 359
    array-length v6, v5

    const/4 v7, 0x0

    :goto_8f
    if-ge v7, v6, :cond_55

    aget-object v8, v5, v7

    if-eqz v8, :cond_a3

    .line 360
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a3

    .line 361
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_25 .. :try_end_a3} :catchall_aa

    :cond_a3
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 366
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_a9} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a6 .. :try_end_a9} :catch_ba

    return-object v2

    :catchall_aa
    move-exception v2

    .line 340
    :try_start_ab
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception p0

    :try_start_b0
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw v2

    :cond_b4
    if-eqz p0, :cond_c0

    .line 366
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_b9} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b0 .. :try_end_b9} :catch_ba

    goto :goto_c0

    :catch_ba
    move-exception p0

    const-string v2, "getComponentList() failed: "

    .line 367
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c0
    :goto_c0
    return-object v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleUsageStatsChanged(IILandroid/content/ComponentName;)V
    .registers 7

    .line 275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 276
    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "event_type"

    .line 279
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "user_id"

    .line 280
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "pkg_name"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "class_name"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 96
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    const-string p0, "VDCObserverService"

    const-string/jumbo p1, "onCreate"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string p0, "VDCObserverService"

    const-string/jumbo v0, "onDestroy"

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFgServiceStateChanged(Landroid/os/Bundle;)V
    .registers 5

    .line 316
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onForegroundServiceStateChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p0

    const-string p1, "VDCObserverService"

    const-string/jumbo v0, "onFgServiceStateChanged call failed: "

    .line 319
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method public onStart()V
    .registers 2

    const-string p0, "VDCObserverService"

    const-string/jumbo v0, "onStart"

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final onUsageStatsChanged(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "onUsageStatsChanged"

    const-string v1, "VDCObserverService"

    .line 325
    :try_start_5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    move-exception p0

    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    .line 329
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public final registerForegroundServiceObserver()V
    .registers 4

    const-string v0, "VDCObserverService"

    :try_start_2
    const-string/jumbo v1, "registerForegroundServiceObserver"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 143
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_17} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    move-exception p0

    const-string/jumbo v1, "registerForegroundServiceObserver: failed "

    .line 145
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public final registerUsageStatsWatcher()V
    .registers 5

    .line 196
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->getComponentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "VDCObserverService"

    if-eqz v0, :cond_45

    .line 197
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_45

    .line 201
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerUsageStatsWatcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    .line 204
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    if-eqz v2, :cond_3f

    .line 206
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-virtual {v2, v1, v0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V

    .line 207
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 208
    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    goto :goto_44

    :cond_3f
    const-string p0, "get UsageStatsManager null"

    .line 210
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void

    :cond_45
    :goto_45
    const-string/jumbo p0, "registerUsageStatsWatcher: fail"

    .line 198
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerUserUnlockedObserver()V
    .registers 5

    const-string v0, "VDCObserverService"

    const-string/jumbo v1, "registerUserUnlockedObserver"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 173
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/VDCObserverService$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/VDCObserverService$2;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    goto :goto_2d

    :cond_28
    const-string p0, "get ContentResolver null"

    .line 191
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public final registerVideoCallObserver()V
    .registers 5

    .line 253
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$4;

    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/VDCObserverService$4;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Handler;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 266
    sget-object v2, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    goto :goto_23

    :cond_1c
    const-string p0, "VDCObserverService"

    const-string v0, "get ContentResolver null"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public final unregisterUsageStatsWatcher()V
    .registers 4

    const-string v0, "VDCObserverService"

    const-string/jumbo v1, "unregisterUsageStatsWatcher"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    if-eqz v1, :cond_21

    .line 219
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 220
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    goto :goto_26

    :cond_21
    const-string p0, "get UsageStatsManager null"

    .line 222
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method
