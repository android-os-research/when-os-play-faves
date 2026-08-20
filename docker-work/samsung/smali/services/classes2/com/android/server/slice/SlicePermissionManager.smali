.class public Lcom/android/server/slice/SlicePermissionManager;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SlicePermissionManager$ParserHolder;,
        Lcom/android/server/slice/SlicePermissionManager$PkgUser;,
        Lcom/android/server/slice/SlicePermissionManager$H;
    }
.end annotation


# static fields
.field public static final DB_VERSION:I = 0x2

.field public static final PERMISSION_CACHE_PERIOD:J = 0x493e0L

.field public static final SLICE_DIR:Ljava/lang/String; = "slice"

.field public static final TAG:Ljava/lang/String; = "SlicePermissionManager"

.field public static final TAG_LIST:Ljava/lang/String; = "slice-access-list"

.field public static final WRITE_GRACE_PERIOD:J = 0x1f4L


# instance fields
.field public final ATT_VERSION:Ljava/lang/String;

.field public final mCachedClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceClientPermissions;",
            ">;"
        }
    .end annotation
.end field

.field public final mCachedProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceProviderPermissions;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDirty:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/slice/DirtyTracker$Persistable;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mSliceDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$xX1O_lwk6EE4hK3suWyWChD_Y8I(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->lambda$writeBackup$0(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirty(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRemove(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system/slice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "version"

    .line 74
    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->ATT_VERSION:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 85
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/slice/SlicePermissionManager$H;-><init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    return-void
.end method

.method public static synthetic lambda$writeBackup$0(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public addDirtyImmediate(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 138
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 140
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->-$$Nest$fgetmPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 143
    :cond_3f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;
    .registers 8

    .line 249
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceClientPermissions;

    .line 251
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6d

    if-nez v1, :cond_6c

    .line 253
    :try_start_e
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_16} :catch_5a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_16} :catch_49

    .line 254
    :try_start_16
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_3d

    .line 256
    :try_start_21
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_3a

    .line 258
    :try_start_27
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_3d

    if-eqz v0, :cond_39

    .line 261
    :try_start_36
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_39} :catch_5a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_39} :catch_49

    :cond_39
    return-object v1

    :catchall_3a
    move-exception v1

    .line 257
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v1

    if-eqz v0, :cond_48

    .line 253
    :try_start_40
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v0

    :try_start_45
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v1
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_49} :catch_5a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read client"

    .line 266
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_52
    move-exception v0

    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read client"

    .line 264
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :catch_5a
    :goto_5a
    new-instance v1, Lcom/android/server/slice/SliceClientPermissions;

    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 271
    :try_start_62
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v0

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    return-object v1

    :catchall_6d
    move-exception p0

    .line 251
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 321
    :cond_d
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p1

    .line 310
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;-><init>(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$ParserHolder-IA;)V

    .line 311
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fputinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Ljava/io/InputStream;)V

    .line 312
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fputparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 313
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetinput(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Ljava/io/InputStream;

    move-result-object p1

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;
    .registers 8

    .line 279
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions;

    .line 281
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6d

    if-nez v1, :cond_6c

    .line 283
    :try_start_e
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_16} :catch_5a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_16} :catch_49

    .line 284
    :try_start_16
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_3d

    .line 286
    :try_start_21
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_3a

    .line 288
    :try_start_27
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_3d

    if-eqz v0, :cond_39

    .line 291
    :try_start_36
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_39} :catch_5a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_39} :catch_49

    :cond_39
    return-object v1

    :catchall_3a
    move-exception v1

    .line 287
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v1

    if-eqz v0, :cond_48

    .line 283
    :try_start_40
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v0

    :try_start_45
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v1
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_49} :catch_5a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read provider"

    .line 296
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_52
    move-exception v0

    const-string v1, "SlicePermissionManager"

    const-string v2, "Can\'t read provider"

    .line 294
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :catch_5a
    :goto_5a
    new-instance v1, Lcom/android/server/slice/SliceProviderPermissions;

    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 301
    :try_start_62
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v0

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    return-object v1

    :catchall_6d
    move-exception p0

    .line 281
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public grantFullAccess(Ljava/lang/String;I)V
    .registers 4

    .line 95
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceClientPermissions;->setHasFullAccess(Z)V

    return-void
.end method

