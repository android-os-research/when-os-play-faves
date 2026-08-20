.class public Lcom/android/server/am/AppcoreLoggingTool;
.super Landroid/content/BroadcastReceiver;
.source "AppcoreLoggingTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppcoreLoggingTool$LazyHolder;,
        Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;,
        Lcom/android/server/am/AppcoreLoggingTool$Version;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:Lcom/android/server/am/AppcoreLoggingTool$Version;

.field public static final DEBUG_RECONFIGURE:Ljava/lang/String; = "com.samsung.action.DEBUG_RECONFIGURE"

.field public static final NAME_AM_DEBUG:Ljava/lang/String; = "AM_DEBUG"

.field public static final NAME_ATM_DEBUG:Ljava/lang/String; = "ATM_DEBUG"

.field public static final NAME_PWM_DEBUG:Ljava/lang/String; = "PWM_DEBUG"

.field public static final NAME_VERSION:Ljava/lang/String; = "VERSION"

.field public static final NAME_WM_DEBUG:Ljava/lang/String; = "WM_DEBUG"

.field public static final TAG:Ljava/lang/String; = "AppcoreLoggingTool"


# instance fields
.field public mDebugConfigTools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 53
    sget-object v0, Lcom/android/server/am/AppcoreLoggingTool$Version;->T:Lcom/android/server/am/AppcoreLoggingTool$Version;

    sput-object v0, Lcom/android/server/am/AppcoreLoggingTool;->CURRENT_VERSION:Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/AppcoreLoggingTool-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/AppcoreLoggingTool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/AppcoreLoggingTool;
    .registers 1

    .line 84
    sget-object v0, Lcom/android/server/am/AppcoreLoggingTool$LazyHolder;->sInstance:Lcom/android/server/am/AppcoreLoggingTool;

    return-object v0
.end method


# virtual methods
.method public final getDebugConfigTools()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    if-nez v0, :cond_39

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    .line 124
    new-instance v1, Lcom/android/server/am/ActivityManagerDebugConfig$DebugConfigTool;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerDebugConfig$DebugConfigTool;-><init>()V

    const-string v2, "AM_DEBUG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig$DebugConfigTool;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig$DebugConfigTool;-><init>()V

    const-string v2, "ATM_DEBUG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wm/WindowManagerDebugConfig$DebugConfigTool;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerDebugConfig$DebugConfigTool;-><init>()V

    const-string v2, "WM_DEBUG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$DebugConfigTool;

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager$DebugConfigTool;-><init>()V

    const-string v2, "PWM_DEBUG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_39
    iget-object p0, p0, Lcom/android/server/am/AppcoreLoggingTool;->mDebugConfigTools:Ljava/util/Map;

    return-object p0
.end method

.method public final getVersion(Ljava/lang/String;)Lcom/android/server/am/AppcoreLoggingTool$Version;
    .registers 6

    if-nez p1, :cond_5

    .line 61
    sget-object p0, Lcom/android/server/am/AppcoreLoggingTool$Version;->S:Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-object p0

    .line 63
    :cond_5
    invoke-static {}, Lcom/android/server/am/AppcoreLoggingTool$Version;->values()[Lcom/android/server/am/AppcoreLoggingTool$Version;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    aget-object v2, p0, v1

    .line 64
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 68
    :cond_1d
    sget-object p0, Lcom/android/server/am/AppcoreLoggingTool;->CURRENT_VERSION:Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string p1, "AppcoreLoggingTool"

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string v0, "VERSION"

    .line 98
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppcoreLoggingTool;->getVersion(Ljava/lang/String;)Lcom/android/server/am/AppcoreLoggingTool$Version;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/server/am/AppcoreLoggingTool;->getDebugConfigTools()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;

    .line 103
    :try_start_3d
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v3

    if-nez v3, :cond_5d

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reconfigure "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Values are null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 108
    :cond_5d
    invoke-interface {v1, v3, v0}, Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;->getCompatibleValues([ZLcom/android/server/am/AppcoreLoggingTool$Version;)[Z

    move-result-object v3

    .line 109
    array-length v4, v3

    invoke-interface {v1}, Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;->getDebugConfigSize()I

    move-result v5

    if-eq v4, v5, :cond_86

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".length="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not proper"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 113
    :cond_86
    invoke-interface {v1, v3}, Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;->reconfigureDebug([Z)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reconfigureDebug finished, size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_a1} :catch_a2

    goto :goto_25

    :catch_a2
    move-exception v1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    :cond_c0
    return-void
.end method
