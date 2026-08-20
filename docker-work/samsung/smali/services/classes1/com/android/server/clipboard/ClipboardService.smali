.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_CLASSIFICATION_LENGTH:I = 0x190

.field public static final IS_EMULATOR:Z

.field public static final PROPERTY_AUTO_CLEAR_ENABLED:Ljava/lang/String; = "auto_clear_enabled"

.field public static final PROPERTY_AUTO_CLEAR_TIMEOUT:Ljava/lang/String; = "auto_clear_timeout"

.field public static final PROPERTY_MAX_CLASSIFICATION_LENGTH:Ljava/lang/String; = "max_classification_length"

.field public static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public final mClipboards:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field public mContainerID:I

.field public final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field public mContext:Landroid/content/Context;

.field public final mEmulatorClipboardMonitor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMaxClassificationLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

.field public mShowAccessNotifications:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUm:Landroid/os/IUserManager;

.field public final mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$4F2IDepsUoM34A2IRkg8zEQid8E(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$showAccessNotificationLocked$4(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cz6EF004PxXkHtbeKzrCDIbx1ZQ(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$0(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PrLucalakMZRrQ-VP77vRPjLNbk(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$notifyTextClassifierLocked$5(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rffL9CR_vROiMhuMjExq6qNnVc(Lcom/android/server/clipboard/ClipboardService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aEH_LngoTXY0bejlWiPbHd6yLg4(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->lambda$startClassificationLocked$3(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqkyeKcqYxJqwno8VV9dGrqdo08(Landroid/content/ClipData;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$1(Landroid/content/ClipData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContainerID(Lcom/android/server/clipboard/ClipboardService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaManager(Lcom/android/server/clipboard/ClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPersonaManager(Lcom/android/server/clipboard/ClipboardService;Lcom/samsung/android/knox/SemPersonaManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getSemClipboardService()Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.boot.qemu"

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 165
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const/16 v2, 0x190

    .line 173
    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 179
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    .line 188
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 189
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 190
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 191
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 193
    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "user"

    .line 195
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 196
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 197
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 198
    const-class v2, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    const-string v2, "clipboard"

    .line 199
    invoke-interface {v0, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 202
    iput v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v4

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 210
    sget-boolean p1, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz p1, :cond_e5

    .line 211
    new-instance p1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_ec

    .line 218
    :cond_e5
    new-instance p1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    .line 221
    :goto_ec
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 222
    invoke-static {v2, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 225
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ClipboardService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 227
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isText(Landroid/content/ClipData;)Z
    .registers 4

    .line 1350
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    return v2

    .line 1353
    :cond_9
    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    .line 1355
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_24

    .line 1356
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/content/ClipData;)V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 213
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 215
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static synthetic lambda$new$1(Landroid/content/ClipData;)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method public static synthetic lambda$notifyTextClassifierLocked$5(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1400
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object p0

    .line 1403
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    const-string/jumbo v0, "source_package"

    .line 1407
    invoke-static {v0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1406
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 1408
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object p0

    .line 1409
    invoke-interface {p2, p0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method private synthetic lambda$showAccessNotificationLocked$4(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 1330
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1329
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1040e34

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClipboardService"

    .line 1333
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 1334
    invoke-static {p0, p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1336
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

.method private synthetic lambda$startClassificationLocked$3(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .registers 5

    .line 986
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    return-void
.end method


# virtual methods
.method public final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1129
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 1133
    :try_start_e
    invoke-interface {v0, p2, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1137
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_5a

    .line 1138
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not own package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_55} :catch_5a
    .catchall {:try_start_e .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    .line 1144
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    throw p0

    .line 1144
    :catch_5a
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 1147
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_91

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1148
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_78
    if-ge v2, v1, :cond_8c

    .line 1150
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    iget v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 1151
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1150
    invoke-virtual {p0, v3, v4, p2, v5}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 1153
    :cond_8c
    iget-object p0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_91
    return-void
.end method

.method public final applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/view/textclassifier/TextLinks;",
            "Landroid/view/textclassifier/TextClassifier;",
            ")V"
        }
    .end annotation

    .line 1040
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1041
    iget-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 1042
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 1043
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1045
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method public final checkDataOwner(Landroid/content/ClipData;I)V
    .registers 6

    .line 1092
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1094
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public final checkItemOwner(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 1082
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1083
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 1085
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1086
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1087
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method public final checkUriOwner(Landroid/net/Uri;I)V
    .registers 11

    if-eqz p1, :cond_30

    .line 1067
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_30

    .line 1069
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1072
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    .line 1073
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    .line 1075
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    move v3, p2

    .line 1072
    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2b

    .line 1077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1078
    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;II)Z
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1193
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;IIZ)Z
    .registers 11

    .line 1202
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const-string v1, "ClipboardService"

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Clipboard access denied to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " within a virtual device session"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1212
    :cond_34
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_41

    move v0, v3

    goto :goto_45

    .line 1217
    :cond_41
    invoke-virtual {p0, p4, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    :goto_45
    const/16 v4, 0x1d

    if-eq p1, v4, :cond_66

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_4f

    move v0, v3

    goto :goto_8e

    .line 1255
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown clipboard appop "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    if-nez v0, :cond_7a

    .line 1228
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-nez v0, :cond_79

    .line 1229
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    move v0, v2

    goto :goto_7a

    :cond_79
    :goto_79
    move v0, v3

    :cond_7a
    :goto_7a
    if-nez v0, :cond_84

    .line 1231
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v4, :cond_84

    .line 1238
    invoke-virtual {v4, p3, p4}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    :cond_84
    if-nez v0, :cond_8e

    .line 1240
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v4, :cond_8e

    .line 1247
    invoke-virtual {v4, p3, p4}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    :cond_8e
    :goto_8e
    if-nez v0, :cond_ad

    .line 1258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Denying clipboard access to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", application is not in focus nor is it a system service for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_ad
    if-eqz p5, :cond_b6

    .line 1266
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p0

    goto :goto_bc

    .line 1268
    :cond_b6
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p0

    :goto_bc
    if-nez p0, :cond_bf

    move v2, v3

    :cond_bf
    return v2
.end method

.method public final createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .registers 3

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1415
    const-class p1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    return-object p0
.end method

.method public final doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .registers 13

    .line 992
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    .line 993
    invoke-interface {p3, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    .line 996
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 997
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 998
    :goto_27
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 999
    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v5

    .line 1000
    invoke-virtual {v3, v5}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x0

    .line 1001
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4f

    .line 1002
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1007
    :cond_52
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1008
    :try_start_55
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 1009
    iget-object v5, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-ne v5, p2, :cond_91

    .line 1010
    invoke-virtual {p0, v3, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 1014
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_91

    .line 1016
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_6a
    if-ge v4, v3, :cond_91

    .line 1018
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p4, :cond_8e

    const-string/jumbo v6, "no_sharing_into_profile"

    .line 1020
    invoke-virtual {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8e

    .line 1023
    invoke-virtual {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 1024
    invoke-virtual {p0, v5, p1}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 1025
    invoke-virtual {p0, v5, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 1033
    :cond_91
    monitor-exit v2

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v2
    :try_end_95
    .catchall {:try_start_55 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public final getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_14

    .line 794
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 795
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getIntendingUid(Ljava/lang/String;I)I
    .registers 3

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 371
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public final getIntendingUserId(Ljava/lang/String;I)I
    .registers 13

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 350
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 351
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_26

    if-ne v0, p2, :cond_11

    goto :goto_26

    .line 356
    :cond_11
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "checkClipboardServiceCallingUser"

    move v5, p2

    move-object v9, p1

    .line 356
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public getRelatedProfiles(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 804
    :try_start_4
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v2, 0x1

    invoke-interface {p0, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_2d

    :catch_11
    move-exception p0

    :try_start_12
    const-string p1, "ClipboardService"

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception calling UserManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    const/4 p0, 0x0

    .line 809
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw p0
.end method

.method public final getSemClipboardService()Lcom/android/server/semclipboard/SemClipboardService;
    .registers 2

    .line 1361
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string/jumbo v0, "semclipboard"

    .line 1365
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1366
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    check-cast v0, Lcom/android/server/semclipboard/SemClipboardService;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    return-object v0
.end method

.method public final grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .registers 6

    .line 1118
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1119
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1121
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1122
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1123
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_20
    return-void
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15

    if-eqz p1, :cond_33

    .line 1100
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_33

    .line 1102
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1104
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1105
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 1107
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    move v4, p2

    move-object v5, p3

    move v9, p4

    .line 1104
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_30
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception p0

    .line 1112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw p0

    .line 1112
    :catch_30
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final hasRestriction(Ljava/lang/String;I)Z
    .registers 3

    .line 819
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "ClipboardService"

    const-string p2, "Remote Exception calling UserManager.getUserRestrictions: "

    .line 821
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1050
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 1051
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    if-lez p0, :cond_1c

    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 1052
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public final isDefaultIme(ILjava/lang/String;)Z
    .registers 4

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 1278
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1279
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceLocked(I)Z
    .registers 5

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1058
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1a

    .line 1060
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1062
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    throw p0
.end method

.method public final isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    .line 321
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1375
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 1378
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 1382
    :cond_d
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 1385
    :cond_16
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1b

    return-void

    .line 1391
    :cond_1b
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-nez p0, :cond_24

    return-void

    .line 1395
    :cond_24
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-void

    .line 1398
    :cond_2d
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1399
    new-instance p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 232
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl-IA;)V

    const-string v1, "clipboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 239
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .registers 4

    .line 1172
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1173
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1175
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1176
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1177
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method public final revokeUriPermission(Landroid/net/Uri;I)V
    .registers 8

    if-eqz p1, :cond_30

    .line 1158
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_30

    .line 1160
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1162
    :try_start_13
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1163
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 1165
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 1162
    invoke-interface {v2, p0, v3, v4, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2b

    .line 1167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 6

    .line 1182
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    return-void

    .line 1185
    :cond_5
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 1187
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 10

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 937
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_3e

    .line 941
    :try_start_d
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 942
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    const/16 v5, 0x1d

    .line 944
    iget-object v6, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 945
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 944
    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 946
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/IOnPrimaryClipChangedListener;

    .line 947
    invoke-interface {v4}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_30} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_30} :catch_3b
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    goto :goto_3b

    :catchall_31
    move-exception p0

    .line 955
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    throw p0

    :catch_3b
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 955
    :cond_3e
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 829
    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    .line 830
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .registers 6

    .line 892
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 893
    :try_start_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 894
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 838
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 846
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_80

    const-string/jumbo v4, "no_cross_profile_copy_paste"

    .line 848
    invoke-virtual {p0, v4, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v4, :cond_29

    const/4 p1, 0x0

    goto :goto_5f

    :cond_29
    if-nez p1, :cond_2c

    goto :goto_5f

    .line 863
    :cond_2c
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 864
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_36
    if-ltz p1, :cond_47

    .line 865
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-virtual {v4, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v4, p1, v5}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_36

    .line 870
    :cond_47
    const-class p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 871
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    :cond_5e
    move-object p1, v4

    :goto_5f
    const/4 v4, 0x0

    :goto_60
    if-ge v4, v2, :cond_80

    .line 876
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v0, :cond_7d

    const-string/jumbo v6, "no_sharing_into_profile"

    .line 878
    invoke-virtual {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_7d

    .line 882
    invoke-virtual {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 881
    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_80
    return-void
.end method

.method public final setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 900
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p2, :cond_9

    .line 902
    invoke-virtual {p0, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;I)V

    .line 905
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method public final setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 911
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 912
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_f

    .line 913
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_f

    return-void

    .line 916
    :cond_f
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 917
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 918
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p2, :cond_22

    .line 920
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    .line 921
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_29

    :cond_22
    const/16 p3, 0x270f

    .line 923
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    const/4 p3, 0x0

    .line 924
    iput-object p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    :goto_29
    if-eqz p2, :cond_38

    .line 927
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 932
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method public final showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1293
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_5

    return-void

    .line 1296
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1298
    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const-string v2, "clipboard_show_access_notifications"

    .line 1296
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 1302
    :cond_18
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 1306
    :cond_21
    invoke-virtual {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    .line 1309
    :cond_28
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_33

    .line 1310
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    .line 1313
    :cond_33
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v0, :cond_3e

    .line 1314
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    .line 1317
    :cond_3e
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    return-void

    .line 1322
    :cond_49
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_52

    return-void

    .line 1325
    :cond_52
    iget-object p4, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p4, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1327
    new-instance p2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final startClassificationLocked(Landroid/content/ClipData;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 962
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_11

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_11
    move-object v3, v0

    .line 963
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_6b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_22

    goto :goto_6b

    .line 969
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 971
    :try_start_26
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 974
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-direct {v2, v6, v7}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    .line 972
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_66

    .line 979
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v4

    if-le v2, v4, :cond_56

    .line 982
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void

    .line 986
    :cond_56
    iget-object v7, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_66
    move-exception p0

    .line 979
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    throw p0

    .line 964
    :cond_6b
    :goto_6b
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void
.end method

.method public final updateConfig()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    .line 244
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    .line 248
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 250
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method