.method public grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .registers 7

    .line 102
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 103
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {p1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p5, p1}, Lcom/android/server/slice/SliceClientPermissions;->grantUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p0

    .line 109
    invoke-static {p5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceProviderPermissions;->getOrCreateAuthority(Ljava/lang/String;)Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->addPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public handlePersist()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 326
    monitor-enter p0

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 328
    invoke-interface {v1}, Lcom/android/server/slice/DirtyTracker$Persistable;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_57

    .line 331
    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_46
    .catchall {:try_start_1b .. :try_end_1f} :catchall_57

    .line 338
    :try_start_1f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 339
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 341
    invoke-interface {v1, v4}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 343
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 344
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_39} :catch_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_39} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_39} :catch_3a
    .catchall {:try_start_1f .. :try_end_39} :catchall_57

    goto :goto_7

    :catch_3a
    move-exception v1

    :try_start_3b
    const-string v4, "SlicePermissionManager"

    const-string v5, "Failed to save access file, restoring backup"

    .line 346
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_7

    :catch_46
    move-exception v0

    const-string v1, "SlicePermissionManager"

    const-string v2, "Failed to save access file"

    .line 333
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    monitor-exit p0

    return-void

    .line 350
    :cond_50
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 351
    monitor-exit p0

    return-void

    :catchall_57
    move-exception v0

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_57

    throw v0
.end method

.method public final handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 4

    .line 361
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 362
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 363
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasFullAccess(Ljava/lang/String;I)Z
    .registers 4

    .line 147
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result p0

    return p0
.end method

.method public hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z
    .registers 5

    .line 152
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    .line 154
    invoke-static {p3, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result p2

    if-nez p2, :cond_20

    .line 156
    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceClientPermissions;->hasPermission(Landroid/net/Uri;I)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p0, 0x1

    :goto_21
    return p0
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 163
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 204
    monitor-enter p0

    .line 205
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    const-string/jumbo v0, "slice-access-list"

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 207
    :cond_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 208
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_20
    const-string/jumbo v0, "version"

    const/4 v3, 0x0

    .line 210
    invoke-static {p1, v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v2, :cond_2c

    .line 213
    monitor-exit p0

    return-void

    .line 215
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_a8

    .line 216
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_a4

    const-string v0, "client"

    .line 217
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v3, 0x493e0

    if-eqz v0, :cond_6d

    .line 218
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v0

    .line 220
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_aa

    .line 221
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_6a

    .line 223
    :try_start_58
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 224
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    .line 225
    invoke-virtual {v0}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 224
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_aa

    goto :goto_2c

    :catchall_6a
    move-exception p1

    .line 222
    :try_start_6b
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw p1

    :cond_6d
    const-string/jumbo v0, "provider"

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 228
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v0

    .line 230
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_81
    .catchall {:try_start_6c .. :try_end_81} :catchall_aa

    .line 231
    :try_start_81
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_9d

    .line 233
    :try_start_8b
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 234
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    .line 235
    invoke-virtual {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 234
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9c
    .catchall {:try_start_8b .. :try_end_9c} :catchall_aa

    goto :goto_2c

    :catchall_9d
    move-exception p1

    .line 232
    :try_start_9e
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p1

    .line 238
    :cond_a0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2c

    .line 241
    :cond_a4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2c

    .line 244
    :cond_a8
    monitor-exit p0

    return-void

    :catchall_aa
    move-exception p1

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_aa

    throw p1
.end method

.method public removePkg(Ljava/lang/String;I)V
    .registers 8

    .line 123
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 127
    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/slice/SliceClientPermissions;->removeAuthority(Ljava/lang/String;I)V

    goto :goto_25

    .line 131
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/android/server/slice/SliceClientPermissions;->clear()V

    .line 133
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .registers 7

    .line 115
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 116
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {p1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object p0

    .line 119
    invoke-virtual {p0, p5, p1}, Lcom/android/server/slice/SliceClientPermissions;->revokeUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method public writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "slice-access-list"

    const/4 v1, 0x0

    .line 168
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/slice/SlicePermissionManager$$ExternalSyntheticLambda0;-><init>()V

    .line 173
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 174
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    .line 177
    :cond_28
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_b1

    aget-object v6, v3, v5

    .line 178
    invoke-virtual {p0, v6}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v7
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_b9

    .line 180
    :goto_41
    :try_start_41
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_80

    .line 181
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v2, :cond_78

    const-string v8, "client"

    .line 182
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 183
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v8

    goto :goto_81

    .line 185
    :cond_6f
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v8

    goto :goto_81

    .line 189
    :cond_78
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->-$$Nest$fgetparser(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_41

    :cond_80
    move-object v8, v1

    :goto_81
    if-eqz v8, :cond_87

    .line 192
    invoke-interface {v8, p1}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_9d

    :cond_87
    const-string v8, "SlicePermissionManager"

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid or empty slice permissions file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_41 .. :try_end_9d} :catchall_a5

    :goto_9d
    if-eqz v7, :cond_a2

    .line 196
    :try_start_9f
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_b9

    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :catchall_a5
    move-exception p1

    if-eqz v7, :cond_b0

    .line 178
    :try_start_a8
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_b0

    :catchall_ac
    move-exception v0

    :try_start_ad
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b0
    :goto_b0
    throw p1

    :cond_b1
    const-string/jumbo v0, "slice-access-list"

    .line 199
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    monitor-exit p0

    return-void

    :catchall_b9
    move-exception p1

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_b9

    throw p1
.end method
