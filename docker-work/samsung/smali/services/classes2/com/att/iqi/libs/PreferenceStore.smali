.class public Lcom/att/iqi/libs/PreferenceStore;
.super Ljava/lang/Object;
.source "PreferenceStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;
    }
.end annotation


# static fields
.field public static final IQI_PREF_FILE:Ljava/lang/String; = "att_prefs.xml"

.field public static final PREF_BRIDGE_LIBRARY_PATH:Ljava/lang/String; = "bridge_path"

.field public static final PREF_DISABLE_MCC_MNC_VALIDATION:Ljava/lang/String; = "disable_mcc_mnc_validation"

.field public static final PREF_LOGS_ENABLED:Ljava/lang/String; = "log_enabled"

.field public static final PREF_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field public static final PREF_UPDATE_FAIL_TIMES:Ljava/lang/String; = "update_failures"

.field public static final SERVICE_STATE_OFF:I = 0x0

.field public static final SERVICE_STATE_ON:I = 0x1

.field public static final mLock:Ljava/lang/Object;

.field public static sInstance:Lcom/att/iqi/libs/PreferenceStore;

.field public static final sPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPreferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreferenceFile:Landroid/util/AtomicFile;


# direct methods
.method public static synthetic $r8$lambda$JsGuMRg1GzDhH3z_LWCALOO7idM(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setBoolean$0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pc9c6O4CuUEuyyyuSJEwPPsrdg4(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->lambda$updatePreference$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6M67lf39aHSPucixrdUmRiy02Q(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/libs/PreferenceStore;->lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XFuhuqOAW4UmmT5R9GBh75D92NI(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rR4bbfIuB59ZvwtR_TWVjX_ehLA(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setInteger$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    .line 91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "disable_mcc_mnc_validation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "log_enabled"

    .line 92
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "service_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bridge_path"

    const-string v2, ""

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "update_failures"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    .line 101
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "att_prefs.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    .line 103
    invoke-virtual {p0}, Lcom/att/iqi/libs/PreferenceStore;->loadPrefsFromFileLocked()V

    return-void
.end method

.method public static getInstance()Lcom/att/iqi/libs/PreferenceStore;
    .registers 2

    .line 107
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    if-nez v1, :cond_e

    .line 109
    new-instance v1, Lcom/att/iqi/libs/PreferenceStore;

    invoke-direct {v1}, Lcom/att/iqi/libs/PreferenceStore;-><init>()V

    sput-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    .line 111
    :cond_e
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public static synthetic lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .registers 3

    .line 314
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;-><init>(Lorg/w3c/dom/NodeList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setBoolean$0(Ljava/lang/String;Z)V
    .registers 3

    .line 214
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setInteger$1(Ljava/lang/String;I)V
    .registers 3

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$updatePreference$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 2

    .line 304
    invoke-interface {p0, p1}, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createPrefStoreLocked()Z
    .registers 8

    const/4 v0, 0x0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_70

    .line 125
    :try_start_7
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 126
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 127
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 130
    sget-object v4, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_43
    const-string/jumbo v4, "prefs"

    .line 134
    invoke-static {v3, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 135
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 136
    iget-object v2, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_56

    const/4 p0, 0x1

    .line 143
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_56
    move-exception v2

    .line 139
    :try_start_57
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "Exception thrown while creating pref file"

    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_62
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_6b

    .line 143
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :catchall_6b
    move-exception p0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 144
    throw p0

    :catch_70
    move-exception p0

    .line 120
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "Unable to open stream to write prefs"

    invoke-static {v1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7c
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 318
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 319
    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_e

    goto :goto_12

    .line 320
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_12
    monitor-exit p0

    return p2

    :catchall_14
    move-exception p1

    .line 321
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4

    .line 325
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 326
    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_e

    goto :goto_12

    .line 327
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_12
    monitor-exit p0

    return p2

    :catchall_14
    move-exception p1

    .line 328
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final getOrCreatePreferenceStoreLocked()Ljava/io/File;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 150
    invoke-virtual {p0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked()Z

    move-result p0

    if-nez p0, :cond_1f

    .line 151
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "Unable to create prefs store!"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 332
    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 333
    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    move-object p2, p1

    .line 334
    :goto_f
    monitor-exit p0

    return-object p2

    :catchall_11
    move-exception p1

    .line 335
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final loadPrefsFromFileLocked()V
    .registers 11

    const-string/jumbo v0, "update_failures"

    const-string v1, "bridge_path"

    const-string/jumbo v2, "service_state"

    const-string v3, "log_enabled"

    const-string v4, "disable_mcc_mnc_validation"

    .line 159
    invoke-virtual {p0}, Lcom/att/iqi/libs/PreferenceStore;->getOrCreatePreferenceStoreLocked()Ljava/io/File;

    move-result-object v5

    const-string v6, "Unable to load prefs from file, using defaults from memory"

    if-nez v5, :cond_1e

    .line 161
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-static {v6}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v5, 0x0

    .line 167
    :try_start_1f
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 169
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_9a

    .line 171
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 172
    instance-of v7, v6, Ljava/lang/Boolean;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_3f

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3f

    move v6, v8

    goto :goto_40

    :cond_3f
    move v6, v9

    .line 173
    :goto_40
    sget-object v7, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 176
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_5a

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_5b

    :cond_5a
    move v8, v9

    .line 177
    :goto_5b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_77

    .line 181
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_77
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 186
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_84

    .line 187
    check-cast v2, Ljava/lang/String;

    .line 188
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_84
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 192
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_a3

    .line 193
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 194
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v7, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 197
    :cond_9a
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_a3

    invoke-static {v6}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_1f .. :try_end_a3} :catchall_a6

    :cond_a3
    :goto_a3
    if-eqz v5, :cond_b7

    goto :goto_b4

    :catchall_a6
    move-exception p0

    .line 200
    :try_start_a7
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "Exception thrown while reading preferences"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b8

    :cond_b2
    if-eqz v5, :cond_b7

    .line 202
    :goto_b4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_b7
    return-void

    :catchall_b8
    move-exception p0

    if-eqz v5, :cond_be

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    :cond_be
    throw p0
.end method

.method public registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .registers 6

    .line 210
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 213
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setInteger(Ljava/lang/String;I)V
    .registers 6

    .line 223
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 236
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 239
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public unregisterPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 2

    .line 343
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updatePreference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12

    .line 247
    :try_start_0
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_15a

    .line 251
    :try_start_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    const-string v1, "boolean"

    .line 253
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "true"

    goto :goto_2e

    :cond_16
    const-string v2, "false"

    goto :goto_2e

    .line 254
    :cond_19
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_24

    const-string v1, "int"

    .line 256
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 257
    :cond_24
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_137

    const-string/jumbo v1, "string"

    .line 259
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 267
    :goto_2e
    invoke-virtual {p0}, Lcom/att/iqi/libs/PreferenceStore;->getOrCreatePreferenceStoreLocked()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_f7

    .line 269
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 271
    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    const/4 v5, 0x0

    .line 274
    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/libs/PreferenceStore;->iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 275
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "name"

    .line 276
    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 277
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v5

    if-eqz v5, :cond_87

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found pref "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 278
    :cond_87
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v7, "value"

    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 280
    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_9b

    .line 283
    :cond_98
    invoke-interface {v6, v2}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 286
    :goto_9b
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    .line 287
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 288
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 289
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 290
    invoke-virtual {v5, v7, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 291
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v5

    if-eqz v5, :cond_d2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pref file updated ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :cond_d2
    const/4 v5, 0x1

    goto/16 :goto_4d

    :cond_d5
    if-nez v5, :cond_116

    .line 296
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p2

    if-eqz p2, :cond_116

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not found!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_116

    .line 298
    :cond_f7
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p2

    if-eqz p2, :cond_116

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to persist change to preference "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in storage!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 303
    :cond_116
    :goto_116
    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_135

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    .line 304
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, p1}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;-><init>(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11c

    .line 306
    :cond_135
    monitor-exit v0

    goto :goto_166

    .line 262
    :cond_137
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_155

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tried to write an unsupported preference type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 265
    :cond_155
    monitor-exit v0

    return-void

    :catchall_157
    move-exception p0

    .line 306
    monitor-exit v0
    :try_end_159
    .catchall {:try_start_3 .. :try_end_159} :catchall_157

    :try_start_159
    throw p0
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_15a

    :catchall_15a
    move-exception p0

    .line 308
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_166

    const-string p1, "An exception was thrown while trying to update preference"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_166
    :goto_166
    return-void
.end method
