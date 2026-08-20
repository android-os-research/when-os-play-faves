.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$PinnedFileStats;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final KEY_ASSISTANT:I = 0x2

.field public static final KEY_CAMERA:I = 0x0

.field public static final KEY_HOME:I = 0x1

.field public static final MATCH_FLAGS:I = 0xd0000

.field public static final MAX_ASSISTANT_PIN_SIZE:I = 0x3c00000

.field public static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field public static final MAX_HOME_PIN_SIZE:I = 0x600000

.field public static final PAGE_SIZE:I

.field public static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field public static PROP_PIN_ODEX:Z = false

.field public static PROP_PIN_PINLIST:Z = false

.field public static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field public final mAm:Landroid/app/IActivityManager;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBinderService:Lcom/android/server/PinnerService$BinderService;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mConfiguredToPinAssistant:Z

.field public final mConfiguredToPinCamera:Z

.field public final mConfiguredToPinHome:Z

.field public final mContext:Landroid/content/Context;

.field public final mPendingRepin:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPinKeys:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPinnedApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field public final mPinnedFiles:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field public mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field public mSearchManager:Landroid/app/SearchManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-EpkTk7WXM4LQsI83InRATHH3gc(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuPmnbX6d3sOIO4LP4dO1IrwBvY(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JURuH7L1-81XaRgwi-XDmkFWZdo(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyGDUuH13qbrODfSq7SBVti5uF0(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PinnerService;->unpinApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingRepin(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedApps(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnedFiles(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPinnerHandler(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNameForKey(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePinOnStart(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidActive(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUidGone(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppMessage(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUnpinAppsMessage(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsafeMunmap(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 97
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    .line 107
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    const-string/jumbo v0, "pinner.whole_odex"

    .line 110
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 161
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 186
    new-instance v1, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 188
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 189
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 190
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 192
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 194
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    return-void
.end method

.method public static clamp(III)I
    .registers 3

    .line 1046
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static doPinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 3

    .line 861
    invoke-static {p0, p1, p2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object p0

    return-object p0
.end method

.method public static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 890
    sget-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const-string/jumbo v0, "pinlist.meta"

    .line 897
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 901
    :try_start_f
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_26

    :catch_14
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "error reading pin metadata \"%s\": pinning as blob"

    .line 904
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PinnerService"

    .line 903
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    :goto_26
    return-object v1
.end method

.method public static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 4

    .line 872
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_19

    :catch_6
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "could not open \"%s\" as zip: pinning as blob"

    .line 875
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    .line 874
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_19
    return-object v0
.end method

.method public static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 838
    :try_start_3
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p0

    move-object p2, v0

    goto :goto_46

    :cond_b
    move-object p2, v0

    :goto_c
    if-eqz p2, :cond_12

    .line 842
    :try_start_e
    invoke-static {p2, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_12
    const-string v1, "PinnerService"

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinRangeStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_31

    .line 848
    new-instance v1, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v1, v0}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3a

    .line 849
    :cond_31
    new-instance v1, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v1, v2, v3}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    .line 850
    :goto_3a
    invoke-static {p0, p1, v1}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_45

    .line 852
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 853
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    return-object p0

    :catchall_45
    move-exception p0

    .line 852
    :goto_46
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 853
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 854
    throw p0
.end method

.method public static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .registers 23

    move-object/from16 v7, p0

    .line 977
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 982
    :try_start_c
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    .line 983
    invoke-static {v7, v0, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v19
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_15} :catch_bd
    .catchall {:try_start_c .. :try_end_15} :catchall_ba

    .line 984
    :try_start_15
    invoke-static/range {v19 .. v19}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    const-wide/32 v5, 0x7fffffff

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_22} :catch_b6
    .catchall {:try_start_15 .. :try_end_22} :catchall_b2

    long-to-int v6, v0

    const-wide/16 v10, 0x0

    int-to-long v12, v6

    .line 985
    :try_start_26
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    move-object/from16 v16, v19

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_32} :catch_ac
    .catchall {:try_start_26 .. :try_end_32} :catchall_a6

    .line 990
    :try_start_32
    new-instance v0, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v0}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    .line 994
    sget v1, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v1
    :try_end_3b
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_3b} :catch_a2
    .catchall {:try_start_32 .. :try_end_3b} :catchall_9e

    if-eqz v3, :cond_42

    .line 995
    :try_start_3d
    rem-int v1, p1, v1

    sub-int v1, p1, v1

    goto :goto_44

    :cond_42
    move/from16 v1, p1

    :goto_44
    move v12, v2

    :goto_45
    if-ge v12, v1, :cond_8a

    move-object/from16 v3, p2

    .line 998
    invoke-virtual {v3, v0}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 999
    iget v4, v0, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 1000
    iget v5, v0, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 1001
    invoke-static {v2, v4, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v4

    sub-int v13, v6, v4

    .line 1002
    invoke-static {v2, v5, v13}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v5

    sub-int v13, v1, v12

    .line 1003
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1012
    sget v14, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v15, v4, v14

    add-int/2addr v5, v15

    .line 1013
    rem-int v15, v4, v14

    sub-int/2addr v4, v15

    .line 1014
    rem-int v15, v5, v14

    if-eqz v15, :cond_73

    .line 1015
    rem-int v15, v5, v14

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    .line 1017
    :cond_73
    invoke-static {v2, v5, v13}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v5

    if-lez v5, :cond_7f

    int-to-long v13, v4

    add-long/2addr v13, v10

    int-to-long v2, v5

    .line 1026
    invoke-static {v13, v14, v2, v3}, Landroid/system/Os;->mlock(JJ)V
    :try_end_7f
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_7f} :catch_86
    .catchall {:try_start_3d .. :try_end_7f} :catchall_82

    :cond_7f
    add-int/2addr v12, v5

    const/4 v2, 0x0

    goto :goto_45

    :catchall_82
    move-exception v0

    move v2, v6

    move-wide v3, v10

    goto :goto_a9

    :catch_86
    move-exception v0

    move v2, v6

    move-wide v3, v10

    goto :goto_af

    .line 1031
    :cond_8a
    :try_start_8a
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_8c
    .catch Landroid/system/ErrnoException; {:try_start_8a .. :try_end_8c} :catch_a2
    .catchall {:try_start_8a .. :try_end_8c} :catchall_9e

    move-object v1, v0

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v13, v6

    move v6, v12

    :try_start_93
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_96
    .catch Landroid/system/ErrnoException; {:try_start_93 .. :try_end_96} :catch_9c
    .catchall {:try_start_93 .. :try_end_96} :catchall_9a

    .line 1038
    invoke-static/range {v19 .. v19}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    return-object v0

    :catchall_9a
    move-exception v0

    goto :goto_a0

    :catch_9c
    move-exception v0

    goto :goto_a4

    :catchall_9e
    move-exception v0

    move v13, v6

    :goto_a0
    move-wide v3, v10

    goto :goto_a8

    :catch_a2
    move-exception v0

    move v13, v6

    :goto_a4
    move-wide v3, v10

    goto :goto_ae

    :catchall_a6
    move-exception v0

    move v13, v6

    :goto_a8
    move v2, v13

    :goto_a9
    move-object/from16 v1, v19

    goto :goto_e3

    :catch_ac
    move-exception v0

    move v13, v6

    :goto_ae
    move v2, v13

    :goto_af
    move-object/from16 v1, v19

    goto :goto_bf

    :catchall_b2
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_bb

    :catch_b6
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_be

    :catchall_ba
    move-exception v0

    :goto_bb
    const/4 v2, 0x0

    goto :goto_e3

    :catch_bd
    move-exception v0

    :goto_be
    const/4 v2, 0x0

    :goto_bf
    :try_start_bf
    const-string v5, "PinnerService"

    .line 1035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not pin file "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_bf .. :try_end_d5} :catchall_e2

    const/4 v0, 0x0

    .line 1038
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v1, v3, v8

    if-ltz v1, :cond_e1

    int-to-long v1, v2

    .line 1040
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_e1
    return-object v0

    :catchall_e2
    move-exception v0

    .line 1038
    :goto_e3
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    cmp-long v1, v3, v8

    if-ltz v1, :cond_ee

    int-to-long v1, v2

    .line 1040
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 1042
    :cond_ee
    throw v0
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_1e

    .line 1082
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1e

    :catch_6
    move-exception v0

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static safeClose(Ljava/io/FileDescriptor;)V
    .registers 3

    if-eqz p0, :cond_1a

    .line 1061
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1063
    :try_start_8
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_1a

    :catch_c
    move-exception p0

    .line 1069
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EBADF:I

    if-eq v0, v1, :cond_14

    goto :goto_1a

    .line 1070
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static safeMunmap(JJ)V
    .registers 4

    .line 1051
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception p0

    const-string p1, "PinnerService"

    const-string/jumbo p2, "ignoring error in unmap"

    .line 1053
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method


# virtual methods
.method public final createPinKeys()Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 553
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "pinner.pin_camera"

    .line 556
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    .line 554
    invoke-static {v4, v5, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    if-eqz v1, :cond_2a

    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    if-eqz v1, :cond_35

    .line 564
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_35
    iget-boolean p0, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz p0, :cond_41

    const/4 p0, 0x2

    .line 567
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_41
    return-object v0
.end method

.method public dumpDataForStatsd()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/PinnerService$PinnedFileStats;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    monitor-enter p0

    .line 269
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 270
    new-instance v3, Lcom/android/server/PinnerService$PinnedFileStats;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4, v2}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 273
    :cond_23
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 274
    iget-object v3, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PinnerService$PinnedApp;

    .line 275
    iget-object v4, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedApp;

    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PinnerService$PinnedFile;

    .line 276
    new-instance v5, Lcom/android/server/PinnerService$PinnedFileStats;

    iget v6, v3, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-direct {v5, v6, v4}, Lcom/android/server/PinnerService$PinnedFileStats;-><init>(ILcom/android/server/PinnerService$PinnedFile;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 279
    :cond_72
    monitor-exit p0

    return-object v0

    :catchall_74
    move-exception v0

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_6 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public final getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 511
    :cond_13
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 512
    iget-object p0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_20
    if-eqz p3, :cond_4d

    .line 516
    iget-object p0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 517
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 520
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_31

    if-nez p1, :cond_4b

    move-object p1, p2

    goto :goto_31

    :cond_4b
    return-object v0

    :cond_4c
    return-object p1

    :cond_4d
    return-object v0
.end method

.method public final getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 488
    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 489
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_19

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_19
    if-nez v0, :cond_25

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public final getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 670
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 668
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 666
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForKey(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    if-eq p1, p0, :cond_d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string p0, "Assistant"

    return-object p0

    :cond_d
    const-string p0, "Home"

    return-object p0

    :cond_10
    const-string p0, "Camera"

    return-object p0
.end method

.method public final declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 574
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSizeLimitForKey(I)I
    .registers 2

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    if-eq p1, p0, :cond_d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/high16 p0, 0x3c00000

    return p0

    :cond_d
    const/high16 p0, 0x600000

    return p0

    :cond_10
    const/high16 p0, 0x5000000

    return p0
.end method

.method public final getUidForKey(I)I
    .registers 3

    .line 649
    monitor-enter p0

    .line 650
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PinnerService$PinnedApp;

    if-eqz p1, :cond_16

    .line 651
    iget-boolean v0, p1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v0, :cond_16

    .line 652
    iget p1, p1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_17

    :cond_16
    const/4 p1, -0x1

    .line 653
    :goto_17
    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    .line 654
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final handlePinOnStart()V
    .registers 13

    .line 301
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 304
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_90

    aget-object v4, v0, v3

    const v5, 0x7fffffff

    .line 305
    invoke-static {v4, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v6

    if-nez v6, :cond_34

    const-string v5, "PinnerService"

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to pin file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 312
    :cond_34
    monitor-enter p0

    .line 313
    :try_start_35
    iget-object v7, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_8d

    const-string v6, ".jar"

    .line 315
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ".apk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_8a

    .line 317
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 320
    :try_start_53
    invoke-static {v4, v6}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_57

    :catch_57
    if-nez v7, :cond_5a

    goto :goto_8a

    .line 325
    :cond_5a
    array-length v4, v7

    move v6, v2

    :goto_5c
    if-ge v6, v4, :cond_8a

    aget-object v8, v7, v6

    .line 326
    invoke-static {v8, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v9

    if-nez v9, :cond_7d

    const-string v9, "PinnerService"

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to pin ART file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 333
    :cond_7d
    monitor-enter p0

    .line 334
    :try_start_7e
    iget-object v8, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    monitor-exit p0

    :goto_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_87

    throw v0

    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_8d
    move-exception v0

    .line 314
    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    :cond_90
    return-void
.end method

.method public final handleUidActive(I)V
    .registers 3

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    return-void
.end method

.method public final handleUidGone(I)V
    .registers 7

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 401
    monitor-enter p0

    .line 404
    :try_start_5
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 406
    monitor-exit p0

    return-void

    .line 408
    :cond_1e
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 410
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void

    :catchall_30
    move-exception p1

    .line 409
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    .line 452
    const-class p0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_15

    .line 220
    iget-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "search"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    const/4 p1, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_15
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 208
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v1, "pinner"

    .line 209
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 210
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 233
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 234
    iget-object p2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_f
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 241
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_f
    return-void
.end method

.method public final pinApp(IIZ)V
    .registers 5

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    if-nez p3, :cond_1c

    const/4 p3, -0x1

    if-eq v0, p3, :cond_1c

    .line 631
    monitor-enter p0

    .line 632
    :try_start_a
    iget-object p2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p1

    .line 636
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    :cond_28
    return-void
.end method

.method public final pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .registers 12

    if-nez p2, :cond_3

    return-void

    .line 719
    :cond_3
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$PinnedApp-IA;)V

    .line 720
    monitor-enter p0

    .line 721
    :try_start_a
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_c0

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result p1

    .line 727
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    .line 731
    array-length v5, v3

    move v6, v4

    :goto_29
    if-ge v6, v5, :cond_33

    aget-object v7, v3, v6

    .line 732
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 737
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p1

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-gtz v3, :cond_5d

    const-string v6, "PinnerService"

    .line 739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_5d
    const/4 v6, 0x1

    .line 744
    invoke-static {v5, v3, v6}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v6

    if-nez v6, :cond_7b

    const-string v6, "PinnerService"

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 753
    :cond_7b
    monitor-enter p0

    .line 754
    :try_start_7c
    iget-object v5, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_86

    .line 757
    iget v5, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    sub-int/2addr v3, v5

    goto :goto_38

    :catchall_86
    move-exception p1

    .line 755
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p1

    .line 761
    :cond_89
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_8e

    goto :goto_92

    .line 762
    :cond_8e
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 763
    :goto_92
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p2

    .line 768
    :try_start_9a
    invoke-static {p2, v2}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9e

    :catch_9e
    if-nez v1, :cond_a1

    return-void

    .line 775
    :cond_a1
    array-length p2, v1

    move v2, v4

    :goto_a3
    if-ge v2, p2, :cond_bf

    aget-object v3, v1, v2

    .line 776
    invoke-static {v3, p1, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3

    if-eqz v3, :cond_bc

    .line 778
    monitor-enter p0

    .line 779
    :try_start_ae
    sget-boolean v5, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    if-eqz v5, :cond_b7

    .line 780
    iget-object v5, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_b7
    monitor-exit p0

    goto :goto_bc

    :catchall_b9
    move-exception p1

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ae .. :try_end_bb} :catchall_b9

    throw p1

    :cond_bc
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_bf
    return-void

    :catchall_c0
    move-exception p1

    .line 722
    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw p1
.end method

.method public final pinApps(I)V
    .registers 3

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public final pinAppsInternal(IZ)V
    .registers 6

    if-eqz p2, :cond_1f

    .line 591
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 592
    monitor-enter p0

    .line 594
    :try_start_7
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p1, "PinnerService"

    const-string p2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    .line 595
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    monitor-exit p0

    return-void

    .line 600
    :cond_18
    iput-object p2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 601
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1

    .line 604
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 605
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_29
    if-ltz v0, :cond_3b

    .line 606
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 607
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_3b
    return-void
.end method

.method public final pinAppsWithUpdatedKeys(I)V
    .registers 3

    const/4 v0, 0x1

    .line 582
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method public final registerUidListener()V
    .registers 5

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 p0, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string v0, "PinnerService"

    const-string v1, "Failed to register uid observer"

    .line 394
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public final registerUserSetupCompleteListener()V
    .registers 5

    const-string/jumbo v0, "user_setup_complete"

    .line 347
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 p0, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final sendPinAppMessage(IIZ)V
    .registers 6

    .line 615
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;-><init>()V

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 615
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsMessage(I)V
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;-><init>()V

    .line 538
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 537
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPinAppsWithUpdatedKeysMessage(I)V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>()V

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 542
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendUnpinAppsMessage()V
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unpinApp(I)V
    .registers 4

    .line 438
    monitor-enter p0

    .line 439
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    if-nez v0, :cond_11

    .line 441
    monitor-exit p0

    return-void

    .line 443
    :cond_11
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_37

    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PinnerService$PinnedFile;

    .line 447
    invoke-virtual {p1}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    goto :goto_26

    :cond_36
    return-void

    :catchall_37
    move-exception p1

    .line 445
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final unpinApps()V
    .registers 4

    .line 429
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 431
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/server/PinnerService;->unpinApp(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    .line 254
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 255
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_4e

    .line 256
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 257
    invoke-virtual {p0, v3, v1}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 258
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_4e
    return-void
.end method

.method public final updateActiveState(IZ)V
    .registers 6

    .line 418
    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1c

    .line 420
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 421
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_19

    .line 422
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 425
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method
