.class public Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;
.super Ljava/lang/Object;
.source "SemInputSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;,
        Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$HandlerMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_GLOBAL_START:I = 0xc8

.field public static final HANDLER_SECURE_START:I = 0x64

.field private static final PREMIUM_TAP_FOR_WATCH_FACE_SWITCH_ON_OFF:Ljava/lang/String; = "premium_tap_for_watch_face_switch_on_off"

.field private static final TAG:Ljava/lang/String; = "SemInputSettingObserver"

.field private static final VIRTUAL_FORCE_EANBLE:Ljava/lang/String; = "virtual_force_enable"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;


# instance fields
.field private final context:Landroid/content/Context;

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final settingValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->context:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settings:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settingValues:Ljava/util/Map;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->context:Landroid/content/Context;

    .line 50
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "virtual_force_enable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "refresh_rate_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "premium_tap_for_watch_face_switch_on_off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "double_tab_to_wake_up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pen_detect_mode_disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen_off_memo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tap_duration_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->printSettings()V

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    if-nez v0, :cond_17

    .line 66
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    monitor-enter v0

    .line 67
    :try_start_7
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    if-nez v1, :cond_12

    .line 68
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 70
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 72
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    return-object v0
.end method

.method private printSettings()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputSettingObserver"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_a

    .line 79
    :cond_43
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/os/Handler;I)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handlerMessageWhat"    # I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;II)V

    .line 83
    return-void
.end method

.method public addObserver(Landroid/os/Handler;II)V
    .registers 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "handlerMessageWhat"    # I
    .param p3, "defaultValue"    # I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "key":Ljava/lang/String;
    const-string v1, "SemInputSettingObserver"

    if-nez v0, :cond_35

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addObserver: Handler message #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s SETTING_KEY is not defined\nDefined SETTING_KEY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->printSettings()V

    .line 90
    const-string v2, "addObserver: Please add SETTING_KEY to SemInputSettingObserver\'s constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v7, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;I)V

    .line 96
    .local v1, "observer":Landroid/database/ContentObserver;
    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-le p2, v2, :cond_79

    .line 97
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 98
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_99

    .line 99
    :cond_79
    const/16 v2, 0x64

    const/4 v4, -0x1

    if-le p2, v2, :cond_8c

    .line 100
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 100
    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_99

    .line 103
    :cond_8c
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 104
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 103
    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    :goto_99
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 157
    const-string v0, "dumping SemInputSettingObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settingValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_f

    .line 161
    :cond_4c
    return-void
.end method

.method public updateAll()V
    .registers 4

    .line 111
    const-string v0, "SemInputSettingObserver"

    const-string v1, "updateAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 113
    .local v1, "observer":Landroid/database/ContentObserver;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 114
    .end local v1    # "observer":Landroid/database/ContentObserver;
    goto :goto_d

    .line 115
    :cond_1e
    return-void
.end method

.method public updateLatestValue(ILjava/lang/String;)V
    .registers 5
    .param p1, "messageWhat"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->settingValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method
